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
--      .: VERSION:       1.0
--      .: DESCRIPTION:   My theme for Awesome.
--
-- __________________________________________________________________________________________
--  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
--  minded that it comes with absolutely no warranty. But then again you got it for free..
-- __________________________________________________________________________________________
--

local cfg_path = awful.util.getdir("config")

theme = {}

theme.font          = "Monaco 7"

theme.bg_normal     = "#212121"
theme.bg_focus      = "#313131"
theme.bg_urgent     = "#313131"
theme.bg_minimize   = "#191919"

theme.fg_normal     = "#5fafff"
theme.fg_focus      = "#ff8700"
theme.fg_urgent     = "#ff0056"
theme.fg_minimize   = "#ababab"

theme.border_width  = "1"
theme.border_normal = "#515151"
theme.border_focus  = "#ff8700"
theme.border_marked = "#91231c"

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
theme.taglist_squares_sel   = cfg_path .. "/grey/taglist/squarefw.png"
theme.taglist_squares_unsel = cfg_path .. "/grey/taglist/squarew.png"

theme.tasklist_square = cfg_path .. "/grey/tasklist/square2.png"
theme.tasklist_floating_icon = cfg_path .. "/grey/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = cfg_path .. "/grey/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = cfg_path .. "/grey/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = cfg_path .. "/grey/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = cfg_path .. "/grey/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = cfg_path .. "/grey/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = cfg_path .. "/grey/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = cfg_path .. "/grey/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = cfg_path .. "/grey/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = cfg_path .. "/grey/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = cfg_path .. "/grey/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = cfg_path .. "/grey/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = cfg_path .. "/grey/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = cfg_path .. "/grey/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = cfg_path .. "/grey/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = cfg_path .. "/grey/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = cfg_path .. "/grey/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = cfg_path .. "/grey/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = cfg_path .. "/grey/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = cfg_path .. "/grey/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg -f " .. cfg_path .. "/grey/background/bg2.png" }

-- You can use your own layout icons like this:
theme.layout_fairh = cfg_path .. "/grey/layouts2/fairh.png"
theme.layout_fairv = cfg_path .. "/grey/layouts2/fairv.png"
theme.layout_floating  = cfg_path .. "/grey/layouts2/floating.png"
theme.layout_magnifier = cfg_path .. "/grey/layouts2/magnifier.png"
theme.layout_max = cfg_path .. "/grey/layouts2/max.png"
theme.layout_fullscreen = cfg_path .. "/grey/layouts2/fullscreen.png"
theme.layout_tilebottom = cfg_path .. "/grey/layouts2/tilebottom.png"
theme.layout_tileleft   = cfg_path .. "/grey/layouts2/tileleft.png"
theme.layout_tile = cfg_path .. "/grey/layouts2/tile.png"
theme.layout_tiletop = cfg_path .. "/grey/layouts2/tiletop.png"
theme.layout_spiral  = cfg_path .. "/grey/layouts2/spiral.png"
theme.layout_dwindle = cfg_path .. "/grey/layouts2/dwindle.png"

theme.awesome_icon = cfg_path .. "/grey/awesome14.png"

return theme
