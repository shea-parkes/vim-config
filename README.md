## Background

I'm still actually planning on having Spacemacs or NeoVim as my primary editor, but there are a lot of times it is nice to spawn a Vim instance and do a little work.  I'm tired of letting the configuration of those Vim instances be left to the whim of others, so I'm going to do some light planning.

## Plugin ~manager

There are a pile of options.  At this time, while I'm still bouncing between Vim 7.x and 8.x, I'm going to stick with the venerable Pathogen.  It's not really a plugin manager; it's more a runtime path manager.  I'm using git submodules as my plugin manager.  See my NeoVim config for more details on how I'm using submodules.

## Installing Vim

I'm planning on just using the Vim executable that comes with Git for Windows.  Installation would be as follows:
  * Install Git for Windows (likely via `choco install git.portable` because `conda` doesn' give the whole she-bang currently)
  * Ensure git ends up on the path (`choco` puts it on the path of the admin user who installed it, which isn't as useful)
    * If using `choco install git.portable`, add `C:\tools\git\mingw64\bin` to `%PATH%`
  * Add Vim to `%PATH%`
    * Via `choco`, this is usually `C:\tools\git\usr\bin`
    * Oddly, when using Git for Windows, the user `%PATH%` entries are not appended, so be sure to add these entries to the system `%PATH%`
  * Clone this repository (with `--recursive`) into `%UserProfile%/.vim`
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

I'm not currently aiming to make Vim a ~full IDE (I'm doing that with NeoVim at he moment).  So I'm trying to limit myself to just a few, tasteful plugins.  Refer to the included submodules to see where I landed.
