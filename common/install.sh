ui_print "  __________ ____  "
ui_print " |__  /_   _/ ___| "
ui_print "   / /  | | \___ \ "
ui_print "  / /_  | |  ___) |"
ui_print " /____| |_| |____/ "
ui_print "                           "
sleep 0.2
ui_print " "
ui_print "The ZeetaaTweaks unlocks the full power ⚡ of all Devices"
sleep 0.2
ui_print " "
ui_print "👨‍💻 Checking Phone Information "
sleep 0.2
ui_print " "
ui_print "📱Processor : $(getprop ro.product.board) "
sleep 0.2
ui_print " "
ui_print "📱 Kernel Name : $(cat /proc/version) "
sleep 0.2
ui_print " "
ui_print "📱Arm Version : $(getprop ro.product.cpu.abi) "
sleep 0.2
ui_print " "
ui_print "📱Board Platform : $(getprop ro.board.platform) "
sleep 0.2
ui_print " "
ui_print "📱Manufacturer : $(getprop ro.product.system.manufacturer) "
sleep 0.2
ui_print " "
ui_print "🕒 sᴇᴛᴛɪɴɢ ᴛᴡᴇᴀᴋs"
sleep 0.5
ui_print " "
ui_print "- Extracting module files"
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'lavender/*' -d $TMPDIR >&2
unzip -o "$ZIPFILE" 'audio/*' -d $TMPDIR >&2
unzip -o "$ZIPFILE" 'gmszt/*' -d $TMPDIR >&2
unzip -o "$ZIPFILE" 'mode/*' -d $TMPDIR >&2
mkdir -p $MODPATH/system/bin
mkdir -p $MODPATH/system/etc/sysconfig
ui_print " "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print "      Select The Android Version        "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. Q&R (10/11)"
ui_print "  2. Pie (9)"
ui_print "  3. Oreo (8.0/8.1)"
ui_print "  4. Nougat (7.0/7.1)"
ui_print "  5. Marshmallow (6.0)"
ui_print " "
ui_print "  Select: "
AV=1
while true; do
ui_print "   $AV"
	if $VKSEL; then
		AV=$((AV + 1))
	else 
		break
	fi
	if [ $AV -gt 5 ]; then
		AV=1
	fi
done
ui_print " "
ui_print "  Selected: $AV"
#
case $AV in
 1 ) FCTEXTAD1="- Q&R (10/11)"; cp -af $TMPDIR/gmszt/10/google.xml $MODPATH/system/etc/sysconfig;;
 2 ) FCTEXTAD1="- Pie (9)"; cp -af $TMPDIR/gmszt/9/google.xml $MODPATH/system/etc/sysconfig;;
 3 ) FCTEXTAD1="- Oreo (8)"; cp -af $TMPDIR/gmszt/8/google.xml $MODPATH/system/etc/sysconfig;;
 4 ) FCTEXTAD1="- Nougat (7)"; cp -af $TMPDIR/gmszt/7/google.xml $MODPATH/system/etc/sysconfig;;
 5 ) FCTEXTAD1="- Marshmallow (6)"; cp -af $TMPDIR/gmszt/6/google.xml $MODPATH/system/etc/sysconfig;;
esac
ui_print " "
ui_print "- Android Version: $FCTEXTAD1 "
sleep 0.5
ui_print " "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print "      You  Want Thermals for Redmi Note 7?   🚀     "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. ✅ Yes "
ui_print "  2. ❌ No "
ui_print " "
ui_print "  Select: "
TH=1
while true; do
ui_print "   $TH"
	if $VKSEL; then
		TH=$((TH + 1))
	else 
		break
	fi
	if [ $TH -gt 2 ]; then
		TH=1
	fi
done
ui_print " "
ui_print "  Selected: $TH"
#
case $TH in
 1 ) FCTEXTAD3="Enable"; cp -af $TMPDIR/lavender/* $MODPATH/system;;
 2 ) FCTEXTAD3="Disable"; rm -rf $TMPDIR/lavender;;
esac
ui_print " "
ui_print "- Thermal Engine Mode: $FCTEXTAD3 "
sleep 0.5
ui_print " "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print "          Credits To Masik Miui "
ui_print "      You Want Masik Pulse Audio?   🔊     "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. ✅ Yes ( Lavender ONLY ) "
ui_print "  2. ❌ No "
ui_print " "
ui_print "  Select: "
AD=1
while true; do
ui_print "   $AD"
	if $VKSEL; then
		AD=$((AD + 1))
	else 
		break
	fi
	if [ $AD -gt 2 ]; then
		AD=1
	fi
done
ui_print " "
ui_print "  Selected: $AD"
#
case $AD in
 1 ) FCTEXTAD4="Enable"; cp -af $TMPDIR/audio/* $MODPATH/system;;
 2 ) FCTEXTAD4="Disable"; rm -rf $TMPDIR/audio;;
esac
ui_print " "
ui_print "- Sound Mode: $FCTEXTAD4"
sleep 0.5
ui_print " "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print "     All Credits to AkiraSuper "
ui_print "      SELinux Mode Changer        "
ui_print "       Select Default for safety! "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. Enforcing"
ui_print "  2. Permissive"
ui_print "  3. Default"
ui_print " "
ui_print "  Select: "
SL=1
while true; do
ui_print "   $SL"
	if $VKSEL; then
		SL=$((SL + 1))
	else 
		break
	fi
	if [ $SL -gt 3 ]; then
		SL=1
	fi
done
ui_print ""
ui_print "  SELinux Mode: $SL"
#
case $SL in
	1 ) FCTEXTAD5="Enforcing"; sed -i "s/<SELINUX_MODE>/1/g" $MODPATH/post-fs-data.sh;;
	2 ) FCTEXTAD5="Permissive"; sed -i "s/<SELINUX_MODE>/0/g" $MODPATH/post-fs-data.sh;;
	3 ) FCTEXTAD5="Default"; sed -i "s/<SELINUX_MODE>/<SELINUX_MODE>/g" $MODPATH/post-fs-data.sh;;
esac
ui_print ""
ui_print "- SELinux Mode: $FCTEXTAD5"
sleep 0.5
ui_print " "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print "      You  Want Analytics Remover?   🔋     "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. ✅ Yes "
ui_print "  2. ❌ No "
ui_print " "
ui_print "  Select: "
AL=1
while true; do
ui_print "   $AL"
	if $VKSEL; then
		AL=$((AL + 1))
	else 
		break
	fi
	if [ $AL -gt 2 ]; then
		AL=1
	fi
done
ui_print " "
ui_print "  Selected: $AL"
#
case $AL in
 1 ) FCTEXTAD6="Enable"; cp -af $TMPDIR/mode/analytics $MODPATH/system/bin;;
 2 ) FCTEXTAD6="Disable"; rm -rf $TMPDIR/mode/analytics;;
esac
ui_print ""
ui_print "- Analytics Remover Mode: $FCTEXTAD5"

sleep 0.5
ui_print " "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print "       You Want Gms Blocker?  🔋     "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. ✅ Yes "
ui_print "  2. ❌ No "
ui_print " "
ui_print "  Select: "
GS=1
while true; do
ui_print "   $GS"
	if $VKSEL; then
		GS=$((GS + 1))
	else 
		break
	fi
	if [ $GS -gt 2 ]; then
		GS=1
	fi
done
ui_print " "
ui_print "  Selected: $GS"
#
case $GS in
 1 ) FCTEXTAD6="Yes"; cp -af $TMPDIR/mode/gms $MODPATH/system/bin;;
 2 ) FCTEXTAD6="No"; rm -rf $TMPDIR/mode/gms;;
esac
ui_print ""
ui_print "- Analytics Remover Mode: $FCTEXTAD6"

ui_print " "
ui_print "    ×××××××××××××××××××××××××××××××××××××××××××××"
ui_print "       You Want Optimized Universal Thermal Mode?  🎮     "
ui_print "    ×××××××××××××××××××××××××××××××××××××××××××××"
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. ✅ Yes "
ui_print "  2. ❌ No "
ui_print " "
ui_print "  Select: "
UT=1
while true; do
ui_print "   $UT"
	if $VKSEL; then
		UT=$((UT + 1))
	else 
		break
	fi
	if [ $UT -gt 2 ]; then
		UT=1
	fi
done
ui_print " "
ui_print "  Selected: $UT"
#
case $UT in
 1 ) FCTEXTAD7="OptimizedUniversalThermal Enabled"; cp -af $TMPDIR/mode/OTUe $MODPATH/system/bin;;
 2 ) FCTEXTAD7="OptimizedUniversalThermal Disabled"; rm -rf $TMPDIR/mode;;
esac
ui_print " "
ui_print "- Mode: $FCTEXTAD7 "

ui_print " "
ui_print "    ××××××××××××××××××××××××××××××××××××××××"
ui_print "       You Want Debugging logs removed?  🔋     "
ui_print "    ××××××××××××××××××××××××××××××××××××××××"
ui_print "         Note: If u select yes will reduce "
ui_print "         overhead without losing perf "
ui_print "         Thx Alot to @Bug_Founder_S10_S8 "
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. ✅ Yes "
ui_print "  2. ❌ No "
ui_print " "
ui_print "  Select: "
DB=1
while true; do
ui_print "   $DB"
	if $VKSEL; then
		DB=$((DB + 1))
	else 
		break
	fi
	if [ $DB -gt 2 ]; then
		DB=1
	fi
done
ui_print " "
ui_print "  Selected: $DB"
#
case $DB in
 1 ) FCTEXTAD8="Yes"; cp -af $TMPDIR/mode/debugging $MODPATH/system/bin;;
 2 ) FCTEXTAD8="No"; rm -rf $TMPDIR/mode/debugging;;
esac
ui_print ""
ui_print "- Debugging Mode: $FCTEXTAD8"

sleep 5

sleep 1
ui_print " "
ui_print " 🔥 𝗣𝗲𝗿𝗳𝗼𝗿𝗺𝗮𝗻𝗰𝗲 𝗜𝗺𝗽𝗿𝗼𝘃𝗲𝗱"
sleep 0.5
ui_print " "
ui_print " 🔋 𝗕𝗮𝘁𝘁𝗲𝗿𝘆 𝗜𝗺𝗽𝗿𝗼𝘃𝗲𝗱"
sleep 0.5
ui_print " "
ui_print " 🎮 𝗚𝗮𝗺𝗶𝗻𝗴 𝗮𝗻𝗱 𝗦𝗲𝗻𝘀𝗶𝘃𝗶𝘁𝘆 𝗶𝗺𝗽𝗿𝗼𝘃𝗲𝗱"
sleep 0.5
ui_print " "
sleep 1