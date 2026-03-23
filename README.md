# Lab CCNA-style — Inter-VLAN Routing avec VyOS + Open vSwitch + VPCS

## Objectif
Déployer un lab réseau simple entreprise avec :
- 3 VLANs (10,20,30)
- Router-on-a-stick avec VyOS
- VLAN trunk sur OVS
- PCs VPCS pour tester le routage inter-VLAN

## Plan d'adressage

| VLAN | PC   | IP            | Gateway |
|------|------|---------------|---------|
| 10   | PC1  | 192.168.10.10 | 192.168.10.1 |
| 20   | PC2  | 192.168.20.10 | 192.168.20.1 |
| 30   | PC3  | 192.168.30.10 | 192.168.30.1 |

## Open vSwitch

```bash
# eth0 → trunk vers VyOS
ovs-vsctl set port eth0 trunks=10,20,30

# eth1 → PC1 VLAN10
ovs-vsctl set port eth1 tag=10

# eth2 → PC2 VLAN20
ovs-vsctl set port eth2 tag=20

# eth3 → PC3 VLAN30
ovs-vsctl set port eth3 tag=30
