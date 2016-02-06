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
--      .: FILE:          theme.lua
--      .: CREATED:       2011-04-16 22:28
--      .: AUTHOR:        Andreas Persson (greyscale, grey)
--      .: MAIL:          <andreas(at)greyscale(dot)se>
--      .: VERSION:       1.5
--      .: DESCRIPTION:   My theme for Awesome.
--                        Most icons found a https://awesome.naquadah.org/wiki/Nice_Icons
--                        with some additions made by freakAh.
--
-- __________________________________________________________________________________________
--  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
--  minded that it comes with absolutely no warranty. But then again you got it for free..
-- __________________________________________________________________________________________
--


local awful = require("awful")
awful.util = require("awful.util")

theme = {}
theme.confdir = awful.util.getdir("config")

-- awesome.font          = "Terminus 7"
awesome.font          = "Terminusmodx 7"

-- Remove the taskbar icons
theme.tasklist_disable_icon = true


theme.bg_normal     = "#121212"
theme.bg_focus      = "#212121"
theme.bg_urgent     = "#212121"
theme.bg_minimize   = "#121212"

theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#5fafff"
theme.fg_focus      = "#ff8700"
theme.fg_urgent     = "#ff0056"
theme.fg_minimize   = "#ababab"

theme.border_width  = 1
theme.border_normal = "#515151"
theme.border_focus  = "#ff8700"
theme.border_marked = "#ff0056"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = theme.confdir .. "/grey/taglist/squarefw.png"
theme.taglist_squares_unsel = theme.confdir .. "/grey/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.confdir .. "/grey/submenu.png"
theme.menu_height       = 15
theme.menu_width        = 130

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal              = theme.confdir .. "/grey/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.confdir .. "/grey/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive     = theme.confdir .. "/grey/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.confdir .. "/grey/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.confdir .. "/grey/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.confdir .. "/grey/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = theme.confdir .. "/grey/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.confdir .. "/grey/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.confdir .. "/grey/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.confdir .. "/grey/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = theme.confdir .. "/grey/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.confdir .. "/grey/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.confdir .. "/grey/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.confdir .. "/grey/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "/grey/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "/grey/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.confdir .. "/grey/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.confdir .. "/grey/titlebar/maximized_focus_active.png"

theme.wallpaper = theme.confdir .. "/grey/background/bg2.png"

-- You can use your own layout icons like this:
theme.layout_fairh      = theme.confdir .. "/grey/layouts2/fairh.png"
theme.layout_fairv      = theme.confdir .. "/grey/layouts2/fairv.png"
theme.layout_floating   = theme.confdir .. "/grey/layouts2/floating.png"
theme.layout_magnifier  = theme.confdir .. "/grey/layouts2/magnifier.png"
theme.layout_max        = theme.confdir .. "/grey/layouts2/max.png"
theme.layout_fullscreen = theme.confdir .. "/grey/layouts2/fullscreen.png"
theme.layout_tilebottom = theme.confdir .. "/grey/layouts2/tilebottom.png"
theme.layout_tileleft   = theme.confdir .. "/grey/layouts2/tileleft.png"
theme.layout_tile       = theme.confdir .. "/grey/layouts2/tile.png"
theme.layout_tiletop    = theme.confdir .. "/grey/layouts2/tiletop.png"
theme.layout_spiral     = theme.confdir .. "/grey/layouts2/spiral.png"
theme.layout_dwindle    = theme.confdir .. "/grey/layouts2/dwindle.png"
--theme.layout_mirror     = theme.confdir .. "/grey/layouts2/mirrorv.png"

theme.awesome_icon      = theme.confdir .. "/grey/awesome14.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
