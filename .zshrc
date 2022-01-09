# The .zshrc file is a Z-shell resource. It’s a script that is run
# whenever you start zsh. If you have certain paths to set, or
# initializations you want performed at the start-up of the shell,
# they are put in ~/.zshrc
#
# Copyright 2022 Si Cruse
#
# My Z-shell is configured for use both for personal productivity at
# home as well as for development productivity in a corporate setting.
# The main areas of configuration are:
# - Powerline Prompt : a theme for zsh which provides useful data
# - PATH : sets up the search path
# - Corporate : pull in specific corporate customizations
# - Oh My Zsh : Oh My Zsh is a delightful, open source, community-driven
# framework for managing your Zsh configuration.
# - Interpreter Version Managers : command-line tools which allow you to easily
# install, manage, and work with multiple interpreter versions
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the MIT License
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# MIT License for more details.
#
# You should have received a copy of the MIT License
# along with this program.  If not, see <https://raw.githubusercontent.com/sicruse/dotfiles/master/LICENSE>.

## Powerline Prompt
[[ -f $HOME/.zshrc.powerline ]] && . $HOME/.zshrc.powerline

## Basic configuration
# Avoid terminal color support warning
export TERM="xterm-256color"
## PATH
# /usr/local/bin is for programs that a normal user may run. The /usr/local hierarchy is for use by the system administrator when installing software locally.
# /usr/local/sbin is for system administration programs (which are not part of the core OS) that a local administrator may run.
export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
# $HOME/bin is for programs & scripts defined by the current user
[[ -d $HOME/bin ]] && export PATH="$PATH:$HOME/bin"
# /usr/bin is a standard directory on Unix-like operating systems that contains most of the executable files (i.e., ready-to-run programs) that are not needed for booting (i.e., starting) or repairing the system.
# /bin is a standard subdirectory of the root directory in Unix-like operating systems that contains the executable (i.e., ready to run) programs that must be available in order to attain minimal functionality for the purposes of booting (i.e., starting) and repairing a system.
# /usr/sbin binaries are general sysadmin tools where you can at least get to single user mode and mount all your volumes.
# /sbin is a standard subdirectory of the root directory in Unix-like operating systems that contains executable (i.e., ready to run) programs. They are mostly administrative tools, that should be made available only to the root (i.e., administrative) user.
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin"

## Coprporate Configuration
# Pull in corporate / organization specific environment configuration
[[ -f $HOME/.zshrc.corporate ]] && . $HOME/.zshrc.corporate

## Oh My Zsh Configuration
[[ -f $HOME/.zshrc.oh-my-zsh ]] && . $HOME/.zshrc.oh-my-zsh

## Interpreter Version Manager Configuration, e.g. rvm / nvm / pyenv
[[ -f $HOME/.zshrc.ivm ]] && . $HOME/.zshrc.ivm

## Powerline Prompt Configuration
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f $HOME/.p10k.zsh ]] && . $HOME/.p10k.zsh
