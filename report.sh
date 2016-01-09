#!/bin/bash

# System Report script for Gambas
# Joshua Higgins
# GPL'd

# 20/01/2010 - Integration into Gambas IDE
# 17/01/2011 - Add detected desktop
# 05/09/2011 - Support for LXDE

# echo "System Report for Gambas"

# ---------------- DETECT DISTRIBUTION VERSION

# Detection of following distro's is supported
# To add dectection of your favourite distro, format as follows:
# distroshortname:/path/to/version/file
# (generic:/etc/issue should be the LAST entry in the list, as this is the fallback)

distros="lsb-release:/etc/lsb-release vector:/etc/vector-version slackware:/etc/slackware-version debian:/etc/debian_version redhat:/etc/redhat-release arch:/etc/arch-release SuSE:/etc/SuSE-release gentoo:/etc/gentoo-release conectiva:/etc/conectiva-release mandriva:/etc/mandriva-release mandrake:/etc/mandrake-release pardus:/etc/pardus-release kanotix:/etc/kanotix-release generic-undetected:/etc/issue"

for distro in $distros
do

  path="`echo $distro  | awk -F: '{print $2}'`"
  vendor="`echo $distro | awk -F: '{print $1}'`"
  
  # Ubuntu and Mandriva now give lsb-release files, which needs the info extracting from
  
  if [ "$vendor" = "lsb-release" ]; then
    release="`cat $path 2>/dev/null | grep DESCRIPTION | awk -F= '{print $2}'`"
    # this is a bit ugly, because we overwrite the vendor variable, but I can't see any other way
    vendor="`cat $path 2>/dev/null | grep DISTRIB_ID | awk -F= '{print $2}'`"
  else
    release="`cat $path 2>/dev/null`"
  fi
  
  if [ "$release" = "" ]; then
    message="Still not here..."
    # Check if we've missed Arch
    if [ -e /etc/arch-release ]; then
      vendor="arch"
      release="n/a"
      #echo "Detected distro: $vendor"
      break
    fi
  else
    #echo "Found distro information at $path!"
    #echo "Detected distro: $vendor"
    break
  fi
  
done

# ---------------- DETECT OS DETAILS

OS=$(uname)
KERNEL=$(uname -r)

# ---------------- DETECT SYSTEM DETAILS


if [ "$OS" = "FreeBSD" ]; then
  # Added for FreeBSD RAM detection 
  RAM=$(echo `sysctl -n hw.physmem` / 1024 | bc -l | cut -d . -f1)" Kb"
else
  RAM="`cat /proc/meminfo | grep MemTotal | awk -F: '{print $2}' | sed -e 's/^[ \t]*//'`"
fi

ARCH=$(uname -m)

# ---------------- DETECT GAMBAS DETAILS

GAMBAS=$(gbx -V 2>/dev/null)
GAMBAS2=$(gbx2 -V 2>/dev/null)
GAMBAS3=$(gbx3 -V 2>/dev/null)

GAMBASPATH=$(which gbx 2>/dev/null)
GAMBAS2PATH=$(which gbx2 2>/dev/null)
GAMBAS3PATH=$(which gbx3 2>/dev/null)

# ---------------- DETECT CURRENT DESKTOP

DESKTOP=Unknown
if [ x"$KDE_FULL_SESSION" = x"true" ]; then 
  DESKTOP=KDE3;
  if [ x"$KDE_SESSION_VERSION" = x"4" ]; then
    DESKTOP=KDE4
  fi
elif [ x"$GNOME_DESKTOP_SESSION_ID" != x"" ]; then DESKTOP=Gnome;
elif `dbus-send --print-reply --dest=org.freedesktop.DBus /org/freedesktop/DBus org.freedesktop.DBus.GetNameOwner string:org.gnome.SessionManager > /dev/null 2>&1` ; then DESKTOP=Gnome;
elif xprop -root _DT_SAVE_MODE 2> /dev/null | grep ' = \"xfce4\"$' >/dev/null 2>&1; then DESKTOP=Xfce;
elif [ x"$DESKTOP_SESSION" == x"LXDE" ]; then DESKTOP=LXDE;
elif [ x"$E_BIN_DIR" != x"" ]; then DESKTOP=Enlightenment;
elif [ x"$WMAKER_BIN_NAME" != x"" ]; then DESKTOP=WindowMaker;
fi

# ---------------- PRINT ALL TO FILE

echo "[System]"
echo "OperatingSystem=$OS"
echo "Kernel=$KERNEL"
echo "Architecture=$ARCH"
echo "Memory=$RAM"
echo "DistributionVendor=$vendor"
echo "DistributionRelease=$release"
echo "Desktop=$DESKTOP"
echo ""

if [ "$GAMBAS" != "" ]; then
  echo "[Gambas 1]"
  echo "Version=$GAMBAS"
  echo "Path=$GAMBASPATH"
  echo
fi

if [ "$GAMBAS2" != "" ]; then
  echo "[Gambas 2]"
  echo "Version=$GAMBAS2"
  echo "Path=$GAMBAS2PATH"
  echo
fi

if [ "$GAMBAS3" != "" ]; then
  echo "[Gambas 3]"
  echo "Version=$GAMBAS3" 
  echo "Path=$GAMBAS3PATH" 
  echo
fi
