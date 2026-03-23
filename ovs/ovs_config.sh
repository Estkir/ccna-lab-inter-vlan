# Supprimer anciens tags / trunks si nécessaire
ovs-vsctl clear port eth0 trunks
ovs-vsctl clear port eth1 tag
ovs-vsctl clear port eth2 tag
ovs-vsctl clear port eth3 tag

# Config VyOS port en trunk
ovs-vsctl set port eth0 trunks=10,20,30

# Config ports des PCs en accès
ovs-vsctl set port eth1 tag=10   # PC1
ovs-vsctl set port eth2 tag=20   # PC2
ovs-vsctl set port eth3 tag=30   # PC3

# Vérifier configuration
ovs-vsctl show
