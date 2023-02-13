# neovim

## LSP
- ccls: C++
  There are coc-settings.json files that I have successfully used on Ubuntu and macOS.
   - I have had success setting the path to ROS libraries within the coc-settings.json file
   - I set "coc.preferences.jumpCommand": "tabe" so that when searching for definitions 
    using "gd", it opens in a new tab instead of replacing the current tab.
   - I set "suggest.noselect": true so that for autocomplete, pressing tab autofills the first item, not the second item.

  The .ccls file needs to be moved to the base of a project, and modified based on the 
  libraries that project uses.
   - I have had most success setting include paths to external libraries in this file

- eslint: JavaScript/TypeScript
    ```bash
    npm i -g vscode-langservers-extracted
    ```
- 

