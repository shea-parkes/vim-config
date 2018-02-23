## Background

I'm still actually planning on having Spacemacs as my primary editor, but there are a lot of times it is nice to spawn a Vim instance and do a little work.  I'm tired of letting the configuration of those Vim instances be left to the whim of others, so I'm going to do some light planning.

## Plugin ~manager

There are a pile of options.  At this time, while I'm still bouncing between Vim 7.x and 8.x, I'm going to stick with the venerable Pathogen.  It's not really a plugin manager; it's more a runtime path manager.  I'll have to manually git clone the plugins I want for now, but I'm okay with that.  It'll also keep me from going plugin crazy.

### Pathogen Config

I want to be able to just clone this repository into `~/.vim`, and I don't really want to mess with git submodules, so I'm just going to clone my plugins into `~/repos/vim-plugins/` and configure Pathogen to load them all from there.

## Installing Vim

Vim no longer comes bundled with Git (at least not via conda).  However, conda now makes the whole MSYS2 environment available on its own special channel.  Here is the link to the current contents of the channel:
  * https://repo.continuum.io/pkgs/msys2/win-64/

Anaconda doesn't well document this subsystem yet though.  For example, I had to go here to find the definition of what metapackages exist:
  * https://github.com/ContinuumIO/anaconda-issues/issues/1484

So it seems to get a pretty healthy vim+git from MSYS2 by installing the following conda packages:
  * `posix` (baseline metapackage)
  * `m2-vim`
  * `git`

After setting up that conda envitonment, be sure to add the following two subfolders to the **system** `%PATH%` (it needs to be the system path because the msys2 environment doesn't always respect the user path):
  * my_env/Library/usr/bin
  * my_env/Library/mingw64/bin

Then integrate the contents of this repository:
  * Clone this repository into `%UserProfile%/.vim`
  * Clone desired plugins into `%UserProfile%/repos/vim-plugins`
  * Add registry entry for `Open with Vim` Explorer context menu entry
    * The included registry file can be imported via regedit (when ran as an Admin) and depends upon the conda environment being named `inception`


#### Troubleshooting Help

Some of this is mentioned above, but here is a consolidated source for helping troubleshoot configuration:
  * To see where vim is sourcing it's config files from run `:version`
    * The "2nd" sources will not be loaded if the primary ones are found
  * Many plugins leave breadcrumb variables when loaded.  To see those, run `:let g:`
  * To troubleshoot why a helper tool (e.g. `git`) may not be available, inspect the output of `:echo system('which git')`
    * As mentioned above, it appears the Vim in Git for Windows does not respect the user-level `%PATH%` in Windows

## Useful Plugins

Vim 7.x didn't make it easy to write async plugins, so making Vim a ~full IDE at this point is not exactly tasteful.  Instead, the following plugins just make things nicer than default:
  * [tpope/vim-pathogen](https://github.com/tpope/vim-pathogen)
  * [tpope/vim-surround](https://github.com/tpope/vim-surround)
  * [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
  * [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
  * [jpalardy/vim-slime](https://github.com/jpalardy/vim-slime)
  * [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  * [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)
  * [ervandew/supertab](https://github.com/ervandew/supertab)
  
Only a couple of the above require specific configuration options in `vimrc`.  See its contents for details.
