Comandos para habilitar configuración en zsh.

Ojo no hagas esto con root
Hazlo con Kali
Si quieres agregar esta configuracion a root con links simbólicos será suficiente

Descárga todo en la ruta /home/Kali

instalaremos oh-my-zsh con los siguientes comandos.
estos son los diferentes metodos.


curl sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


wget sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


fetch sh -c "$(fetch -o - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



sudo chsh -s $(which zsh)

luego descargar el tema y configuracion de powerlevel10k el cual esta comprimido *.zip

mv powerlevel10k.zip ~/.oh-my-zsh/custom/themes && unzip powerlevel10k.zip && rm -rf powerlevel10k.zip

wget https://github.com/sharkdp/bat/releases/download/v0.17.1/bat_0.17.1_amd64.deb

wget https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd_0.19.0_amd64.deb

Sudo  dpkg  -i  *.deb

sudo apt install -y fzf

rm   *.deb


con estos comandos instalaremos la hack nerd font en nuestro os

mkdir ~/.fonts

cd  ~/.fonts

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip

unzip Hack.zip

rm Hack.zip

desde configuracion en tu  emulador de terminal debes de configurar la fuente hack nerd Font mono regular 

https://github.com/Sn0wFreeze/.ZSHRC/blob/main/qterminal.png

favor colocar el archivo *.opvn en la carpeta Documents para que el comando htb funcione correctamente.

sudo su -

configuracion root con links simbólicos:

ln -s /home/kali/.fonts .fonts

ln -s /home/kali/.oh-my-zsh .oh-my-zsh

ln -s /home/kali/.zshrc .zshrc


y listo!!

Comandos personalizados:
Zshconfig
Htb
Fzf-lovely
Rmk
Update
Upgrade
Instalar
Autopwn
hostedit
dnsorden
dnsedit
intedit
