hl.on('hyprland.start', function()
    hl.exec_cmd('waybar')

    -- Clipboard manager
    hl.exec_cmd('wl-paste --type text --watch cliphist store')
    hl.exec_cmd('wl-paste --type image --watch cliphist store')

end)