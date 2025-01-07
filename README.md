# Neovim Detacher Plugin

This Neovim plugin provides a command to detach the current Neovim instance from its remote UI.

## Usage

The plugin defines a user command `:Detach` that closes the current UI connection.

To use it, simply run:

```vim
:Detach
```

This will close the current UI, effectively detaching the Neovim instance.

## Setup

To use this plugin, you need to:

1.  Place the `detacher.lua` file in your Neovim configuration directory, typically under `lua/detacher.lua`.
2.  Load the plugin in your Neovim configuration, for example:

```lua
require('detacher').setup()
```

## Motivation

This plugin is useful when you want to detach a Neovim instance from a remote UI, for example when using a multiplexer like tmux or when you want to close the UI without closing the Neovim instance itself.
