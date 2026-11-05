hl.on('hyprland.start', function()
    hl.exec_cmd('quickshell /home/alex/Documents/dotfiles/home/quickshell/config/shell.qml')

    -- Clipboard manager
    hl.exec_cmd('wl-paste --type text --watch cliphist store')
    hl.exec_cmd('wl-paste --type image --watch cliphist store')

    end)
