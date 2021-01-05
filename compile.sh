echo "███████╗███████╗███████╗████████╗ █████╗  █████╗ "
echo "╚══███╔╝██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗"
echo "  ███╔╝ █████╗  █████╗     ██║   ███████║███████║"
echo " ███╔╝  ██╔══╝  ██╔══╝     ██║   ██╔══██║██╔══██║"
echo "███████╗███████╗███████╗   ██║   ██║  ██║██║  ██║"
echo "╚══════╝╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝"

# colorize and add text parameters
grn=$(tput setaf 2)             # green
yellow=$(tput setaf 3)          # yellow
bldgrn=${txtbld}$(tput setaf 2) # bold green
red=$(tput setaf 1)             # red
txtbld=$(tput bold)             # bold
bldblu=${txtbld}$(tput setaf 4) # bold blue
blu=$(tput setaf 4)             # blue
txtrst=$(tput sgr0)             # reset
blink=$(tput blink)             # blink

DATE_START=$(date +"%s")
echo -e "${bldgrn}"

rm -f /data/data/com.termux/files/home/ubuntu-in-termux/ubuntu-fs/root/zts/*.zip;
zip -r9 ZeetaaTweaksV13Stable.zip * -x .git README.md *placeholder | tee zip.log

echo "-------------------"
echo "Build Complet in:"
echo "-------------------"
echo -e "${txtrst}"


DATE_END=$(date +"%s")
DIFF=$(($DATE_END - $DATE_START))
echo "Time: $(($DIFF / 60)) minutes(i) and $(($DIFF % 60)) seconds."

echo "███████╗███████╗███████╗████████╗ █████╗  █████╗ "
echo "╚══███╔╝██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗"
echo "  ███╔╝ █████╗  █████╗     ██║   ███████║███████║"
echo " ███╔╝  ██╔══╝  ██╔══╝     ██║   ██╔══██║██╔══██║"
echo "███████╗███████╗███████╗   ██║   ██║  ██║██║  ██║"
echo "╚══════╝╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝"