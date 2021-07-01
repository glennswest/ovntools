# OVN Tools
A Set of tools to get and set values in ovn.

## Election Timers - Northbound
getnbdbtimers.sh - Get election timers from all 3 masters
setnbdbtimers.sh - Sets election timers on all 3 masters

Note: I intentionally set on all 3 and ignore error, as you may be in split brain

## Election Timers - Southbound
getsbdbtimers.sh - Get election timers from all 3 masters
setsbdbtimers.sh - Sets election timers on all 3 masters

## General OVN Status
getnbvalues.sh - Get OVN Northbound leadership, and general status
getsbvalues.sh - Get OVN Southbound leadership, and general status

