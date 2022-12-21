#!binbash
declare -A osInfo;
osInfo[etcdebian_version]=apt
osInfo[etcalpine-release]=apk
osInfo[etccentos-release]=yum
osInfo[etcfedora-release]=dnf

for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        package_manager=${osInfo[$f]}
    fi
done

sudo $package_manager install python3