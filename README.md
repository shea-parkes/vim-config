## Background

I'm still actually planning on having Spacemacs or NeoVim as my primary editor, but there are a lot of times it is nice to spawn a Vim instance and do a little work.  I'm tired of letting the configuration of those Vim instances be left to the whim of others, so I'm going to do some light planning.

## Plugin ~manager

There are a pile of options.  At this time, while I'm still bouncing between Vim 7.x and 8.x, I'm going to stick with the venerable Pathogen.  It's not really a plugin manager; it's more a runtime path manager.  I'll have to manually git clone the plugins I want for now, but I'm okay with that.  It'll also keep me from going plugin crazy.

### Pathogen Config

I want to be able to just clone this repository into `~/.vim`, and I don't really want to mess with git submodules, so I'm just going to clone my plugins into `~/repos/vim-plugins/` and configure Pathogen to load them all from there.

## Installing Vim

I'm planning on just using the Vim executable that comes with Git for Windows.  Installation would be as follows:
  * Install Git for Windows (likely via `choco install git.portable` because `conda` doesn' give the whole she-bang currently)
  * Ensure git ends up on the path (`choco` puts it on the path of the admin user who installed it, which isn't as useful)
    * If using `choco install git.portable`, add `C:\tools\git\mingw64\bin` to `%PATH%`
  * Add Vim to `%PATH%`
    * Via `choco`, this is usually `C:\tools\git\usr\bin`
    * Oddly, when using Git for Windows, the user `%PATH%` entries are not appended, so be sure to add these entries to the system `%PATH%`
  * Clone this repository into `%UserProfile%/.vim`
  * Clone desired plugins into `%UserProfile%/repos/vim-plugins`
  * Add registry entry for `Open with Vim` Explorer context menu entry

### Vim Config Load Paths

Given my use of vim from Git for Windows, I'll have a somewhat unusual vim config file hierarchy.  You can view the active list of config file sources with `:version` inside of vim.  My current plan is to keep the config injected by Git for Windows active and just layer on top of that.  (It has some specific hooks for editing commit messages that are nice.  It also has much of vim-sensible covered.)

#### Troubleshooting Help

Some of this is mentioned above, but here is a consolidated source for helping troubleshoot configuration:
  * To see where vim is sourcing it's config files from run `:version`
    * The "2nd" sources will not be loaded if the primary ones are found
  * Many plugins leave breadcrumb variables when loaded.  To see those, run `:let g:`
  * To troubleshoot why a helper tool (e.g. `git`) may not be available, inspect the output of `:echo system('which git')`
    * As mentioned above, it appears the Vim in Git for Windows does not respect the user-level `%PATH%` in Windows

## Useful Plugins

I'm not currently aiming to make Vim a ~full IDE (I'm doing that with NeoVim at he moment).  So I'm trying to limit myself to just a few, tasteful plugins.  Here is a recommended list that aligns with my current usage of Vim:
  * [tpope/vim-pathogen](https://github.com/tpope/vim-pathogen)
  * [tpope/vim-surround](https://github.com/tpope/vim-surround)
  * [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
  * [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
  * [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
  * [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  * [b4winckler/vim-angry](https://github.com/b4winckler/vim-angry)
  * [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)
  * [ervandew/supertab](https://github.com/ervandew/supertab)

Only a couple of the above require specific configuration options in `vimrc`.  See its contents for details.
