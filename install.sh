#!/bin/bash

clear

cat << "TITLE"

     ██████╗ ███████╗██████╗  █████╗ ███████╗ █████╗ ███████╗██╗      ██████╗  █████╗ 
    ██╔═████╗╚════██║██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔════╝██║     ██╔═████╗██╔══██╗
    ██║██╔██║    ██╔╝██████╔╝███████║█████╗  ███████║█████╗  ██║     ██║██╔██║╚█████╔╝
    ████╔╝██║   ██╔╝ ██╔══██╗██╔══██║██╔══╝  ██╔══██║██╔══╝  ██║     ████╔╝██║██╔══██╗
    ╚██████╔╝   ██║  ██║  ██║██║  ██║██║     ██║  ██║███████╗███████╗╚██████╔╝╚█████╔╝
     ╚═════╝    ╚═╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝  ╚════╝ 
        Instalação do interface feito por 07Rafael08

TITLE

echo "  Reinstalando os pacotes:    "
echo "------------------------------"
echo ""

sudo pacman -Syu

sleep 2

clear

cat << "TITLE"

     ██████╗ ███████╗██████╗  █████╗ ███████╗ █████╗ ███████╗██╗      ██████╗  █████╗ 
    ██╔═████╗╚════██║██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔════╝██║     ██╔═████╗██╔══██╗
    ██║██╔██║    ██╔╝██████╔╝███████║█████╗  ███████║█████╗  ██║     ██║██╔██║╚█████╔╝
    ████╔╝██║   ██╔╝ ██╔══██╗██╔══██║██╔══╝  ██╔══██║██╔══╝  ██║     ████╔╝██║██╔══██╗
    ╚██████╔╝   ██║  ██║  ██║██║  ██║██║     ██║  ██║███████╗███████╗╚██████╔╝╚█████╔╝
     ╚═════╝    ╚═╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝  ╚════╝ 
        Instalação do interface feito por 07Rafael08

TITLE

cat << YAY

Posso instalar o yay?
    1) Sim
    2) Não

YAY

while true; do
    read -p "Escolhe um número: " install_yay
    case $install_yay in
        1|2) break ;;
        *) 
            echo ""
            echo "  Opção inválida  "
            echo "------------------"
            echo ""
            ;;
    esac
done

case $install_yay in 
    1)
        echo ""
        echo "   Instalando yay & git   "
        echo "--------------------------"
        echo ""
        sudo pacman -S git
        mkdir tmp
        cd /tmp
        git clone https://aur.archlinux.org/yay.git yay
        cd yay
        makepkg -si
        ;;
    2)
        clear
        ;;
        
esac

clear

cat << "TITLE"

     ██████╗ ███████╗██████╗  █████╗ ███████╗ █████╗ ███████╗██╗      ██████╗  █████╗ 
    ██╔═████╗╚════██║██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔════╝██║     ██╔═████╗██╔══██╗
    ██║██╔██║    ██╔╝██████╔╝███████║█████╗  ███████║█████╗  ██║     ██║██╔██║╚█████╔╝
    ████╔╝██║   ██╔╝ ██╔══██╗██╔══██║██╔══╝  ██╔══██║██╔══╝  ██║     ████╔╝██║██╔══██╗
    ╚██████╔╝   ██║  ██║  ██║██║  ██║██║     ██║  ██║███████╗███████╗╚██████╔╝╚█████╔╝
     ╚═════╝    ╚═╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝  ╚════╝ 
        Instalação do interface feito por 07Rafael08

TITLE

cat << DRIVES

Escolha um número para instalar os drives:
    1) Intel
    2) AMD
    3) Nvidia
    4) Nenhuma

DRIVES



while true; do
    read -p "Escolhe um número: " opcoes_drives
    case $opcoes_drives in
        1|2|3|4) break ;;  # se for válida, sai do loop
        *) 
            echo ""
            echo "  Opção inválida  "
            echo "------------------"
            echo ""
            ;;
    esac
done

case $opcoes_drives in 
    1)
        echo ""
        echo "   Instalando os drives Intel   "
        echo "--------------------------------"
        echo ""
        sudo pacman -S mesa lib32-mesa vulkan-intel lib32-vulkan-intel intel-media-sdk libva-intel-driver lib32-libva-intel-driver
        ;;
    2)
        echo ""
        echo "   Instalando os drives AMD   "
        echo "------------------------------"
        echo ""
        sudo pacman -S mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau
        ;;
    3)
        echo ""
        echo "   Instalando os drives Nvidia   "
        echo "---------------------------------"
        echo ""
        sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils vulkan-icd-loader lib32-vulkan-icd-loader
        ;;
    4)
        echo ""
        echo "  Sem opções  "
        echo "--------------"
        echo ""
        ;;
esac

clear

cat << "TITLE"

     ██████╗ ███████╗██████╗  █████╗ ███████╗ █████╗ ███████╗██╗      ██████╗  █████╗ 
    ██╔═████╗╚════██║██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔════╝██║     ██╔═████╗██╔══██╗
    ██║██╔██║    ██╔╝██████╔╝███████║█████╗  ███████║█████╗  ██║     ██║██╔██║╚█████╔╝
    ████╔╝██║   ██╔╝ ██╔══██╗██╔══██║██╔══╝  ██╔══██║██╔══╝  ██║     ████╔╝██║██╔══██╗
    ╚██████╔╝   ██║  ██║  ██║██║  ██║██║     ██║  ██║███████╗███████╗╚██████╔╝╚█████╔╝
     ╚═════╝    ╚═╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝  ╚════╝ 
        Instalação do interface feito por 07Rafael08

TITLE

echo "  Começar instalação dos pacotes para o interface...  "
echo "------------------------------------------------------"
echo ""

sudo pacman -S brightnessctl hyprlock hyprpaper hypridle dunst fastfetch zsh waybar discord neovim rofi ttf-jetbrains-mono ttf-jetbrains-mono-nerd grim slurp hyprpicker firefox nautilus git zsh-autosuggestions zsh-syntax-highlighting
yay -S wlogout
sleep 3

echo "  Configurando o interface...  "
echo "-------------------------------"
echo ""

cp ~/dotfiles-07Rafael08/.config/hypr/* ~/.config/hypr/

mkdir ~/.config/waybar
cp ~/dotfiles-07Rafael08/.config/waybar/* ~/.config/waybar/

mkdir ~/.config/rofi
cp ~/dotfiles-07Rafael08/.config/rofi/* ~/.config/rofi/

mkdir ~/.config/fastfetch
cp ~/dotfiles-07Rafael08/.config/fastfetch/* ~/.config/fastfetch/

mkdir ~/.config/kitty
cp ~/dotfiles-07Rafael08/.config/kitty/* ~/.config/kitty/

cp -r ~/dotfiles-07Rafael08/Wallpapers ~/ 

cp ~/dotfiles-07Rafael08/.zshrc ~/

rm -rf ~/dotfiles-07Rafael08/

clear

cat << "TITLE"

     ██████╗ ███████╗██████╗  █████╗ ███████╗ █████╗ ███████╗██╗      ██████╗  █████╗ 
    ██╔═████╗╚════██║██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔════╝██║     ██╔═████╗██╔══██╗
    ██║██╔██║    ██╔╝██████╔╝███████║█████╗  ███████║█████╗  ██║     ██║██╔██║╚█████╔╝
    ████╔╝██║   ██╔╝ ██╔══██╗██╔══██║██╔══╝  ██╔══██║██╔══╝  ██║     ████╔╝██║██╔══██╗
    ╚██████╔╝   ██║  ██║  ██║██║  ██║██║     ██║  ██║███████╗███████╗╚██████╔╝╚█████╔╝
     ╚═════╝    ╚═╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝  ╚════╝ 
        Instalação do interface feito por 07Rafael08

TITLE

echo "  Começar reiniciar...  "
echo "------------------------"
echo ""

sleep 0.5
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1..."
sleep 1
reboot

