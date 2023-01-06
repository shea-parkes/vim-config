## Background

I'm still actually planning on having NeoVim as my primary editor, but there are a lot of times it is nice to spawn a Vim instance and do a little work.  I'm tired of letting the configuration of those Vim instances be left to the whim of others, so I'm going to do some light ownership.  The intent is to keep Vim an editor and not an IDE though.

## Using this repo

Plugins are handled with the venerable pathogen and git submodules.  More reminders on wrangling submodules over in my `neovim-config`.

Clone this repo into `~/.vim` and make sure you get the submodules.

#### Troubleshooting Help

Some of this is mentioned above, but here is a consolidated source for helping troubleshoot configuration:
  * To see where vim is sourcing it's config files from run `:version`
    * The "2nd" sources will not be loaded if the primary ones are found
  * Many plugins leave breadcrumb variables when loaded.  To see those, run `:let g:`
  * `:scriptnames` will show what vimscript files have been ran up to that point
