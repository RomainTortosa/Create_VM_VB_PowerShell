# Paramètres de la VM
$vmName = "MaVM"
$vmMemory = 4GB
$vmVHDPath = "C:\Emplacement\De\MonVHD.vhdx"
$vmSwitch = "NomDuSwitch"

# Création de la nouvelle VM
New-VM -Name $vmName -MemoryStartupBytes $vmMemory -NewVHDPath $vmVHDPath -NewVHDSizeBytes 50GB

# Définition du commutateur virtuel pour la VM
$vmNetworkAdapter = Get-VMNetworkAdapter -VMName $vmName
Connect-VMNetworkAdapter -VMNetworkAdapter $vmNetworkAdapter -SwitchName $vmSwitch

# Démarrage de la VM
Start-VM -Name $vmName
