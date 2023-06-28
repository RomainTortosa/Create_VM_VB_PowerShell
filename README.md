

### Create VM VB PowerShell
Assurez-vous de personnaliser les variables $VMName, $VDIPath et $DiskSize en fonction de vos besoins. $VMName correspond au nom de la machine virtuelle que vous souhaitez créer, $VDIPath correspond au chemin d'accès complet pour le fichier VDI du disque dur virtuel, et $DiskSize est la taille du disque dur virtuel en mégaoctets (Mo).

Vous devez également spécifier le chemin d'accès approprié à l'exécutable VBoxManage.exe de VirtualBox en utilisant la variable $VBoxPath.

Une fois que vous avez personnalisé le script, enregistrez-le avec une extension .ps1, puis exécutez-le à partir de PowerShell en tant qu'administrateur pour créer la machine virtuelle avec VirtualBox.

N'oubliez pas d'ajuster le script en fonction de vos besoins spécifiques, par exemple, en configurant des options supplémentaires telles que le réseau, le démarrage depuis un ISO, etc.


### Create VM VB Win Ansible
Dans ce playbook, vous devez personnaliser les variables vboxmanage_path, vm_name, vdi_path et disk_size en fonction de vos besoins. vboxmanage_path doit contenir le chemin d'accès complet vers l'exécutable VBoxManage.exe de VirtualBox. vm_name est le nom de la machine virtuelle à créer, vdi_path est le chemin d'accès complet pour le fichier VDI du disque dur virtuel, et disk_size est la taille du disque dur virtuel en mégaoctets (Mo).

Assurez-vous que VirtualBox est installé et fonctionnel sur la machine Windows où vous exécutez le playbook Ansible. Vous devez également vous assurer que vous disposez des privilèges nécessaires pour exécuter les commandes PowerShell, notamment pour créer et configurer des machines virtuelles.

Pour exécuter le playbook Ansible, utilisez la commande suivante :

shell
Copy code
ansible-playbook create_vm.yml
Cela exécutera le playbook et créera la machine virtuelle avec VirtualBox sur Windows en utilisant les commandes PowerShell appropriées.

### Create VM Hyper V PowerShell
Assurez-vous de personnaliser les valeurs des variables en fonction de vos besoins. Le script crée une nouvelle VM avec un nom donné, une certaine quantité de mémoire (en bytes), un chemin pour le disque virtuel (VHD) et un commutateur virtuel spécifié. Ensuite, il démarre la VM.

N'oubliez pas d'exécuter ce script en tant qu'administrateur pour avoir les autorisations nécessaires pour gérer Hyper-V.
