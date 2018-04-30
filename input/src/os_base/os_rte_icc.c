#include "os_firstinc.h"
#include "os_common.h"
/* ROUTING_TABLE:
e.g.
C0->C1
C0->C2
C0->C3

C1->C0
C1->C2
C1->C3

C2->C0
C2->C1
C2->C2

C3->C0
C3->C1
C3->C2

-> amout_of_channels = Summe(n_Cores =2, n_Cores=X, (2*(n_Cores-1))) = n_Cores*(n_Cores-1)
-> n_Cores=2, amout_of_channels=2
-> n_Cores=3, amout_of_channels=6
-> n_Cores=4, amout_of_channels=12
-> n_Cores=5, amout_of_channels=20
-> n_Cores=6, amout_of_channels=30
-> n_Cores=7, amout_of_channels=42

The calculation describes the maxiumum amount of channels needed.

Assumptions: all core share one shared RAM block simplifing RTE complexity to amount_of_channels = 2*(n_Cores-1)

*/
/*
7	Anwendungen (Application)	Anwendungsorientiert	Anwendung	Ende zu Ende (Multihop)		HTTP,FTP,HTTPS,SMTP,LDAP,NCP		Daten			Gateway, Content-Switch, Proxy, Layer-4-7-Switch

6	Darstellung (Presentation)	Anwendungsorientiert	Anwendung	Ende zu Ende (Multihop)

5	Sitzung	(Session)		Anwendungsorientiert	Anwendung	Ende zu Ende (Multihop)

4	Transport (Transport)		Transportorientiert	Transport	Ende zu Ende (Multihop)		TCP,UDP,SCTP,SPX,			TCP = Segmente
																			UDP = Datagramme
3	Vermittlung (Network)		Transportorientiert	Internet	Punkt zu Punkt			ICMP,IGMP,IP,IPsec,IPX			Pakete			Router, Layer-3-Switch
2	Sicherung (Data Link)		Transportorientiert	Netzzugriff	Punkt zu Punkt			Ethernet,Token Ring,FDDI,MAC,ARCNET	Rahmen (Frames)		Bridge, Switch
1	Bitübertragung(Physical)	Transportorientiert	Netzzugriff	Punkt zu Punkt			Ethernet,Token Ring,FDDI,MAC,ARCNET	Bits, Symbole, Pakete	Netzwerkkabel, Repeater, Hub

*/

/*
Layer 4 Implementation
RQ: Segmentierung und Stauvermeidung
Start
*/
/*
Layer 4 Implementation Segement or Datagramme based
End
*/

/*
Layer 3 Implementation
Start
RQ: Routing of packages
*/
/*
Layer 3 Implementation Paket based
End
*/
uint8 SEND_DATA(CoreID_t Core_id_transmitter, CoreID_t Core_id_receiver, uint32 length, uint8* data)
{
   ReferenceUnusedParameter(Core_id_transmitter);
   ReferenceUnusedParameter(Core_id_receiver);
   ReferenceUnusedParameter(length);
   ReferenceUnusedParameter(data);
   /*#warn "SEND_DATA() not yet implemented"*/
   return True;
}
/*
Layer 2 Implementation Frame based:
RQ: split in frames
RQ: Checksums

Start
*/
/*
Layer 2 Implementation
End
*/
uint8 SEND_PACKAGE(CoreID_t Core_id_transmitter, CoreID_t Core_id_receiver, uint32 length, uint8* package)
{
   ReferenceUnusedParameter(Core_id_transmitter);
   ReferenceUnusedParameter(Core_id_receiver);
   ReferenceUnusedParameter(length);
   ReferenceUnusedParameter(package);
   /*#warn "SEND_PACKAGE() not yet implemented"*/
   return True;
}

/*
Layer 1 Implementation
RQ: Send Bits/Bytes
Start
*/
/*
e.g.
C0->C1

C0:
1. Check for pending read
2. Write into buffer
3. set updated flag
C1:
4.1 Set pending read flag
4.2 Check for pending write
5. Read from Buffer
6. Clear updated flag (+buffer)+ Clear pending read

*/
uint8 SEND_FRAME(CoreID_t Core_id_transmitter, CoreID_t Core_id_receiver, uint32 length, uint8* frame)
{
   ReferenceUnusedParameter(Core_id_transmitter);
   ReferenceUnusedParameter(Core_id_receiver);
   ReferenceUnusedParameter(length);
   ReferenceUnusedParameter(frame);
   /*#warn "SEND_FRAME() not yet implemented"*/
   return True;
}

/*
Layer 1 Implementation
End
*/
