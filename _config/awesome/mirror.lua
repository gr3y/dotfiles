#!/usr/bin/lua
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
--    .: FILE:         mirror.lua
--    .: CREATED:      2011-08-10 00:31
--    .: AUTHOR:       Andreas Persson (greyscale, grey), <andreas(at)greyscale(dot)se>
--    .: VERSION:      1.0
--    .: REVISION:     ---
--    .: DESCRIPTION:  Layout for awesome window manager that sorts clients into 3 coloumns
--                     with a wider center column containing only one client.
--                     Inspired by wmfs mirror layout.
--
-- __________________________________________________________________________________________
--  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
--  minded that it comes with absolutely no warranty. But then again you got it for free..
-- __________________________________________________________________________________________
--

local ipairs = ipairs
local math = math

module("awful.layout.suit.mirror")

local function mirror(p)
  if #p.clients > 0 then
    local area = {}
    area.height = p.workarea.height
    area.width = p.workarea.width
    area.x = p.workarea.x
    area.y = p.workarea.y

    local cols = 3
    local col = 1
    local rows = math.ceil((#p.clients - 1) / 2)
    local row = 1
    local oddc = (#p.clients - 1) % 2

    for k, c in ipairs(p.clients) do
      local g = {}
      -- Center
      if col == 1 then
        g.width = area.width / 2
        g.height = area.height
        g.x = area.x + (area.width / 4)
        g.y = area.y
        col = col + 1
      -- Left
      elseif col == 2 then
        g.width = area.width / 4
        g.height = area.height / rows
        g.x = area.x
        g.y = area.y + (row - 1) * g.height
        
        if row == rows then
          row = 1
          col = col + 1
        else
          row = row + 1
        end
      -- Right
      elseif col == 3 then
        g.width = area.width / 4

        if oddc == 1 then
          g.height = area.height / (rows - 1)
        else
          g.height = area.height / rows
        end
        
        g.x = area.x + (area.width - g.width)
        g.y = area.y + (row - 1) * g.height

        row = row + 1
      end
      c:geometry(g)
    end
  end
end

name = "mirror"
function arrange(p)
  return mirror(p)
end
