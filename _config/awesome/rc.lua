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
local gears = require("gears")
local awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")

naughty.config.defaults.position = "bottom_right"

local menubar = require("menubar")




-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = err })
        in_error = false
    end)
end
-- }}}

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
-- beautiful.init("/usr/share/awesome/themes/default/theme.lua")
beautiful.init("/home/andreasp/.config/awesome/grey/theme.lua")

-- This is used later as the default terminal and editor to run.
terminal = "uxterm -rightbar -sb -ls"
editor = "vim"
editor_cmd = terminal .. " -e " .. editor
filemanager = "/usr/bin/pcmanfm-mod"


-- require('freedesktop.utils')
-- freedesktop.utils.terminal = terminal
-- freedesktop.utils.icon_theme = 'clarity-canus'
-- require('freedesktop.menu')
require('applicationsmenu')



-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
local layouts =
{
    awful.layout.suit.floating,
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
    awful.layout.suit.magnifier
}
-- }}}

-- {{{ Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag({ 1, 2, 3, 4, 5, 6, 7, 8, 9 }, s, layouts[2])
end
-- }}}

-- {{{ Menu
-- Create a laucher widget and a main menu

-- menu_items = freedesktop.menu.new()
-- 
 myawesomemenu = {
    { "manual", terminal .. " -e man awesome" },
    { "edit config", editor_cmd .. " " .. awesome.conffile },
    { "restart", awesome.restart },
    { "quit", awesome.quit }
 }
-- 
 mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                  { "apps", xdgmenu },
 --                                 { "apps", menu_items },
                                    { "open terminal", terminal }
                                  }
                        })


-- table.insert(menu_items, { "awesome", myawesomemenu, beautiful.awesome_icon })

-- mymainmenu = awful.menu.new({ items = menu_items, width = 200 })

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}

-- {{{ Wibox
-- Create a textclock widget
-- mytextclock = awful.widget.textclock()

-- Create a wibox for each screen and add it
mywibox = {}
mystatusbox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
                      awful.button({ }, 5, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end)
                      )
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
                     awful.button({ }, 1, function (c)
                                              if c == client.focus then
                                                  c.minimized = true
                                              else
                                                  -- Without this, the following
                                                  -- :isvisible() makes no sense
                                                  c.minimized = false
                                                  if not c:isvisible() then
                                                      awful.tag.viewonly(c:tags()[1])
                                                  end
                                                  -- This will also un-minimize
                                                  -- the client, if needed
                                                  client.focus = c
                                                  c:raise()
                                              end
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
    mypromptbox[s] = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                           awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    -- Create a taglist widget
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglist.buttons)

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, mytasklist.buttons)

    -- Create the wibox
    mywibox[s] = awful.wibox({ position = "top", screen = s, height = 15 })

    -- Create the statysbox
    mystatusbox[s] = awful.wibox({ position = "bottom", screen = s, ontop = false, width = 1, height = 15})

    -- Widgets that are aligned to the left
    local left_layout = wibox.layout.fixed.horizontal()
    left_layout:add(mylauncher)
    left_layout:add(mytaglist[s])
    left_layout:add(mypromptbox[s])

    -- Widgets that are aligned to the right
    local right_layout = wibox.layout.fixed.horizontal()
    if s == 1 then right_layout:add(wibox.widget.systray()) end
    -- right_layout:add(mytextclock)
    right_layout:add(mylayoutbox[s])

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.align.horizontal()
    layout:set_left(left_layout)
    layout:set_middle(mytasklist[s])
    layout:set_right(right_layout)

    mywibox[s]:set_widget(layout)
end
-- }}}

-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end)
    --awful.button({ }, 4, awful.tag.viewnext),
    --awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings
globalkeys = awful.util.table.join(
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev       ),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext       ),
    awful.key({ modkey,           }, "Escape", awful.tag.history.restore),

    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "w", function () mymainmenu:show() end),

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

    -- Standard program
    awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal) end),
    awful.key({ modkey, "Control" }, "r", awesome.restart),
    awful.key({ modkey, "Shift"   }, "q", awesome.quit),

    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)    end),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)    end),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)      end),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)      end),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)         end),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)         end),
    awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end),
    -- Shortcut to launch filemanager.
    awful.key({ modkey,           }, "e",     function () awful.util.spawn(filemanager) end),
    
    -- restore minimized windows
--     awful.key({modkey,   "Shift" }, "n",
--         function ()
--             local allclients = client.get(mouse.screen)
--             for _,c in ipairs(allclients) do
--                 if c.minimized and c:tags()[mouse.screen] ==
--                     awful.tag.selected(mouse.screen) then
--                     c.minimized = false
--                     client.focus = c
--                     c:raise()
--                     return
--                 end
--             end
--         end),

    awful.key({ modkey, "Control" }, "n", awful.client.restore),

    -- Prompt
    awful.key({ modkey },            "r",     function () mypromptbox[mouse.screen]:run() end),

    awful.key({ modkey }, "x",
              function ()
                  awful.prompt.run({ prompt = "Run Lua code: " },
                  mypromptbox[mouse.screen].widget,
                  awful.util.eval, nil,
                  awful.util.getdir("cache") .. "/history_eval")
              end),
    -- Menubar
    awful.key({ modkey }, "p", function() menubar.show() end)
)

clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop            end),
    awful.key({ modkey,           }, "n",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end),

   
    awful.key({ modkey, "Shift"   }, "t",      function (c) c.ontop = not c.ontop            end),

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

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = mouse.screen
                        local tag = awful.tag.gettags(screen)[i]
                        if tag then
                           awful.tag.viewonly(tag)
                        end
                  end),
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = mouse.screen
                      local tag = awful.tag.gettags(screen)[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      local tag = awful.tag.gettags(client.focus.screen)[i]
                      if client.focus and tag then
                          awful.client.movetotag(tag)
                     end
                  end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      local tag = awful.tag.gettags(client.focus.screen)[i]
                      if client.focus and tag then
                          awful.client.toggletag(tag)
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
                     focus = awful.client.focus.filter,
                     raise = true,
                     keys = clientkeys,
                     buttons = clientbuttons } },
    { rule = { class = "MPlayer" },
      properties = { floating = true } },
    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },
    { rule = { class = "Gxmessage" },
      properties = { floating = true } },
    { rule = { class = "Tilda" },
      properties = { floating = true } },
    { rule = { class = "Ghb" },
      properties = { floating = true } },
    { rule = { class = "Same-gnome" },
      properties = { floating = true } },
    { rule = { class = "VirtualBox" },
      properties = { floating = true,
                     tag = tags[1][6] } },
    { rule = { class = "Vmplayer" },
      properties = { floating = true,
                     tag = tags[1][6] } },
    { rule = { class = "WeeUXTERM" },
      properties = { tag = tags[1][9] } },
    { rule = { class = "MuttUXTERM" },
      properties = { tag = tags[1][9] } },
    { rule = { class = "Eclipse" },
      properties = { tag = tags[1][1] } },
    { rule = { class = "Firefox" },
      properties = { tag = tags[1][2] } },
    { rule = { instance = "plugin-container" },
  		properties = { floating = true } },
      -- properties = { floating = true, fullscreen = true } },
    { rule = { class = "Xdcp" },
      properties = { floating = true } },
    { rule = { class = "XTerm" },
      properties = { opacity = 0.7 } }
    -- Set Firefox to always map on tags number 2 of screen 1.
    -- { rule = { class = "Firefox" },
    --   properties = { tag = tags[1][2] } },
}
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c, startup)
    -- Enable sloppy focus
    c:connect_signal("mouse::enter", function(c)
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

    local titlebars_enabled = false
    if titlebars_enabled and (c.type == "normal" or c.type == "dialog") then
        -- buttons for the titlebar
        local buttons = awful.util.table.join(
                awful.button({ }, 1, function()
                    client.focus = c
                    c:raise()
                    awful.mouse.client.move(c)
                end),
                awful.button({ }, 3, function()
                    client.focus = c
                    c:raise()
                    awful.mouse.client.resize(c)
                end)
                )

        -- Widgets that are aligned to the left
        local left_layout = wibox.layout.fixed.horizontal()
        left_layout:add(awful.titlebar.widget.iconwidget(c))
        left_layout:buttons(buttons)

        -- Widgets that are aligned to the right
        local right_layout = wibox.layout.fixed.horizontal()
        right_layout:add(awful.titlebar.widget.floatingbutton(c))
        right_layout:add(awful.titlebar.widget.maximizedbutton(c))
        right_layout:add(awful.titlebar.widget.stickybutton(c))
        right_layout:add(awful.titlebar.widget.ontopbutton(c))
        right_layout:add(awful.titlebar.widget.closebutton(c))

        -- The title goes in the middle
        local middle_layout = wibox.layout.flex.horizontal()
        local title = awful.titlebar.widget.titlewidget(c)
        title:set_align("center")
        middle_layout:add(title)
        middle_layout:buttons(buttons)

        -- Now bring it all together
        local layout = wibox.layout.align.horizontal()
        layout:set_left(left_layout)
        layout:set_right(right_layout)
        layout:set_middle(middle_layout)

        awful.titlebar(c):set_widget(layout)
    end
end)
-- }}}


-- No border for maximized clients
client.connect_signal("focus",
    function(c)
        if c.maximized_horizontal == true and c.maximized_vertical == true then
            c.border_color = beautiful.border_normal
        else
            c.border_color = beautiful.border_focus
        end
    end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
-- }}}

-- {{{ Arrange signal handler
for s = 1, screen.count() do screen[s]:connect_signal("arrange", function ()
        local clients = awful.client.visible(s)
        local layout  = awful.layout.getname(awful.layout.get(s))

        if #clients > 0 then -- Fine grained borders and floaters control
            for _, c in pairs(clients) do -- Floaters always have borders
                if awful.client.floating.get(c) or layout == "floating" then
                    c.border_width = beautiful.border_width

                -- No borders with only one visible client
                elseif #clients == 1 or layout == "max" then
                    c.border_width = 0
                else
                    c.border_width = beautiful.border_width
                end
            end
        end
      end)
end
-- }}}

awful.util.spawn_with_shell("/home/andreasp/.bin/fixCaps.sh")
awful.util.spawn_with_shell("/home/andreasp/.bin/fixIEC958.sh")
awful.util.spawn_with_shell("/usr/bin/pulseaudio -D")
awful.util.spawn_with_shell("/usr/bin/conky")
awful.util.spawn_with_shell("/usr/bin/tilda")
awful.util.spawn_with_shell("/usr/bin/xbindkeys")
awful.util.spawn_with_shell("QT_STYLE_OVERRIDE=gtk /usr/bin/dropbox &")
awful.util.spawn_with_shell("sleep 5 && /usr/bin/pnmixer &")
awful.util.spawn_with_shell("sleep 5 && /home/andreasp/.bin/check_kernel_version.sh")
-- Changed wm name from LG3D to Sawfish. this solved the annoying java menu bug.
awful.util.spawn_with_shell("/usr/bin/wmname Sawfish")


-- awful.util.spawn_with_shell("/home/andreasp/.bin/fixJava.GUI.sh")
