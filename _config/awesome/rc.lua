--
--   @@@@@@@@  @@@@@@@   @@@@@@@@  @@@ @@@   @@@@@@    @@@@@@@   @@@@@@   @@@       @@@@@@@@
--  @@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@ @@@  @@@@@@@   @@@@@@@@  @@@@@@@@  @@@       @@@@@@@@
--  !@@        @@!  @@@  @@!       @@! !@@  !@@       !@@       @@!  @@@  @@!       @@!
--  !@!        !@!  @!@  !@!       !@! @!!  !@!       !@!       !@!  @!@  !@!       !@!
--  !@! @!@!@  @!@!!@!   @!!!:!     !@!@!   !!@@!!    !@!       @!@!@!@!  @!!       @!!!:!
--  !!! !!@!!  !!@!@!    !!!!!:      @!!!    !!@!!!   !!!       !!!@!!!!  !!!       !!!!!:
--  :!!   !!:  !!: :!!   !!:         !!:         !:!  :!!       !!:  !!!  !!:       !!:
--  :!:   !::  :!:  !:!  :!:         :!:        !:!   :!:       :!:  !:!   :!:      :!:
--   ::: ::::  ::   :::   :: ::::     ::    :::: ::    ::: :::  ::   :::   :: ::::   :: ::::
--   :: :: :    :   : :  : :: ::      :     :: : :     :: :: :   :   : :  : :: : :  : :: ::
--
--    .: FILE:          rc.lua
--    .: CREATED:       2011-05-31 20:50
--    .: AUTHOR:        Andreas Persson (greyscale, grey)
--    .: MAIL:          <andreas(at)greyscale(dot)se>
--    .: VERSION:       1.0
--    .: DESCRIPTION:   Settings for the awesome wm awesome...
--
-- __________________________________________________________________________________________
--  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
--  minded that it comes with absolutely no warranty. But then again you got it for free..
-- __________________________________________________________________________________________
--


-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")

-- Theme handling library
require("beautiful")

-- Notification library
require("naughty")

-- Load Freedesktop menu entries
require("freedesktop.menu")

require("mirror")


-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
beautiful.init("/home/andreasp/.config/awesome/grey/theme.lua")


-- This is used later as tohe default terminal and editor to run.
terminal = "uxterm -rightbar -sb"
editor = "vim"
editor_cmd = terminal .. " -e " .. editor
filemanager = "/usr/bin/pcmanfm-mod"

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
{
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.spiral,
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier,
    awful.layout.suit.floating,
    awful.layout.suit.mirror
}
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {
      names  = { 1, 2, 3, 4, 5, 6, 7, 8, 9 },
      layout = { layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[4] }
    }

for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag(tags.names, s, tags.layout)
end
-- }}}

-- {{{ Menu
-- Create a laucher widget and a main menu
menu_items = freedesktop.menu.new()
myawesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua" },
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}


mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "Apps", menu_items },
                                    { "open terminal", terminal }
                                  }
                        })

mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = mymainmenu })
-- }}}

-- {{{ Wibox
-- Create a textclock widget
-- mytextclock = awful.widget.textclock({ align = "right" })

-- Create a systray
mysystray = widget({ type = "systray" })

-- Create a wibox for each screen and add it
mywibox = {}
mystatusbar = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, awful.tag.viewnext),
                    awful.button({ }, 5, awful.tag.viewprev)
                    )
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
                     awful.button({ }, 1, function (c)
                                              if not c:isvisible() then
                                                awful.tag.viewonly(c:tags()[1])
                                              end
                                                client.focus = c
                                                c:raise()
                                          end),
                     awful.button({ }, 3, function ()
                                              if instance then
                                                  instance:hide()
                                                  instance = nil
                                              else
                                                  instance = awful.menu.clients({ width=250 })
                                              end
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                              if client.focus then client.focus:raise() end
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                              if client.focus then client.focus:raise() end
                                          end))

for s = 1, screen.count() do
    -- Create a promptbox for each screen
    mypromptbox[s] = awful.widget.prompt({ layout = awful.widget.layout.horizontal.leftright })
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                           awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    -- Create a taglist widget
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, mytaglist.buttons)

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(function(c)
                                              return awful.widget.tasklist.label.currenttags(c, s)
                                          end, mytasklist.buttons)

    -- Create the wibox
    mywibox[s] = awful.wibox({ position = "top", screen = s, ontop = false, height = 15 })
 
    -- Add widgets to the wibox - order matters
    mywibox[s].widgets = {
        {
            mylauncher,
            mytaglist[s],
            mypromptbox[s],
            layout = awful.widget.layout.horizontal.leftright
        },
        mylayoutbox[s],
--        mytextclock,
        s == 1 and mysystray or nil,
        mytasklist[s],
        layout = awful.widget.layout.horizontal.rightleft
    }
    mystatusbar[s] = awful.wibox({ position = "bottom", screen = s, ontop = false, width = 1, height = 15 })
end
-- }}}

-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings
globalkeys = awful.util.table.join(
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev       ),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext       ),
    awful.key({ modkey,           }, "Escape", awful.tag.history.restore),

    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "w", function () mymainmenu:show(true)        end),

    -- Layout manipulation
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),
    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end),
    
    -- Toogle wibox
    awful.key({ modkey           }, "b", function () mywibox[mouse.screen].visible = not mywibox[mouse.screen].visible end),

    -- restore minimized windows
    awful.key({modkey,   "Shift" }, "n",
        function ()
            local allclients = client.get(mouse.screen)
            for _,c in ipairs(allclients) do
                if c.minimized and c:tags()[mouse.screen] ==
                    awful.tag.selected(mouse.screen) then
                    c.minimized = false
                    client.focus = c
                    c:raise()
                    return
                end
            end
        end),
    
    -- Standard program
    awful.key({ modkey,           }, "Return",  function () awful.util.spawn(terminal)    end),
    awful.key({ modkey, "Control" }, "r",       awesome.restart                              ),
    awful.key({ modkey, "Shift"   }, "q",       awesome.quit                                 ),
    awful.key({ modkey,           }, "l",       function () awful.tag.incmwfact( 0.05)    end),
    awful.key({ modkey,           }, "h",       function () awful.tag.incmwfact(-0.05)    end),
    awful.key({ modkey, "Shift"   }, "h",       function () awful.tag.incnmaster( 1)      end),
    awful.key({ modkey, "Shift"   }, "l",       function () awful.tag.incnmaster(-1)      end),
    awful.key({ modkey, "Control" }, "h",       function () awful.tag.incncol( 1)         end),
    awful.key({ modkey, "Control" }, "l",       function () awful.tag.incncol(-1)         end),
    awful.key({ modkey,           }, "space",   function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"   }, "space",   function () awful.layout.inc(layouts, -1) end),
    awful.key({ modkey,           }, "e",       function () awful.util.spawn(filemanager) end),

    -- Prompt
    awful.key({ modkey },            "r",       function () mypromptbox[mouse.screen]:run() end),

    awful.key({ modkey },            "x",
              function ()
                  awful.prompt.run({ prompt = "Run Lua code: " },
                  mypromptbox[mouse.screen].widget,
                  awful.util.eval, nil,
                  awful.util.getdir("cache") .. "/history_eval")
              end)
)

clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ modkey, "Shift"   }, "t",      function (c) c.ontop = not c.ontop            end),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw()                       end),
    awful.key({ modkey,           }, "n",      function (c) c.minimized = not c.minimized    end),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end),

  awful.key({ modkey,           }, "i",
    function (c)
      local geom = c:geometry()
      local t = ""

      if c.class then t = t .. "Class: " .. c.class .. "\n" end
      if c.instance then t = t .. "Instance: " .. c.instance .. "\n" end
      if c.role then t = t .. "Role: " .. c.role .. "\n" end
      if c.name then t = t .. "Name: " .. c.name .. "\n" end
      if c.type then t = t .. "Type: " .. c.type .. "\n" end
      if c.fullscreen then t = t .. "Fullscreen; yes\n" end
      if c.maximized_horizontal then t = t .. "Maximized Horizontal: yes\n" end
      if c.maximized_vertical then t = t .. "Maximized Vertical: yes\n" end
      if c.above then t = t .. "Above: yes\n" end

      if geom.width and geom.height and geom.x and geom.y then
        t = t .. "Dimensions: " .. "x:" .. geom.x .. " y:" .. geom.y .. " w:" .. geom.width .. " h:" .. geom.height
      end

      naughty.notify({
        text = t,
        timeout = 15,
      })
    end)
)

-- Compute the maximum number of digit we need, limited to 9
keynumber = 0
for s = 1, screen.count() do
   keynumber = math.min(9, math.max(#tags[s], keynumber));
end

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, keynumber do
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = mouse.screen
                        if tags[screen][i] then
                            awful.tag.viewonly(tags[screen][i])
                        end
                  end),
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          awful.tag.viewtoggle(tags[screen][i])
                      end
                  end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.movetotag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.toggletag(tags[client.focus.screen][i])
                      end
                  end))
end

clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize))

-- Set keys
root.keys(globalkeys)
-- }}}

-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = true,
                     size_hints_honor = false,
                     keys = clientkeys,
                     buttons = clientbuttons } },
    { rule = { class = "MPlayer" },
      properties = { floating = true } },
    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },
    { rule = { class = "Volumeicon" },
      properties = { floating = true } },
    { rule = { class = "Tilda" },
      properties = { floating = true } },
    { rule = { class = "VirtualBox" },
      properties = { floating = true,
                     tag = tags[1][5] } },
    { rule = { class = "Vmplayer" },
      properties = { floating = true,
                     tag = tags[1][5] } },
    { rule = { class = "WeeUXTERM" },
      properties = { tag = tags[1][9] } },
    { rule = { class = "MuttUXTERM" },
      properties = { tag = tags[1][9] } },
    { rule = { class = "XTerm" }, 
      properties = { opacity = 0.7 } }
    -- Set Firefox to always map on tags number 2 of screen 1.
    -- { rule = { class = "Firefox" },
    --   properties = { tag = tags[1][2] } },
}
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.add_signal("manage", function (c, startup)
    -- Add a titlebar
    -- awful.titlebar.add(c, { modkey = modkey })
    
    -- Replace clients icon with a little "bar".
    if beautiful.tasklist_square then
      c.icon = image(beautiful.tasklist_square)
    end

    -- Enable sloppy focus
    c:add_signal("mouse::enter", function(c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and awful.client.focus.filter(c) then
            client.focus = c
        end
    end)

    if not startup then
        -- Set the windows at the slave,
        -- i.e. put it at the end of others instead of setting it master.
        -- awful.client.setslave(c)

        -- Put windows in a smart way, only if they does not set an initial position.
        if not c.size_hints.user_position and not c.size_hints.program_position then
            awful.placement.no_overlap(c)
            awful.placement.no_offscreen(c)
        end
    end
end)

client.add_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.add_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)


-- No border if maximized or the only window showing.
-- Set own_window_type override in .conkyrc or it will be counted as a client
for s = 1, screen.count() do screen[s]:add_signal("arrange", function ()
  local clients = awful.client.visible(s)

  for _, c in pairs(clients) do
      if c.fullscreen then
        c.border_width = 0; c.above = true; c.fullscreen = true;
      elseif awful.client.floating.get(c) and not (c.maximized_horizontal and c.maximized_vertical) then
        c.border_width = beautiful.border_width
      elseif (c.maximized_horizontal and c.maximized_vertical) or #clients == 1 then
        c.border_width = 0
      else
        c.border_width = beautiful.border_width
      end
    end
  end)
end
-- }}}


-- {{{ Autostart
local r = require("runonce")
r.run("/home/andreasp/.bin/fixCaps.sh")
r.run("/home/andreasp/.bin/fixJava.GUI.sh")
r.run("/home/andreasp/.bin/fixIEC958.sh")
r.run("/usr/bin/pnmixer &")
r.run("/usr/bin/conky")
r.run("/usr/bin/tilda")
r.run("/home/andreasp/.bin/mouseMod.sh")
-- r.run("/usr/bin/thunar --daemon &")
r.run("/usr/bin/xbindkeys")
r.run("/usr/bin/xscreensaver &")
r.run("/usr/bin/dropboxd &")
-- r.run("/usr/bin/xcompmgr -cCfF -t-5 -l-5 -r4.2 -o.55 -D6 > /dev/null 2>&1 &")
r.run("/usr/bin/udisks --monitor > ~/.udisks.log 2>&1 &")
-- }}}
