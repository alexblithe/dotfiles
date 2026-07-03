{
  config,
  catppuccin,
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.nixpkgs-fmt ];
  catppuccin.vscode.profiles.default = {
    enable = true;
    flavor = "mocha";
  };

  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.vscode-marketplace; [
        ftsamoyed.theme-pink-cat-boo
        ms-azuretools.vscode-containers
        ms-vscode-remote.remote-containers
        openai.chatgpt
        rooveterinaryinc.roo-cline
        saoudrizwan.claude-dev
        jnoortheen.nix-ide
        vscodevim.vim
        theqtcompany.qt-qml
        # anthropic.claude-code
        mkhl.direnv
        dbaeumer.vscode-eslint
        editorconfig.editorconfig
        ms-azuretools.vscode-docker
        ms-vscode.makefile-tools

      ];
      userSettings = {
        "github.copilot.nextEditSuggestions.enabled" = true;
        "vim.useSystemClipboard" = true;
        "vim.handleKeys" = {
          "<C-p>" = false;
          "<C-b>" = false;
        };
        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nil";
        "nix.serverSettings.nil.formatting.command" = [ "nixfmt" ];
        "workbench.iconTheme" = "catppuccin-mocha";
        "redhat.telemetry.enabled" = false;
        "containers.containerClient" = "com.microsoft.visualstudio.containers.podman";
        "containers.orchestratorClient" = "com.microsoft.visualstudio.orchestrators.podmancompose";
        "editor.fontFamily" = "'Droid Sans Mono', 'monospace', monospace";
        "git.autofetch" = true;
        "github.copilot.enable" = {
          "*" = true;
          plaintext = false;
          markdown = true;
          scminput = false;
        };
        "workbench.activityBar.location" = "top";
        "git.enableSmartCommit" = true;
        "editor.minimap.enabled" = false;
        "chat.agentSkillsLocations" = {
          "~/.config/opencode/skills" = true;
        };
        "claudeCode.preferredLocation" = "panel";
        "window.commandCenter" = false;
        "workbench.navigationControl.enabled" = false;
        "vim.leader" = "<space>";
        "vim.normalModeKeyBindings" = [
          # Focus previous tab at the left
          {
            before = [ "H" ];
            commands = [ "workbench.action.previousEditor" ];
          }
          # Focus next tab at the right
          {
            before = [ "L" ];
            commands = [ "workbench.action.nextEditor" ];
          }
          # Close current tab
          {
            before = [ "Q" ];
            after = [ "<C-w>" "q" ];
          }
          # Focus split window at left
          {
            before = [ "<leader>" "h" ];
            commands = [ "workbench.action.focusLeftGroup" ];
          }
          # Focus split window at bottom
          {
            before = [ "<leader>" "j" ];
            commands = [ "workbench.action.focusBelowGroup" ];
          }
          # Focus split window at top
          {
            before = [ "<leader>" "k" ];
            commands = [ "workbench.action.focusAboveGroup" ];
          }
          # Focus split window at right
          {
            before = [ "<leader>" "l" ];
            commands = [ "workbench.action.focusRightGroup" ];
          }
          # Search text
          {
            before = [ "<leader>" "f" ];
            commands = [ "workbench.action.findInFiles" ];
          }
          # Search symbol
          {
            before = [ "<leader>" "s" ];
            commands = [ "workbench.action.showAllSymbols" ];
          }
          # Build project
          {
            before = [ "<leader>" "b" ];
            commands = [ "workbench.action.tasks.build" ];
          }
          # Run project
          {
            before = [ "<leader>" "r" ];
            commands = [ "workbench.action.tasks.runTask" ];
          }
          # Run test
          {
            before = [ "<leader>" "t" ];
            commands = [ "workbench.action.tasks.test" ];
          }
          # Toggle terminal
          {
            before = [ "<leader>" "t" "t" ];
            commands = [ "workbench.action.terminal.toggleTerminal" ];
          }
        ];
      };
    };
  };
}
