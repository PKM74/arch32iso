echo Installing Dependancies

sudo pacman -Sy --noconfirm python3 python-pytest pkgconf git sequoia-sq archiso micro grub base-devel

echo Adding Keys

git clone https://aur.archlinux.org/archlinux32-keyring.git
cd archlinux32-keyring
sudo useradd build -G wheel,storage
sudo chown -R build ./*
sudo su build -c 'makepkg -si --skippgpcheck --noconfirm'
cd ..
sudo mv ./archlinux32-keyring/src/archlinux32-keyring*/archlinux32.pgp ./archlinux32-keyring/src/archlinux32-keyring*/pubring.pgp
sudo pacman-key --import ./archlinux32-keyring/src/archlinux32-keyring*/pubring.pgp
sudo pacman-key --init
sudo pacman-key --populate


echo Making ISO...
mkdir -p out/
mkdir -p work/
sudo mkarchiso -v -o out/ -w work/ -L Arch32MINI -P Xircon -m iso mini/

echo Cleanup
sudo rm -rf work/
rm -rf archlinux32-keyring/
