## Background

I'm still actually planning on having Spacemacs as my primary editor, but there are a lot of times it is nice to spawn a Vim instance and do a little work.  I'm tired of letting the configuration of those Vim instances be left to the whim of others, so I'm going to do some light planning.

## Plugin ~manager

There are a pile of options.  At this time, while I'm still bouncing between Vim 7.x and 8.x, I'm going to stick with the venerable Pathogen.  It's not really a plugin manager; it's more a runtime path manager.  I'll have to manually git clone the plugins I want for now, but I'm okay with that.  It'll also keep me from going plugin crazy.

### Pathogen Config

I want to be able to just clone this repository into `~/.vim`, and I don't really want to mess with git submodules, so I'm just going to clone my plugins into `~/repos/vim-plugins/` and configure Pathogen to load them all from there.

## Installing Vim

I'm planning on just using the Vim executable that comes with Git for Windows.  Installation would be as follows:
  * Install Git for Windows (likely via `conda`)
  * Add Vim to `%PATH%`
    * In conda, this is usually `/Miniconda3/envs/my_env/Library/usr/bin`
    * Might want to add the other `bin` directories to get the rest of the Unix toolchain
    * Oddly, when using Git for Windows, the user `%PATH%` entries are not appended, so be sure to add these tools to the system `%PATH%`
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

