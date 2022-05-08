#----------------------------------------||-----------------------------------#
#          _      _      _    ___  __    ||                                   #
#         | |    | |    | |  |__ \/_ |   || Aliases file, this should be      #
#         | | ___| | ___| | __  ) || |   || stored in $ZSH_CUSTOM             #
#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                   #
#    | |__| |  __/ |  __/   < / /_ | |   ||                                   #
#     \____/ \___|_|\___|_|\_\____||_|   ||                                   #
#________________________________________||___________________________________#

alias a='alias'
alias e='export'

# Quit terminal for vim users
alias :q='exit'

# git command for the dotfiles git repo
a config='/usr/bin/git --git-dir=$DOT_FILES_GIT_DIR/ --work-tree=$HOME'

#list
a ls='ls --color=auto'
a la='ls -a'
a ll='ls -la'
a l='ls'
a l.="ls -A | egrep '^\.'"

#fix obvious typo's
a cd..='cd ..'
a pdw="pwd"

#Pacman
a pacman='sudo /usr/bin/pacman --color auto'
a udpate='pacman -Syyu'
a upate='pacman -Syyu'
#Cleanup orphaned packages
a cleanup='pacman -Rns $(pacman -Qtdq)'
#pacman unlock
a unlock="sudo rm /var/lib/pacman/db.lck"


## Colorize the grep command output for ease of use (good for log files)##
a grep='grep --color=auto'
a egrep='egrep --color=auto'
a fgrep='fgrep --color=auto'

#readable output
a df='/usr/bin/grc /usr/bin/df -h'

#free
a free="/usr/bin/grc /usr/bin/free -mt"

#use all cores
a uac="sh ~/.bin/main/000*"

#continue download
a wget="/usr/bin/wget -c"

#userlist
a userlist="/usr/bin/cut -d: -f1 /etc/passwd"

#merge new settings
a merge="/usr/bin/xrdb -merge ~/.Xresources"

# Aliases for software managment

# yay as aur helper - updates everything
a pksyua="/usr/bin/yay -Syu --noconfirm"
a upall="/usr/bin/yay -Syu --noconfirm"

#ps
a psa="/usr/bin/grc /usr/bin/ps auxf"
a psgrep="/usr/bin/grc /usr/bin/ps aux | grep -v grep | grep -i -e VSZ -e"

#grub update
a update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#add new fonts
a update-fc='sudo fc-cache -fv'

#copy/paste all content of /etc/skel over to home folder - backup of config created - beware
a skel='cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S) && cp -rf /etc/skel/* ~'
#backup contents of /etc/skel to hidden backup folder in home/user
a bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

#copy bashrc-latest over on bashrc - cb= copy bashrc
#alias cb='sudo cp /etc/skel/.bashrc ~/.bashrc && source ~/.bashrc'
#copy /etc/skel/.zshrc over on ~/.zshrc - cb= copy zshrc
a cz='sudo cp /etc/skel/.zshrc ~/.zshrc && source ~/.zshrc'

#switch between bash and zsh
a tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
a tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

#quickly kill conkies
a kc='killall conky'

#hardware info --short
a hw="hwinfo --short"

#skip integrity check
a yayskip='/usr/bin/yay -S --mflags --skipinteg'
a trizenskip='trizen -S --skipinteg'

#check vulnerabilities microcode
a microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

#get fastest mirrors in your neighborhood
a mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
a mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
a mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
a mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

#mounting the folder Public for exchange between host and guest on virtualbox
a vbm="sudo /usr/local/bin/arcolinux-vbox-share"

#shopt
#shopt -s autocd # change to named directory
#shopt -s cdspell # autocorrects cd misspellings
#shopt -s cmdhist # save multi-line commands in history as single line
#shopt -s dotglob
#shopt -s histappend # do not overwrite history
#shopt -s expand_aliases # expand aliases

#Recent Installed Packages
a rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
a riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#iso and version used to install ArcoLinux
a iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"



#get the error messages from journalctl
a jctl="/usr/bin/journalctl -p 3 -xb | /usr/bin/lnav"

#/usr/bin/vim for important configration files
#know what you do in these files
a nlightdm="sudoedit /etc/lightdm/lightdm.conf"
a npacman="sudoedit /etc/pacman.conf"
a ngrub="sudoedit /etc/default/grub"
a nmkinitcpio="sudoedit /etc/mkinitcpio.conf"
a nslim="sudoedit /etc/slim.conf"
a noblogout="sudoedit /etc/oblogout.conf"
a nmirrorlist="sudoedit /etc/pacman.d/mirrorlist"
a nconfgrub="sudoedit /boot/grub/grub.cfg"

#gpg
#verify signature for isos
a gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
#receive the key of a developer
a gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

#shutdown or reboot
a ssn="sudo shutdown now"
a sr="sudo reboot"

#maintenance
a big="expac -H M '%m\t%n' | sort -h | nl"
a downgrada="sudo downgrade --ala-url https://bike.seedhost.eu/arcolinux/"

#systeminfo
a probe="sudo -E hw-probe -all -upload"

