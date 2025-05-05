# dotfiles

My macOS configuration files.

## Dependencies

-   [SF Mono](https://developer.apple.com/fonts/) Nerd-patched font
-   [Neofetch](https://github.com/dylanaraps/neofetch)
-   [Ghostty](https://ghostty.org/)
-   [Neovim](https://neovim.io/)
    -   [fd](https://github.com/sharkdp/fd) or [ripgrep](https://github.com/BurntSushi/ripgrep)
    -   Language Servers (`make install-language-servers`)
        -   [OmniSharp](https://github.com/OmniSharp/omnisharp-roslyn) (`make install-omnisharp`)
            -   [.NET 6.0](https://dotnet.microsoft.com/ru-ru/download/dotnet/6.0)
            -   _May require `export DOTNET_ROOT="/usr/local/share/dotnet"`_
        -   [gopls](https://pkg.go.dev/golang.org/x/tools/gopls#section-readme)
        -   [svelte-language-server](https://www.npmjs.com/package/svelte-language-server)
        -   [typescript-language-server](https://www.npmjs.com/package/typescript-language-server)
            -   [typescript](https://www.npmjs.com/package/typescript)
        -   [lua-language-server](https://github.com/LuaLS/lua-language-server)
        -   [tailwind-language-server](https://www.npmjs.com/package/@tailwindcss/language-server)
