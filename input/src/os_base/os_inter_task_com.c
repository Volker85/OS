#include "os_firstinc.h"
/*
Idea: 
Core 0:

h
i
g       IR    IR     IR     IR    IR
h       | |   | |    | |    | |   | |
|       | |   | Task 3 Task 4 |   | |
prio    | |   | ended  ended  |   | | 
|       | Task2               Task2 |
|       | preempted           ended |  
l   Task1                           Task1
o   preempted                       ended
w

Synchronisation:
a) task (preemptable)    (e.g. Task1/2)
b) task (not preemptable)(e.g. Task3/4) 
c) interrupts (not interruptable)

Hinreichende Bedinungen für Deadlock:
1. Resource will be released only by the process.
2. Process requests resource, but hold access to other resources.
3. Access to resources is exclusiv.
4. At least two processes have a circular wait regarding the resources.

Start: Copyright: https://de.wikipedia.org/wiki/Deadlock_(Informatik)
Preemption durchführen
    Einem Prozess werden Betriebsmittel entzogen, um sie einem anderen zuzuteilen.
Hold and Wait verhindern
    Jeder Prozess gibt zu Beginn an, welche Betriebsmittel er benötigt. Falls alle benötigten Betriebsmittel gleichzeitig frei sind, bekommt sie ein Prozess auf einmal zugeteilt.
Mutual Exclusion beseitigen
    Die benötigten Betriebsmittel für alle Prozesse zugänglich zu machen, indem man den exklusiven Zugriff auflöst. Alternativ Spooling (Beispiel: Drucker) oder Virtualisierung von Betriebsmitteln (Beispiel: CPU).
Circular Wait ausschließen
    Betriebsmittel werden linear geordnet und in aufsteigender Reihenfolge vergeben.
End: Copyright: https://de.wikipedia.org/wiki/Deadlock_(Informatik)
*/
//TODO: implement inter task communication (pipe, lock)