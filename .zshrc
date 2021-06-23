# If you come from bash you might have to change your $PATH.
export PATH=/root/.local/bin:/snap/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"


export _JAVA_AWT_WM_NONREPARENTING=1

# Enable Powerlevel10k instant prompt. Should stay at the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=${HOME}/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
#ZSH_THEME_RANDOM_CANDIDATES=( 
#"robbyrussell" 
#"agnoster" 
#"bira" 
#"blinks" 
#"bureau" 
#"fishy" 
#"funky" 
#"gentoo" 
#"gnzh" 
#"powerlevel10k/powerlevel10k"
#)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  terminitor
  sudo
  #ssh-agent
  python
  nmap
  gnu-utils
  z
  zsh-interactive-cd
  ufw
  urltools
  vi-mode
  vim-interaction
  perl
  golang
  git
  github
  git-auto-fetch
  git-escape-magic
  git-extras
  git-flow-avh
  git-flow
  git-hubflow
  git-prompt
  git
  gitfast
  cp
  tmux
  common-aliases
  command-not-found
  colored-man-pages
  battery
  autopep8
)

source ${ZSH}/oh-my-zsh.sh

source ${ZSH}/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source ${ZSH}/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=blue,bg=white,bold,underline"


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Manual configuration

# Manual aliases
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first --human-readable --timesort'
alias tree='lsd --tree -latr'
alias cat='bat --paging=never'
alias zshconfig="vim ${HOME}/.zshrc"
alias hostedit="sudo vim /etc/hosts"
alias dnsorden="sudo vim /etc/nsswitch.conf"
alias dnsedit="sudo vim /etc/resolv.conf"
alias intedit="sudo vim /etc/network/interfaces"
alias grep="grep --color=auto"
alias burp="${HOME}/Tools/jdk-15.0.2/bin/burp.sh"


[ -f ${ZSH}/plugins/fzf/fzf.plugin.zsh ] && source ${ZSH}/plugins/fzf/fzf.plugin.zsh


# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "${@}"
}

# fzf improvement
function fzf-lovely(){

	if [ "${1}" = "h" ]; then
		fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
 	                echo {} is a binary file ||
	                 (bat --style=numbers --color=always {} ||
	                  highlight -O ansi -l {} ||
	                  coderay {} ||
	                  rougify {} ||
	                  cat {}) 2> /dev/null | head -500'

	else
	        fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
	                         echo {} is a binary file ||
	                         (bat --style=numbers --color=always {} ||
	                          highlight -O ansi -l {} ||
	                          coderay {} ||
	                          rougify {} ||
	                          cat {}) 2> /dev/null | head -500'
	fi
}

function rmk(){
	scrub -p dod ${@}
	shred -zun 10 -v ${@}
}


function upgrade(){

  sudo apt update && sudo apt -y full-upgrade && sudo updatedb && sudo apt -y autoremove && sudo apt clean

}


function update(){

  sudo apt update && sudo apt -y upgrade && sudo updatedb && sudo apt -y autoremove && sudo apt clean

}


function instalar(){

	sudo apt -y install ${@}

}


function outside(){
		vmware-hgfsclient | while read folder; do
  		vmwpath="/mnt/hgfs/${folder}"
  		echo "[i] Mounting ${folder}   (${vmwpath})"
  		mkdir -p "${vmwpath}"
  		umount -f "${vmwpath}" 2>/dev/null
  		sudo vmhgfs-fuse -o allow_other -o auto_unmount ".host:/${folder}" "${vmwpath}"
		done
		sleep 2s
}


function htb(){

    if [[ ! $(ip add show tun0) > /dev/null ]]; then

	      sudo openvpn --config ${HOME}/Documents/*.ovpn --daemon

        if [[ $(ip add show tun0) > /dev/null ]]; then

		          echo "Tu ip de hackthebox.eu es \e[2;32m $(ip add show tun0 | grep 'inet ' | awk -F " " '{ print $2 }')\e[0m"

	      else

		          echo "La vpn aun no ha subido, puede ser que el archivo *.opvn no esta en la ruta ${HOME}/Documents. Por favor volver ejecutar comando htb nuevamente."

	      fi

    else

          echo "La vpn ya ha subido, tu ip de hackthebox.eu es \e[2;32m $(ip add show tun0 | grep 'inet ' | awk -F " " '{ print $2 }')\e[0m"

    fi


}


function OS_Discovery(){

declare -A OS

OS[64]='Linux'
OS[128]='Windows'
OS[254]='Solaris'

for a in ${@}; do

    TTL=$(ping -c 1 ${a} | egrep ttl | awk '{ print $6 }'| sed -e 's/ttl=//g');                                                                                    
                                                                                                                                    

    case ${TTL} in

            <1-64>)

                    echo "El sistema operativo en ${a} es ${OS[64]}.";;

          <65-128>)

                    echo "El sistema operativo en ${a} es ${OS[128]}.";;

         <129-254>)

                    echo "El sistema operativo en ${a} es ${OS[254]}.";;

                 *)

                    echo "El sistema operativo en ${a} no se ha podido identificar.";;

    esac

    unset TTL;

done

unset a;

}


function WebWrap(){                                                                                                                                                                                                                                     

	for z in $(egrep tcp ${2}.nmap | egrep http | cut -d " " -f1 | tr -d '[A-Z]|[a-z]/'| egrep '^[0-9]|[0-9]$'); do
      
				                                                                                                                   
			    if [[ ${z} != "443" ]]; then URL="http://"${1}":${z}/"; else URL="https://"${1}":${z}/" fi

          whatweb ${URL} | tee --append ${3};
		                                                                                                               
			    echo "puerto ${z} detectado, corriendo un enumerador de directorios a ${2} en ${URL}" | tee --append ${3};          

          echo -e " \r\n \r\n " | tee --append ${3};
				                                                                                                                   
			    #sudo gobuster dir --url ${URL} -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o ${2}.gobuster.txt -k
          sudo dirsearch -u ${URL} -e py,txt,php,pdf,zip,md,log,htm,html,xhtml,asp,aspx,tar,tar.gz,jsp,war,jar,js,css -f -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 100 --skip-on-status=404 --format plain -o ${2}.dirsearch.txt;

				                                                                                                                   
			    echo -e " \r\n \r\n " | tee --append ${3};                                                                        
				                                                                                                                   
			    [[ -f ${2}.dirsearch.txt ]] && cat ${2}.dirsearch.txt >> ${3};                                                      
				                                                                                                                   
			    sudo nikto -update;                                                                                                    
				                                                                                                                   
			    echo -e " \r\n \r\n " | tee --append ${3};                                                                        
				                                                                                                                   
			    sudo nikto -host ${URL} -C all | tee --append ${3};                                                                      
				                                                                                                                   
			    echo -e " \r\n \r\n " | tee --append  ${3};


		for i in Wordpress WordPress wordpress wordPress; do 
				                                                                                                        
			if $(fgrep ${i} ${2}.nmap > /dev/null); then                                                                                                                                                                   
				                                                                                                                   
				  sudo wpscan --url ${URL} --enumerate p | tee --append ${3};                                                     
				  echo -e " \r\n \r\n " | tee --append ${3};         
				                                                                                                                                                              
			      break;                                                                                                                  
				                                                                                                                   
			 else                                                                                                                       
				                                                                                                                   
			      continue;                                                                                                                
				                                                                                                                  
			 fi                                                                                                                         
				                                                                                                                  
		done                                                                                                                         
		
    unset i

    for k in Drupal drupal; do 
      
      if $(fgrep ${k} ${2}.nmap > /dev/null); then

        sudo droopescan scan moodle -u ${URL} -t 10 | tee --append ${3};
        echo -e " \r\n \r\n " | tee --append ${3};
        break;        
    
      else
       
        continue;
      
      fi
  
    done  

		unset k

    for f in Moodle moodle; do

      if $(fgrep ${f} ${2}.nmap > /dev/null); then
  
        sudo python3 /home/kali/Tools/moodlescan/moodlescan.py -k -u ${URL} | tee --append ${3};
        echo -e " \r\n \r\n " | tee --append ${3};
        break;
  
      else
  
         continue;
 
      fi
 
    done

    unset f

	done

	unset URL
	unset z
}

function SmbWrap(){

for h in $(egrep tcp ${2}.nmap | egrep 'smb' | cut -d " " -f1 | tr -d '[A-Z]|[a-z]/'| egrep '^[0-9]|[0-9]$'); do

  smbmap -H ${1} | tee -a ${3}


  if $(smbclient -U Anonymous -L //${1} | tee -a ${3}); then

    continue;

  else 
    
    if $(smbclient --list //${1}/ -U "" | tee -a ${3}); then

        smbclient --list //${1}/ -N  | tee -a ${3}

    fi

  fi

done

unset h

thunar smb://${1}/

}

function autopwn(){

if [[ ${#} -eq 2 ]]; then

OLDDIR=$(pwd)

DIR="${HOME}/Documents/Machines/${2}"

REPORT="${DIR}/report/${2}.report.txt"


	if [[ -d ${DIR} ]]; then

		echo el proyecto ${2} ya existe.

	else

    echo creando el proyecto ${2} en ${HOME}/Documents/.
    
    mkdir -vp ${DIR}/scripts

    mkdir -vp ${DIR}/files

    mkdir -vp ${DIR}/report

	fi

		cd ${DIR}
    
    OS_Discovery ${1} | tee --append ${REPORT};

    echo -e " \r\n \r\n " | tee --append ${REPORT};

		sudo nmap -vvvv -A -Pn -sS -sV -oA ${2} --min-rate 300 --script=default,vuln,http-enum,"smb-vuln*",smb-enum-shares.nse,smb-enum-users.nse ${1} | tee --append ${REPORT};

    sleep 2s

		if $(egrep commonName ${2}.nmap > /dev/null); then

			DOMINIO=$( egrep commonName ${2}.nmap | awk -F: '{print $3}'| sed -e 's/commonName=//g' )

			echo "\n\a Hemos detectado algo de interes, si es un dominio utiliza el comando (sudo echo ${1} ${2}.htb >> /etc/hosts)" | tee --append ${REPORT};
      
      unset DOMINIO

			if $(egrep "Subject Alternative Name:" ${2}.nmap > /dev/null) ; then

				DOMINIO2=$( egrep "Subject Alternative Name:" ${2}.nmap | awk -F: '{print $3}'| sed -e 's/commonName=//g' )

				echo "\n\a Hemos detectado algo, si es un subdominio utiliza el comando (sudo echo ${1} ${2}.htb >> /etc/hosts)" | tee --append ${REPORT};

        unset DOMINIO2

			fi

		else

			if $(fgrep ${1} /etc/hosts > /dev/null) ; then echo "${1} ${2}.htb ya existe en /etc/hosts" ; else echo "${1} ${2}.htb" | sudo tee -a /etc/hosts > /dev/null ; fi

		fi

    sleep 2s

		for a in HTTPD httpd Apache IIS apache iis nginx Nginx gunicorn Gunicorn; do
			if $(egrep ${a} ${2}.nmap > /dev/null); then

				echo "Tecnologia ${a} encontrada!" | tee --append ${REPORT};
        WebWrap ${1} ${2} ${REPORT};
        break;

			else

				echo "Tecnologia ${a} no encontrada!" | tee --append ${REPORT};
        continue;

			fi
		done

    unset a
    
    for g in smb Smb SMB samba SAMBA Samba; do

      if $(egrep ${g} ${2}.nmap > /dev/null); then

          echo "Tecnologia ${g} encontrada!" | tee --append ${REPORT};
          SmbWrap ${1} ${2} ${REPORT};
          break;

      else

          echo "Tecnologia ${a} no encontrada!" | tee --append ${REPORT};
          continue;
  
     fi
   done
 
   unset g

    echo -e " \r\n \r\n " | tee --append ${REPORT};                                                                     

		searchsploit --nmap ${2}.xml | tee --append ${REPORT};

	cd ${OLDDIR} && cat ${REPORT};
else

	echo aun no has proporcionado ningun parametro o numero de parametros incorrecto.

fi

unset OLDDIR                                                                                                                                                                                                                                                
unset DIR
unset REPORT

}


# Finalize Powerlevel10k instant prompt. Should stay at the bottom of ~/.zshrc.
(( ! ${+functions[p10k-instant-prompt-finalize]} )) || p10k-instant-prompt-finalize
source ${ZSH}/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ${ZSH}/custom/themes/powerlevel10k/.p10k.zsh ]] && source ${ZSH}/custom/themes/powerlevel10k/.p10k.zsh

#tmux -2
#tmux new -s HTB$(date | awk '{ print $5 }'| cut -c 7-8)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="${PATH}:/home/kali/.cargo/bin"
