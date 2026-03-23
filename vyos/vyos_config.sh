# entrer en mode configuration
configure

# Sous-interfaces VLAN
set interfaces ethernet eth0 vif 10 address 192.168.10.1/24
set interfaces ethernet eth0 vif 20 address 192.168.20.1/24
set interfaces ethernet eth0 vif 30 address 192.168.30.1/24

# Ajouter description
set interfaces ethernet eth0 description "Trunk vers OVS"

# valider et sauvegarder
commit
save
exit

# Vérifier interfaces
show interfaces
