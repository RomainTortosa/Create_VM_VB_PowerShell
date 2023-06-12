# Chemin d'accès à VirtualBox
$VBoxPath = "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe"

# Nom de la machine virtuelle
$VMName = "NewVM"

# Chemin d'accès au disque dur virtuel (VDI)
$VDIPath = "C:\Path\To\VirtualBox\NewVM.vdi"

# Taille du disque dur virtuel en Mo
$DiskSize = 10000

# Configuration de la machine virtuelle
& $VBoxPath createvm --name $VMName --register
& $VBoxPath modifyvm $VMName --memory 2048 --acpi on --boot1 dvd --nic1 nat

# Création du disque dur virtuel
& $VBoxPath createhd --filename $VDIPath --size $DiskSize

# Attachement du disque dur virtuel à la machine virtuelle
& $VBoxPath storagectl $VMName --name "SATA Controller" --add sata --controller IntelAhci
& $VBoxPath storageattach $VMName --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $VDIPath

# Démarrage de la machine virtuelle
& $VBoxPath startvm $VMName --type headless
