
| Mitre Id        | Threat           | Description  | Applicability to Power Optimziation |
|:-----:|-------------|----------|------------|
|FGT1014 & | Rootkit | Adversaries may use rootkits to hide the presence of programs, files, network connections, services, drivers, and other system components| Yes |
|FGT1018 & | Remote System Discovery | Adversaries may attempt to get a listing of other systems by IP address, hostname, or other logical identifier on a network that may be used for Lateral Movement from the current system.| Yes |
|FGT1020 & | Automated Exfiltration | Adversaries may exfiltrate data, such as sensitive documents, through the use of automated processing after being gathered during Collection.| Yes |
|.001 & | Traffic Duplication | Adversaries may leverage traffic mirroring in order to automate data exfiltration over compromised network infrastructure.| Yes |
|FGT1021 & | Remote Services | Adversaries may use Valid Accounts to log into a service specifically designed to accept remote connections, such as telnet, SSH, and VNC.| Yes |
|FGT1040 & | Network Sniffing | Adversaries may sniff network traffic to capture information about an environment, including authentication material passed over the network.| Yes |
|.501 | Radio interface | An adversary may eavesdrop on unencrypted sensitive subscriber data to capture information to and from a UE that has been bid down to a less secure format, such as Wi-Fi or an earlier mobile network generation.| Yes |
|.502 | Fronthaul User Plane Data | Adversary manipulates User Plane data on Fronthaul interface between O-DU and O-RU to re-direct the data to a wrong destination or get discarded by the recipient due to incorrect message parameters.| Yes |
|FGT1046 & | Network Service Scanning | Adversaries may attempt to get a listing of services running on remote hosts, including those that may be vulnerable to remote software exploitation.| Yes |
|FGT1048 & | Exfiltration Over Alternative Protocol | Adversaries may steal data by exfiltrating it over a different protocol than that of the existing command and control channel.| Yes |
|.003 & | Exfiltration Over Unencrypted/Obfuscated Non-C2 Protocol | Adversaries may steal data by exfiltrating it over an un-encrypted network protocol other than that of the existing command and control channel.| Yes |
|FGT1072 & | Software Deployment Tools | Adversaries may gain access to and use third-party software suites installed within an enterprise network, such as administration, monitoring, and deployment systems, to move laterally through the network.| Yes |
|FGT1078 & | Valid Accounts | Adversaries may obtain and abuse credentials of existing accounts as a means of gaining Initial Access, Persistence, Privilege Escalation, or Defense Evasion.| Yes |
|.003 & | Local Accounts | Adversaries may obtain and abuse credentials of a local account as a means of gaining Initial Access, Persistence, Privilege Escalation, or Defense Evasion.| Yes |
|.004 & | Cloud Accounts | Adversaries may obtain and abuse credentials of a cloud account as a means of gaining Initial Access, Persistence, Privilege Escalation, or Defense Evasion.| Yes |
|FGT1190 & | Exploit Public-Facing Application | Adversaries may attempt to take advantage of a weakness in an Internet-facing computer or program using software, data, or commands in order to cause unintended or unanticipated behavior.| Yes |
|FGT1195 & | Supply Chain Compromise | Adversaries may manipulate products or product delivery mechanisms prior to receipt by a final consumer for the purpose of data or system compromise. Supply chain compromise can take place at any stage of the supply chain including:<ul><li>Manipulation of development tools</li> <li>Manipulation of a development environment</li> <li>Manipulation of source code repositories (public or private)</li> <li>Manipulation of source code in open-source dependencies</li> <li>Manipulation of software update/distribution mechanisms</li> <li>Compromised/infected system images (multiple cases of removable media infected at the factory) (Citation: IBM Storwize) (Citation: Schneider Electric USB Malware)</li> <li>Replacement of legitimate software with modified versions</li> <li>Sales of modified/counterfeit products to legitimate distributors</li> <li>Shipment interdiction</li></ul> While supply chain compromise can impact any component of hardware or software, attackers looking to gain execution have often focused on malicious additions to legitimate software in software distribution or update channels.| Yes |
|.002 & | Compromise Software Supply Chain | Adversaries may manipulate application software prior to receipt by a final consumer for the purpose of data or system compromise.| Yes |
|.003 & | Compromise Hardware Supply Chain | Adversaries may manipulate hardware components in products prior to receipt by a final consumer for the purpose of data or system compromise.| Yes |
|.501 | SIM Credential Theft | An adversary may get access to several SIM credentials either by physical access to SIM card inventory or by injecting malware on SIM vendor server.| Yes |
|.502 | Compromise Service Supply Chain | Adversaries may manipulate service or service delivery mechanisms prior to or while used by a mobile network operator (MNO) for the purpose of data or system compromise.| Yes |
|FGT1199 & | Trusted Relationship | Adversaries may breach or otherwise leverage organizations who have access to intended victims.| Yes |
|.501 | MNO Roaming Partners | An adversary may breach or otherwise leverage a mobile network operator’s (MNO’s) roaming partners or their service partners to gain access to subscriber’s services or obtain information about that subscriber from their home network.| Yes |
|FGT1200 & | Hardware Additions | Adversaries may introduce computer accessories, computers, or networking hardware into a system or network that can be used as a vector to gain access.| Yes |
|FGT1203 & | Exploitation for Client Execution | Adversaries may exploit software vulnerabilities in client applications to execute code.| Yes |
|.501 | Over-the-Air Input | An adversary may send specially crafted data to the UE over-the-air via the radio interface to execute malicious code.| Yes |
|.502 | Baseband API | An adversary may send specially crafted data to the UE's application processor's interface to the baseband API to execute malicious code.| Yes |
|FGT1437 & | Standard Application Layer Protocol | Adversaries may communicate using a common, standardized application layer protocol such as HTTP, HTTPS, SMTP, or DNS to avoid detection by blending in with existing traffic.| Yes |
In the mobile environment, the Google Cloud Messaging (GCM; two-way) and Apple Push Notification Service (APNS; one-way server-to-device) are commonly used protocols on Android and iOS respectively that would blend in with routine device traffic and are difficult for enterprises to inspect.| Yes |
|FGT1498 & | Network Denial of Service | Adversaries may perform Network Denial of Service (DoS) attacks to degrade or block the availability of targeted resources to users.| Yes |
|.501 | Flooding of core network component | An adversary-controlled UE may send high volumes of signaling messages to core network functions in order to cause a denial of service.| Yes |
|.502 | Shared slice common control network function resource exhaustion | Adversaries may exhaust common resources of a slice to cause denial of service (service degradation) to all other slices that use the same common resources.| Yes |
|.503 | UE DoS to AMF | An adversary controlled UE may be used to send crafted NAS messages to AMF to crash or slow down the AMF.| Yes |
|FGT1499 & | Endpoint Denial of Service | Adversaries may perform Endpoint Denial of Service (DoS) attacks to degrade or block the availability of services to users.| Yes |
|.002 & | Service Exhaustion Flood | Adversaries may target the different network services provided by systems to conduct a DoS.| Yes |
|.501 | Consume data allocation to deny or degrade service | A malicious app consumes subscriber data allocation so as to deny or degrade service to that UE| Yes |
|.502 | Trigger fraud alert to deny service | An adversary may trigger a fraud alert by sending fake registrations for a given UE.| Yes |
|.503 | DOS a UE via gNB or NF signaling | An adversary controlling a gNB or control plane or user plane Network Function (NF) may manipulate signaling to result in DOS on one or more UEs| Yes |
|FGT1525 & | Implant Internal Image | Adversaries may implant cloud or container images with malicious code to establish persistence after gaining access to an environment.| Yes |
|FGT1542 & | Pre-OS Boot | Adversaries may abuse Pre-OS Boot mechanisms as a way to establish persistence on a system.| Yes |
|.501 | Unauthorized software in NFVI | An adversary may implant malware in the Network Function Virtualization Infrastructure (NFVI) that will load during the pre-boot sequence to achieve persistence.| Yes |
|FGT1555 & | Credentials from Password Stores | Adversaries may search for common password storage locations to obtain user credentials.| Yes |
|.501 | Hardware Security Module Key Signing | Adversaries may gain unauthorized access to a Hardware Security Module (HSMs) to sign keys and/or other derived key material that can be used to achieve additional goals.| Yes |
|FGT1557 & | Adversary-in-the-Middle | Adversaries may attempt to position themselves between two or more networked devices using an adversary-in-the-middle (AiTM) technique to support follow-on behaviors such as Network Sniffing or Transmitted Data Manipulation.| Yes |
|.501 | Radio interface | An adversary may position itself on the radio interface, to support follow-on behaviors such as Network Sniffing or Transmitted Data Manipulation.| Yes |
|.502 | Roaming and Interconnection | An adversary may attempt to position themselves between two mobile network operators as an adversary in the middle (AITM) to support follow-on behaviors such as Network Sniffing or Transmitted Data Manipulation.| Yes |
|.503 | Non-SBI | An adversary with access to Non-Service Based Interfaces (Non-SBI) network nodes (including routers/switches/load balancers) may position themselves in order to support follow-on behaviors such as Network Sniffing or Transmitted Data Manipulation.| Yes |
|.504 | Service Based Interface | An adversary in the 5G core who has compromised a proxy or middlebox may position themselves between Network Functions (NFs) that are communicating via the Service Based Interfaces (SBI), in order to support follow-on behaviors such as Network Sniffing or Transmitted Data Manipulation.| Yes |
|FGT1562 & | Impair Defenses | Adversaries may maliciously modify components of a victim environment in order to hinder or disable defensive mechanisms.| Yes |
|.501 | Bid down UE | An adversary may employ a fake base station to bid down (downgrade) the victim UE to a less secure Radio Access Network in order to exploit vulnerabilities in that network.| Yes |
|FGT1565 & | Data Manipulation | Adversaries may insert, delete, or manipulate data in order to manipulate external outcomes or hide activity.| Yes |
|.002 & | Transmitted Data Manipulation | Adversaries may alter data en route to storage or other systems in order to manipulate external outcomes or hide activity.(Citation: FireEye APT38 Oct 2018)(Citation: DOJ Lazarus Sony 2018) By manipulating transmitted data, adversaries may attempt to affect a business process, organizational understanding, and decision making.| Yes |
Manipulation may be possible over a network connection or between system processes where there is an opportunity deploy a tool that will intercept and change information.| Yes |
|FGT1572 & | Protocol Tunneling | Adversaries may tunnel network communications to and from a victim system within a separate protocol to avoid detection/network filtering and/or enable access to otherwise unreachable systems.| Yes |
|.501 | UE Access via GTP-U | An adversary may send crafted GTP-U packets to the UPF/PGW in order to establish an illicit session with a target UE.| Yes |
|FGT1583  | 	Acquire Infrastructure | Adversaries may buy, lease, or rent infrastructure that can be used during targeting.| Yes |
|.501 | Fake Cellular Base Station or Access Point | An adversary may purchase, rent, or download software to stand up a fake base station (gNB or gNB emulator) or WiFi access point in order to pave the way to other follow-on behaviors against UEs such as adversary in the middle, denial of service, data interception or manipulation.| Yes |
|.502 | Programable UE devices | An adversary can purchase, rent, or download software to acquire a programmable User Equipment (UE) device, in order to pave the way to other follow-on behaviors against the Radio-Access Network (RAN) such as denial of service| Yes |
|.508 | Network Access | An adversary obtains network access through illicit means in order to install instrumentation.| Yes |
|FGT1587 & | Develop Capabilities | Adversaries may build capabilities that can be used during targeting.| Yes |
|.004 & | Exploits | Adversaries may develop exploits that can be used during targeting.| Yes |
|.501 | Operator Network | An adversary may create an operator network to facilitate applying techniques to a victim UE.| Yes |
|FGT1588 & | Obtain Capabilities | Adversaries may buy and/or steal capabilities that can be used during targeting.| Yes |
|.002 &	Tool | Adversaries may buy, steal, or download software tools that can be used during targeting.| Yes |
|.501 | Obtain Capabilities: Radio Network Functions | An adversary may obtain radio network function needed to attack target victim UEs.| Yes |
|FGT1592 & | Gather Victim Host Information | Adversaries may gather information about the victim's hosts that can be used during targeting.| Yes |
|.501 | Internal resource search | An adversary may gain access to an operator's roaming database (IR.21), which can reveal the critical network assets of both the operator and its roaming partners.| Yes |
|FGT1599 & | Network Boundary Bridging | Adversaries may bridge network boundaries by compromising perimeter network devices.| Yes |
|.501 | Malicious co-tenancy exploit of NFVI (Network Slice) | Adversaries may gain unauthorized access to information via a Virtual Network Function (VNF) shared for service designed for two different slices.| Yes |
|.502 | Network Slice infrastructure resource hijacking | Adversaries may use a less secure slice to gain access to information in a more secure slice that uses the VNF (Common VNF) built on common infrastructure to misuse resources allocated to target VNFs or slice.| Yes |
|.503 | Network Slice application resource hijacking | An adversary may use compromised container management SW (or account) in MANO domain to gain access to target VNFs and its resources for unauthorized access to resources/data of another slice in NFVI or resource exhaustion of target application resulting in denial of service.| Yes |
|.504 | Manipulate Virtual Network Function (VNF) Configuration | Adversaries may bridge network boundaries by modifying a network device’s Virtual Network Function Configuration.| Yes |
|.505 | GTP-U Abuse | An adversary-controlled UE may be used to send a GTP-U packet to UPF/PGW with a malicious payload in order to evade UPF/PGW routing controls to establish communications with a core NF.| Yes |
|FGT1600 & | Weaken Encryption | Adversaries may compromise a network device’s encryption capability in order to bypass encryption that would otherwise protect data communications.| Yes |
|.501 | Radio Interface | An adversary may alter network signaling so as to disable encryption over the radio interface, thus allowing for eavesdropping of user data or signaling on that interface.| Yes |
|.502 | Network Interfaces | An adversary may alter network signaling so as to use weakened or no encryption algorithm on the Non-SBI (Service Based Interface), SBI and Roaming interfaces, thus allowing for eavesdropping of user data or signaling.| Yes |
|FGT1608 & | Stage Capabilities | Adversaries may upload, install, or otherwise set up capabilities that can be used during targeting.| Yes |
|.501 | Configurability of Fake Base Station or Access Point | An adversary may obtain software to configure a fake base station (gNB or gNB emulator) or WiFi access point in order to enable other Radio Access Network (RAN) follow-on behaviors against UEs such as adversary in the middle or denial of service.| Yes |
|.502 | Configure Operator Core Network | An adversary may operationalize a customized mobile network in a target environment to enable other follow-on behaviors against UE.s| Yes |
|FGT1609 & | Container Administration Command | Adversaries may abuse a container administration service to execute commands within a container.| Yes |
|.501 | Accessing Terminated VNF | An adversary may use an NFVI controller to gain access to data from a suspended or stopped VNF to extract sensitive information.| Yes |
|FGT1611 & | Escape to Host | Adversaries may break out of a container to gain access to the underlying host.| Yes |
|.501 | Malicious privileged container VNF Shared Resource Access | An adversary may compromise a target Virtual Network Function (VNF) to gain unauthorized access to the data from the underlying resources shared with other VNFs.| Yes |
|FGT5001 | Network-side SMS collection | An adversary may compromise the operator's SMS Center (SMSC) to collect SMS messages to/from the UEs.| Yes |
|FGT5002	 |  home routing | A adversary positioned in an operator network may send an SMS delivery location query that will bypass the SMS home router of another operator, and which will allow to get the location of the user device.| Yes |
|FGT5003 | Network Function Service Discovery | An adversary may query the Network Repository Function (NRF) to discover restricted Network Function (NF) services to further target that NF.| Yes |
|FGT5004 | Network Flow Manipulation | An adversary may discover Software Defined Network (SDN) flow information, which could then open opportunity for lateral movement and unauthorized changes in the network.| Yes |
|.001 | Controller | An adversary may use the compromised SDN controller or Control plane API to modify network flow rules, or traffic management policies.| Yes |
|.002 | vSwitch | An adversary may compromise a vSwitch in an SDN network to manipulate the network traffic or cause denial of service| Yes |
|FGT5005 | Memory Scraping | An adversary may be able to read memory registers to discover privileged information such as local password comparison, encryption key etc.| Yes |
|FGT5006 | DNS Manipulation | An adversary can manipulate DNS requests to conceal or redirect network traffic and reveal end user activity.| Yes |
|.001 | Layer 2 Redirection of Encrypted DNS | An adversary using a RAN fake gNB and fake UE device can manipulate encrypted traffic to achieve plaintext manipulation of DNS requests sent by the victim UE to the network over the radio interface.| Yes |
|.002 | DNS Encapsulation | An adversary can hide user traffic within DNS requests that are part of the data sessions and transmit data undetected.| Yes |
|FGT5007 | Registration of malicious network functions | An adversary, such as an insider to the MNO or vendor, could install a malicious NF into the core network, in order to launch other attacks or get access to information.| Yes |
|FGT5008 | Redirection of traffic via user plane network function | An adversary diverts user plane traffic for one or more UEs via a user plane function, to monitor user data.| Yes |
|FGT5009 | Weaken Integrity | An adversary may compromise a network device’s integrity capability or configuration in order to exploit the non-integrity protected data communication| Yes |
|.001 | Radio Interface | An adversary may alter or spoof network signaling so as to enable the NULL integrity algorithm thus allowing for manipulation of user data or signaling over the radio interface, for example to redirect traffic.| Yes |
|.002 | Network Interfaces | An adversary may change the configuration of network nodes so as to disable or weaken integrity protection on the network interfaces Non-SBI, SBI and Roaming, thus allowing for transmitted data manipulation.| Yes |
|FGT5010 | Fraudulent AMF registration for UE in UDM | An adversary-controlled AMF registers itself in the UDM as serving a victim UE in order to pave the way for other attacks such as fraud or UE subscription data retrieval.| Yes |
|FGT5011 | Unauthorized access to Network Exposure Function (NEF) via token fraud | An adversary controlling an (external) Application Function (AF) presents a fraudulent OAuth access token to access Network Exposure Function (NEF) services.| Yes |
|FGT5012 | Locate UE | An adversary may obtain the UE location using radio access or core network| Yes |
|.001 | Passive radio signals observation | An adversary may non-cooperatively geolocate a UE from UE radio signals externals.| Yes |
|.002 | Self Location Measurement | An adversary may elicit location reports from UE that is bid down to less secure format or passively observes location reports from UE employing null encryption.| Yes |
|.003 | 5G-GUTI reuse | Adversary can track a device (get cell-level location) by listening for the same device ID being sent to the network.| Yes |
|.004 | Core Network Function Signaling | An adversary in the core network exploits signaling protocols to obtain the location of the UE.| Yes |
|.005 | Shared Network Function in slice | An adversary uses a legitimate access token for a shared Network Function (NF) to get location info of a user of a different slice.| Yes |
|.006 | NAS Exploit | An adversary may geolocate a UE by modifying Non-Access Stratum (NAS) signaling.| Yes |
|.007 | Silent of spoofed paging | Adversary sends spoofed or silent paging messages to a UE and deduces the UE's location from the responses of that UE| Yes |
|.008 | Diameter signaling | An adversary may send an unsolicited SS7/Diameter message to the core network of a UE that will cause the core network to provide coarse location of the UE.| Yes |
|FGT5013 | Malicious VNF Instantiation | An adversary may use a fake or compromised container management controller to deploy fake VNFs to collect information from the network.| Yes |
|FGT5014 | Shared resource discovery | An adversary running a malicious Virtual Network Function (VNF) may identify network resources co-resident on the same physical host.| Yes |
|FGT5015 | Device Database Manipulation | An adversary may compromise the Equipment Identity Register (EIR) function and adds new equipment, modifies status (ok vs. stolen or prohibited) of mobile device.| Yes |
|FGT5016 | Abuse of Inter-operator Interfaces | An adversary exploits interconnection/interworking between MNOs to obtain information about roaming user sessions or commit fraud.| Yes |
|FGT5017 | Charging Data Record (CDR) collection | An adversary may query CDR databases in the mobile network to collect communications metadata.| Yes |
|FGT5018 | Vandalism of Network Infrastructure | An adversary aims to destroy, expose, alter, disable, steal, or gain unauthorized access to physical assets such as infrastructure, hardware, or interconnection, affecting QoS or service availability.| Yes |
|.001 | Cabling and junction boxes | An adversary targets unprotected cables and junction boxes in order to disrupt service.| Yes |
|.002 | Radio Access Hardware | An adversary uses unrestricted access to exploit, damage, or destroy Radio Access hardware that lack adequate security| Yes |
|.003 | Edge servers | An adversary may seek physical access to isolated/remote edge servers using covert methods of entry with the intent to damage or destroy edge computing facilities, gaining unauthorized access at system level as an entry point to all hosted resources, theft of data on local storage, vandalism, and sabotage.| Yes |
|.004 | Theft of Assets | An adversary accesses a shared site, or remote location, with intent to steal valuable materials (such as copper, batteries, and fuel) for resale.| Yes |
|FGT5019 | Subscriber Profile Identifier Discovery | An adversary may discover the permanent subscriber identifier via various means| Yes |
|.001 | Intercept Home Network via SUCI | An adversary may intercept unencrypted radio transmissions of a UE’s SUCI to identify the home network of the UE.| Yes |
|.002 | Intercept bid-down SUPI | An adversary may intercept the UE permanent identifier (SUPI) from a UE that is bid down a less secure protocol.| Yes |
|.003 | Obtain subscriber identifier via NF | An adversary in control of an Application Function (AF) or a rogue Network Function (NF) can make an API call to obtain the Subscriber Permanent Identifier (SUPI) or other sensitive UE information.| Yes |
|.004 | Intercept unencrypted SUPI | An adversary may intercept unencrypted radio transmissions of a UE’s SUCI to identify the IMSI/SUPI of the UE.| Yes |
|.005 | Diameter signaling | An adversary may send an unsolicited SS7/Diameter message to the core network of a UE that will cause the core network to provide IMSI/SUPI of the UE.| Yes |
|.006 | Silent SMS | Adversary sends a spoofed or silent SMS to trigger paging of UE, to retrieve the subscriber profile identifier.| Yes |
|FGT5020 | Retrieve UE subscription data | An adversary controlling a control plane network function may manipulate signaling to retrieve UE subscription information| Yes |
|FGT5021 | Tunnel Endpoint ID (TEID) uniqueness failure | An adversary controlling a user-plane function (gNB or UPF) disrupts user traffic by assigning the new traffic a TEID already in use.| Yes |
|FGT5022 | Alter Subscriber Profile | An adversary may alter the subscriber profile to achieve fraud, via SBI (Service Based Interfaces) or OA&M interfaces.| Yes |
|FGT5023 | Charging fraud via NF control | An adversary controlling a control plane network function may manipulate signaling or parameters to achieve charging/billing fraud where victim is UE or operator itself| Yes |
|FGT5024 | IAB Denial of Service | Adversary may jam to impact IAB or mIAB (gNB) node's communications to impact the UEs and downstream IAB nodeâ€™s ability to connect to network.| Yes |
|FGT5025 | Falsify interconnect invoice | An adversary in a roaming partner operator may send altered service usage for a given UE to the home operator of that UE.| Yes |
|FGT5026 | SIM cloning | Adversary may clone a SIM card (namely the IMSI, credential stored therein) and use it fraudulently to obtain telecom service at the expense of the user of the device with that legitimate SIM card| Yes |
|FGT5027 | Spoof network slice identifier | An adversary controlling a Network Function (NF) or slice can gain access to a different network slice data by interacting with other NFs.| Yes |
|FGT5028 | Discover network slice identifier | An adversary may guess the identifier of a different network slice, which allows for follow-on behaviors against that slice that require that identifier.| Yes |
|FGT5029 | Exploit Semi-public Facing Application | Adversary send specifically crafted messages from an interconnect/interworking partner against roaming interface to gain access to the service function, e.g. SEPP, or cause a denial of service (DoS).| Yes |
|FGT5031 | Discover TEID | An adversary may discover a valid GTP-U TEID in order to apply additional techniques.| Yes |
|FGT5032 | gNodeB Component Manipulation | An adversary may compromise a component of gNodeB to affect radio network configuration| Yes |
|.001 | Radio Intelligent Controller (RIC) | An adversary may compromise a Radio Intelligent Controller (RIC) to affect radio network configuration.| Yes |
|.002 | xApp | An adversary may compromise an xApp to affect the radio network configuration.| Yes |
|.003 | rApp | An adversary may compromise an rApp to affect the radio network configuration.| Yes |
|FGT5034 | Rogue xApps unauthorized access	Malicious xApps may gain unauthorized access to near-RT RIC and E2 nodes.| Yes |
|FGT5035 | Radio Jamming | An adversary transmits radio signals to degrade reception and demodulation of signals to the UE or gNB/eNB.| Yes |
|FGT5036 | AI/ML training data and prediction poisoning | Adversary may use AI/ML training data and prediction poisoning techniques to manipulate the outcomes of a machine learning model for malicious purposes, to disrupt service or change the behavior of network elements.| Yes |
|FGT5037 | Alter ML Model | Adversary may gain unauthorized access to machine learning model or database and alters the data to disrupt service or change the behavior of network elements.| Yes |

