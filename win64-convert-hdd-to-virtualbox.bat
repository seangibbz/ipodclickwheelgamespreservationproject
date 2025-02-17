@echo off
cd /d %~dp0
echo Let's convert the Qemu Virtual HDD (.qcow2) into a VirtualBox Virtual HDD (.vdi)

:: Check if the win64-virtualbox directory exists, and create it if it doesn't
if not exist "win64-virtualbox" (
    echo The directory "win64-virtualbox" does not exist. Creating it now...
    mkdir "win64-virtualbox"
)

if exist "iPod.Clickwheel.Games.Preservation.Project.utm/iPod Clickwheel Games Preservation Project.utm/Data/A973B7BF-F17A-44C5-A6D7-B6D819938FDC.qcow2" (
	echo Using path: iPod.Clickwheel.Games.Preservation.Project.utm/iPod Clickwheel Games Preservation Project.utm/Data/A973B7BF-F17A-44C5-A6D7-B6D819938FDC.qcow2
	echo =================================================================================================
	echo In progress... don't close this console window until it's finished. This step can take a while...
	"win64-qemuimg/qemu-img.exe" convert -p -f qcow2 -O vdi "iPod.Clickwheel.Games.Preservation.Project.utm/iPod Clickwheel Games Preservation Project.utm/Data/A973B7BF-F17A-44C5-A6D7-B6D819938FDC.qcow2" "win64-virtualbox/iPod Clickwheel Games Preservation Project.vdi"
) else (
	if exist "iPod Clickwheel Games Preservation Project.utm/Data/A973B7BF-F17A-44C5-A6D7-B6D819938FDC.qcow2" (
		echo Using path: iPod Clickwheel Games Preservation Project.utm/Data/A973B7BF-F17A-44C5-A6D7-B6D819938FDC.qcow2
		echo =================================================================================================
		echo In progress... don't close this console window until it's finished. This step can take a while...
		"win64-qemuimg/qemu-img.exe" convert -p -f qcow2 -O vdi "iPod Clickwheel Games Preservation Project.utm/Data/A973B7BF-F17A-44C5-A6D7-B6D819938FDC.qcow2" "win64-virtualbox/iPod Clickwheel Games Preservation Project.vdi"
	) else (
		echo ERROR: Can't find "iPod Clickwheel Games Preservation Project.utm" in your current folder
		PAUSE
	)
)
