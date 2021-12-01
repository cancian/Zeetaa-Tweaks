ui_print "  __________ ____  "
ui_print " |__  /_   _/ ___| "
ui_print "   / /  | | \___ \ "
ui_print "  / /_  | |  ___) |"
ui_print " /____| |_| |____/ "
ui_print "                           "
sleep 0.2
ui_print " "
ui_print "The ZeetaaTweaks for all Devices"
sleep 0.2
ui_print " "
ui_print "👨‍💻 Checking Phone Information "
sleep 0.2
ui_print " "
ui_print "📱Processor : $(getprop ro.product.board) "
sleep 0.2
ui_print " "
ui_print "📱 Kernel Name : $(uname -r) "
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
