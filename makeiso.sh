echo Installing Dependancies

pacman -Syu python3 python-pytest pkgconf git sequoia-sq archiso micro grub base-devel

echo Adding Keys

git clone https://aur.archlinux.org/archlinux32-keyring.git

makepkg -si ./archlinux-32-keyring/


echo Making ISO...
mkdir -p out/
mkdir -p work/
mkarchiso -v -o out/ -w work/ -L Arch32ISO -m iso baseline/
