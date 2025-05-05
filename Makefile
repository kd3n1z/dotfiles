OMNISHARP_ASSET=omnisharp-osx-arm64-net6.0.zip
NPM_INSTALL=pnpm i -g
BREW_INSTALL=brew install

all: install-language-servers | symlink

symlink:
	stow . -t ~

install-language-servers: install-omnisharp
	$(NPM_INSTALL) typescript svelte-language-server typescript-language-server @tailwindcss/language-server
	$(BREW_INSTALL) lua-language-server
	go install golang.org/x/tools/gopls@latest

install-omnisharp:
	@echo "Fetching latest OmniSharp release information..."
	@RELEASE_JSON=$$(curl -s https://api.github.com/repos/OmniSharp/omnisharp-roslyn/releases/latest); \
	DOWNLOAD_URL=$$(echo $$RELEASE_JSON | jq -r ".assets[] | select(.name == \"$(OMNISHARP_ASSET)\") | .browser_download_url"); \
	echo "Downloading $$DOWNLOAD_URL..."; \
	curl -o omnisharp.zip -L "$$DOWNLOAD_URL"
	@mkdir -p .config/nvim/language-servers/omnisharp
	@unzip omnisharp.zip -d .config/nvim/language-servers/omnisharp/
	@chmod +x .config/nvim/language-servers/omnisharp/OmniSharp
	@-rm omnisharp.zip
	@echo "OmniSharp installed."
