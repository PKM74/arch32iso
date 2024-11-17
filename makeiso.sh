echo Installing Dependancies

sudo pacman -Sy --noconfirm python3 python-pytest pkgconf git sequoia-sq archiso micro grub base-devel

echo Adding Keys

git clone https://aur.archlinux.org/archlinux32-keyring.git
cd archlinux32-keyring
makepkg -si --skippgpcheck
cd ..
sudo pacman-key --init
sudo pacman-key --populate

echo Making ISO...
mkdir -p out/
mkdir -p work/
sudo mkarchiso -v -o out/ -w work/ -L Arch32MINI -P Xircon -m iso baseline/

echo Cleanup
sudo rm -rf work/
rm -rf archlinux32-keyring/
