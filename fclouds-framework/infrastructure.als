// Generated at Sun Feb 18 22:13:03 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'infrastructure'
//
// ======================================================================

module infrastructure

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core

// ======================================================================
//
// fclouds extension 'infrastructure'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "infrastructure"
    scheme = "http://schemas.ogf.org/occi/infrastructure#"
    import = core/extension
    kinds = network + compute + storage + storagelink + networkinterface
    mixins = ipnetwork + ipnetworkinterface + os_tpl + resource_tpl + ssh_key + user_data
    types = SuspendMethod_DataType + Vlan_DataType + Token_DataType + NetworkStatus_DataType + ComputeStatus_DataType + NetworkInterfaceStatus_DataType + Architecture_DataType + StopMethod_DataType + RestartMethod_DataType + IpAddress_DataType + Allocation_DataType + StorageStatus_DataType + StorageLinkStatus_DataType + Core_DataType + GHz_DataType + GiB_DataType + IpAddressRange_DataType + Mac_DataType + Share_DataType + SaveMethod_DataType
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/infrastructure#network'
//
// ======================================================================

one sig network extends Kind {} {
    term = "network"
    scheme = "http://schemas.ogf.org/occi/infrastructure#"
    title = "Network Resource"
    parent = core/resource
    attributes = network_occi_network_vlan + network_occi_network_label + network_occi_network_state + network_occi_network_state_message
    actions = network_up + network_down
	entities.Time in this/Network
}

//
// OCCI attribute 'occi.network.vlan'
//
one sig network_occi_network_vlan extends Attribute {} {
    name = "occi.network.vlan"
    type = Vlan_DataType
    mutable = True
    required = False
    no default
    description = "802.1q VLAN Identifier (e.g., 343)"
    multiple_values = False
}

//
// OCCI attribute 'occi.network.label'
//
one sig network_occi_network_label extends Attribute {} {
    name = "occi.network.label"
    type = Token_DataType
    mutable = True
    required = False
    no default
    description = "Tag based VLANs (e.g., external-dmz)"
    multiple_values = False
}

//
// OCCI attribute 'occi.network.state'
//
one sig network_occi_network_state extends Attribute {} {
    name = "occi.network.state"
    type = NetworkStatus_DataType
    mutable = False
    required = True
    default = "inactive"
    description = "Current state of the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.network.state.message'
//
one sig network_occi_network_state_message extends Attribute {} {
    name = "occi.network.state.message"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "Human-readable explanation of the current instance state"
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/network/action#up'
//
one sig network_up extends Action {} {
    term = "up"
    scheme = "http://schemas.ogf.org/occi/infrastructure/network/action#"
    title = "Up a network."
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/network/action#down'
//
one sig network_down extends Action {} {
    term = "down"
    scheme = "http://schemas.ogf.org/occi/infrastructure/network/action#"
    title = "Down a network."
    no attributes
}


// ======================================================================
// Signature for Network
// ======================================================================

sig Network extends core/Resource {
    occi_network_vlan : lone Vlan,
    occi_network_label : lone Token,
    occi_network_state : one NetworkStatus,
    occi_network_state_message : lone String,
} {
    hasKind[network]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/infrastructure#compute'
//
// ======================================================================

one sig compute extends Kind {} {
    term = "compute"
    scheme = "http://schemas.ogf.org/occi/infrastructure#"
    title = "Compute Resource"
    parent = core/resource
    attributes = compute_occi_compute_architecture + compute_occi_compute_cores + compute_occi_compute_hostname + compute_occi_compute_share + compute_occi_compute_speed + compute_occi_compute_memory + compute_occi_compute_state + compute_occi_compute_state_message
    actions = compute_start + compute_stop + compute_restart + compute_suspend + compute_save
	entities.Time in this/Compute
}

//
// OCCI attribute 'occi.compute.architecture'
//
one sig compute_occi_compute_architecture extends Attribute {} {
    name = "occi.compute.architecture"
    type = Architecture_DataType
    mutable = True
    required = False
    no default
    description = "CPU Architecture of the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.cores'
//
one sig compute_occi_compute_cores extends Attribute {} {
    name = "occi.compute.cores"
    type = Core_DataType
    mutable = True
    required = False
    no default
    description = "Number of CPU cores assigned to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.hostname'
//
one sig compute_occi_compute_hostname extends Attribute {} {
    name = "occi.compute.hostname"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "Fully Qualified DNS hostname for the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.share'
//
one sig compute_occi_compute_share extends Attribute {} {
    name = "occi.compute.share"
    type = Share_DataType
    mutable = True
    required = False
    no default
    description = "Relative number of CPU shares for the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.speed'
//
one sig compute_occi_compute_speed extends Attribute {} {
    name = "occi.compute.speed"
    type = GHz_DataType
    mutable = True
    required = False
    no default
    description = "CPU Clock frequency (speed) in gigahertz"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.memory'
//
one sig compute_occi_compute_memory extends Attribute {} {
    name = "occi.compute.memory"
    type = GiB_DataType
    mutable = True
    required = False
    no default
    description = "Maximum RAM in gigabytes allocated to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.state'
//
one sig compute_occi_compute_state extends Attribute {} {
    name = "occi.compute.state"
    type = ComputeStatus_DataType
    mutable = False
    required = True
    default = "inactive"
    description = "Current state of the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.state.message'
//
one sig compute_occi_compute_state_message extends Attribute {} {
    name = "occi.compute.state.message"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "Human-readable explanation of the current instance state"
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/compute/action#start'
//
one sig compute_start extends Action {} {
    term = "start"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/action#"
    title = "Start the system"
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/compute/action#stop'
//
one sig compute_stop extends Action {} {
    term = "stop"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/action#"
    title = "Stop the system (graceful, acpioff or poweroff)"
    attributes = stop_method
}

//
// OCCI attribute 'method'
//
one sig stop_method extends Attribute {} {
    name = "method"
    type = StopMethod_DataType
    mutable = False
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/compute/action#restart'
//
one sig compute_restart extends Action {} {
    term = "restart"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/action#"
    title = "Restart the system (graceful, warm or cold)"
    attributes = restart_method
}

//
// OCCI attribute 'method'
//
one sig restart_method extends Attribute {} {
    name = "method"
    type = RestartMethod_DataType
    mutable = False
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/compute/action#suspend'
//
one sig compute_suspend extends Action {} {
    term = "suspend"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/action#"
    title = "Suspend the system (hibernate or in RAM)"
    attributes = suspend_method
}

//
// OCCI attribute 'method'
//
one sig suspend_method extends Attribute {} {
    name = "method"
    type = SuspendMethod_DataType
    mutable = False
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/compute/action#save'
//
one sig compute_save extends Action {} {
    term = "save"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/action#"
    title = "Save the system (hot, deferred)"
    attributes = save_method + save_name
}

//
// OCCI attribute 'method'
//
one sig save_method extends Attribute {} {
    name = "method"
    type = SaveMethod_DataType
    mutable = False
    required = False
    no default
    no description
    multiple_values = False
}
//
// OCCI attribute 'name'
//
one sig save_name extends Attribute {} {
    name = "name"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Compute
// ======================================================================

sig Compute extends core/Resource {
    occi_compute_architecture : lone Architecture,
    occi_compute_cores : lone Core,
    occi_compute_hostname : lone String,
    occi_compute_share : lone Share,
    occi_compute_speed : lone GHz,
    occi_compute_memory : lone GiB,
    occi_compute_state : one ComputeStatus,
    occi_compute_state_message : lone String,
} {
    hasKind[compute]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/infrastructure#storage'
//
// ======================================================================

one sig storage extends Kind {} {
    term = "storage"
    scheme = "http://schemas.ogf.org/occi/infrastructure#"
    title = "Storage Resource"
    parent = core/resource
    attributes = storage_occi_storage_size + storage_occi_storage_state + storage_occi_storage_state_message
    actions = storage_online + storage_offline
	entities.Time in this/Storage
}

//
// OCCI attribute 'occi.storage.size'
//
one sig storage_occi_storage_size extends Attribute {} {
    name = "occi.storage.size"
    type = GiB_DataType
    mutable = True
    required = True
    no default
    description = "Storage size of the instance in gigabytes"
    multiple_values = False
}

//
// OCCI attribute 'occi.storage.state'
//
one sig storage_occi_storage_state extends Attribute {} {
    name = "occi.storage.state"
    type = StorageStatus_DataType
    mutable = False
    required = True
    no default
    description = "Current status of the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.storage.state.message'
//
one sig storage_occi_storage_state_message extends Attribute {} {
    name = "occi.storage.state.message"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "Human-readable explanation of the current instance state"
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/storage/action#online'
//
one sig storage_online extends Action {} {
    term = "online"
    scheme = "http://schemas.ogf.org/occi/infrastructure/storage/action#"
    title = "Set storage online"
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/infrastructure/storage/action#offline'
//
one sig storage_offline extends Action {} {
    term = "offline"
    scheme = "http://schemas.ogf.org/occi/infrastructure/storage/action#"
    title = "Set storage offline"
    no attributes
}


// ======================================================================
// Signature for Storage
// ======================================================================

sig Storage extends core/Resource {
    occi_storage_size : one GiB,
    occi_storage_state : one StorageStatus,
    occi_storage_state_message : lone String,
} {
    hasKind[storage]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/infrastructure#storagelink'
//
// ======================================================================

one sig storagelink extends Kind {} {
    term = "storagelink"
    scheme = "http://schemas.ogf.org/occi/infrastructure#"
    title = "StorageLink Link"
    parent = core/link
    attributes = storagelink_occi_storagelink_deviceid + storagelink_occi_storagelink_mountpoint + storagelink_occi_storagelink_state + storagelink_occi_storagelink_state_message
    no actions
	entities.Time in this/Storagelink
}

//
// OCCI attribute 'occi.storagelink.deviceid'
//
one sig storagelink_occi_storagelink_deviceid extends Attribute {} {
    name = "occi.storagelink.deviceid"
    type = core/String_DataType
    mutable = True
    required = True
    no default
    description = "Device identifier as defined by the OCCI service provider"
    multiple_values = False
}

//
// OCCI attribute 'occi.storagelink.mountpoint'
//
one sig storagelink_occi_storagelink_mountpoint extends Attribute {} {
    name = "occi.storagelink.mountpoint"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "Point to where the storage is mounted in the guest OS"
    multiple_values = False
}

//
// OCCI attribute 'occi.storagelink.state'
//
one sig storagelink_occi_storagelink_state extends Attribute {} {
    name = "occi.storagelink.state"
    type = StorageLinkStatus_DataType
    mutable = False
    required = True
    no default
    description = "Current status of the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.storagelink.state.message'
//
one sig storagelink_occi_storagelink_state_message extends Attribute {} {
    name = "occi.storagelink.state.message"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "Human-readable explanation of the current instance state"
    multiple_values = False
}

// ======================================================================
// Signature for Storagelink
// ======================================================================

sig Storagelink extends core/Link {
    occi_storagelink_deviceid : one String,
    occi_storagelink_mountpoint : lone String,
    occi_storagelink_state : one StorageLinkStatus,
    occi_storagelink_state_message : lone String,
} {
    hasKind[storagelink]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/infrastructure#networkinterface'
//
// ======================================================================

one sig networkinterface extends Kind {} {
    term = "networkinterface"
    scheme = "http://schemas.ogf.org/occi/infrastructure#"
    title = "NetworkInterface Link"
    parent = core/link
    attributes = networkinterface_occi_networkinterface_interface + networkinterface_occi_networkinterface_mac + networkinterface_occi_networkinterface_state + networkinterface_occi_networkinterface_state_message
    no actions
	entities.Time in this/Networkinterface
}

//
// OCCI attribute 'occi.networkinterface.interface'
//
one sig networkinterface_occi_networkinterface_interface extends Attribute {} {
    name = "occi.networkinterface.interface"
    type = core/String_DataType
    mutable = False
    required = True
    no default
    description = "Identifier that relates the link to the link's device interface"
    multiple_values = False
}

//
// OCCI attribute 'occi.networkinterface.mac'
//
one sig networkinterface_occi_networkinterface_mac extends Attribute {} {
    name = "occi.networkinterface.mac"
    type = Mac_DataType
    mutable = True
    required = True
    no default
    description = "MAC address associated with the link's device interface"
    multiple_values = False
}

//
// OCCI attribute 'occi.networkinterface.state'
//
one sig networkinterface_occi_networkinterface_state extends Attribute {} {
    name = "occi.networkinterface.state"
    type = NetworkInterfaceStatus_DataType
    mutable = False
    required = True
    no default
    description = "Current status of the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.networkinterface.state.message'
//
one sig networkinterface_occi_networkinterface_state_message extends Attribute {} {
    name = "occi.networkinterface.state.message"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "Human-readable explanation of the current instance state"
    multiple_values = False
}

// ======================================================================
// Signature for Networkinterface
// ======================================================================

sig Networkinterface extends core/Link {
    occi_networkinterface_interface : one String,
    occi_networkinterface_mac : one Mac,
    occi_networkinterface_state : one NetworkInterfaceStatus,
    occi_networkinterface_state_message : lone String,
} {
    hasKind[networkinterface]
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/network#ipnetwork'
//
// ======================================================================

one sig ipnetwork extends Mixin {} {
    term = "ipnetwork"
    scheme = "http://schemas.ogf.org/occi/infrastructure/network#"
    title = "An IP Networking Mixin"
    no depends
    applies = network
    attributes = ipnetwork_occi_network_address + ipnetwork_occi_network_gateway + ipnetwork_occi_network_allocation
    no actions
    entities.Time in this/Ipnetwork
}

//
// OCCI attribute 'occi.network.address'
//
one sig ipnetwork_occi_network_address extends Attribute {} {
    name = "occi.network.address"
    type = IpAddressRange_DataType
    mutable = True
    required = False
    no default
    description = "Internet Protocol (IP) network address (e.g., 192.168.0.1/24, fc00::/7)"
    multiple_values = False
}

//
// OCCI attribute 'occi.network.gateway'
//
one sig ipnetwork_occi_network_gateway extends Attribute {} {
    name = "occi.network.gateway"
    type = IpAddress_DataType
    mutable = True
    required = False
    no default
    description = "Internet Protocol (IP) network address (e.g., 192.168.0.1, fc00::)"
    multiple_values = False
}

//
// OCCI attribute 'occi.network.allocation'
//
one sig ipnetwork_occi_network_allocation extends Attribute {} {
    name = "occi.network.allocation"
    type = Allocation_DataType
    mutable = True
    required = False
    no default
    description = "Address allocation mechanism: dynamic e.g., uses the dynamic host configuration protocol, static e.g., uses user supplied static network configurations"
    multiple_values = False
}

// ======================================================================
// Signature for Ipnetwork
// ======================================================================

sig Ipnetwork in Network {
    occi_network_address : lone IpAddressRange,
    occi_network_gateway : lone IpAddress,
    occi_network_allocation : lone Allocation,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/networkinterface#ipnetworkinterface'
//
// ======================================================================

one sig ipnetworkinterface extends Mixin {} {
    term = "ipnetworkinterface"
    scheme = "http://schemas.ogf.org/occi/infrastructure/networkinterface#"
    title = "IP NetworkInterface Mixin"
    no depends
    applies = networkinterface
    attributes = ipnetworkinterface_occi_networkinterface_address + ipnetworkinterface_occi_networkinterface_gateway + ipnetworkinterface_occi_networkinterface_allocation
    no actions
    entities.Time in this/Ipnetworkinterface
}

//
// OCCI attribute 'occi.networkinterface.address'
//
one sig ipnetworkinterface_occi_networkinterface_address extends Attribute {} {
    name = "occi.networkinterface.address"
    type = IpAddress_DataType
    mutable = True
    required = True
    no default
    description = "Internet Protocol (IP) network address (e.g., 192.168.0.1/24, fc00::/7) of the link"
    multiple_values = False
}

//
// OCCI attribute 'occi.networkinterface.gateway'
//
one sig ipnetworkinterface_occi_networkinterface_gateway extends Attribute {} {
    name = "occi.networkinterface.gateway"
    type = IpAddress_DataType
    mutable = True
    required = False
    no default
    description = "Internet Protocol (IP) network address (e.g., 192.168.0.1/24, fc00::/7)"
    multiple_values = False
}

//
// OCCI attribute 'occi.networkinterface.allocation'
//
one sig ipnetworkinterface_occi_networkinterface_allocation extends Attribute {} {
    name = "occi.networkinterface.allocation"
    type = Allocation_DataType
    mutable = True
    required = True
    no default
    description = "Address mechanism: dynamic e.g., uses the dynamic host configuration protocol, static e.g., uses user supplied static network configurations"
    multiple_values = False
}

// ======================================================================
// Signature for Ipnetworkinterface
// ======================================================================

sig Ipnetworkinterface in Networkinterface {
    occi_networkinterface_address : one IpAddress,
    occi_networkinterface_gateway : lone IpAddress,
    occi_networkinterface_allocation : one Allocation,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure#os_tpl'
//
// ======================================================================

one sig os_tpl extends Mixin {} {
    term = "os_tpl"
    scheme = "http://schemas.ogf.org/occi/infrastructure#"
    title = "OS Template"
    no depends
    applies = compute
    no attributes
    no actions
    entities.Time in this/Os_tpl
}

// ======================================================================
// Signature for Os_tpl
// ======================================================================

sig Os_tpl in Compute {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure#resource_tpl'
//
// ======================================================================

one sig resource_tpl extends Mixin {} {
    term = "resource_tpl"
    scheme = "http://schemas.ogf.org/occi/infrastructure#"
    title = "Resource template"
    no depends
    applies = core/resource
    no attributes
    no actions
    entities.Time in this/Resource_tpl
}

// ======================================================================
// Signature for Resource_tpl
// ======================================================================

sig Resource_tpl in core/Resource {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/credentials#ssh_key'
//
// ======================================================================

one sig ssh_key extends Mixin {} {
    term = "ssh_key"
    scheme = "http://schemas.ogf.org/occi/infrastructure/credentials#"
    title = "Credentials Mixin"
    no depends
    applies = compute
    attributes = ssh_key_occi_credentials_ssh_publickey
    no actions
    entities.Time in this/Ssh_key
}

//
// OCCI attribute 'occi.credentials.ssh.publickey'
//
one sig ssh_key_occi_credentials_ssh_publickey extends Attribute {} {
    name = "occi.credentials.ssh.publickey"
    type = core/String_DataType
    mutable = True
    required = True
    no default
    description = "The contents of the public key file to be injected into the Compute Resource"
    multiple_values = False
}

// ======================================================================
// Signature for Ssh_key
// ======================================================================

sig Ssh_key in Compute {
    occi_credentials_ssh_publickey : one String,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/compute#user_data'
//
// ======================================================================

one sig user_data extends Mixin {} {
    term = "user_data"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute#"
    title = "Contextualization Mixin"
    no depends
    applies = compute
    attributes = user_data_occi_compute_userdata
    no actions
    entities.Time in this/User_data
}

//
// OCCI attribute 'occi.compute.userdata'
//
one sig user_data_occi_compute_userdata extends Attribute {} {
    name = "occi.compute.userdata"
    type = core/String_DataType
    mutable = False
    required = True
    no default
    description = "Contextualization data (e.g., script, executable) that the client supplies once and only once. It cannot be updated"
    multiple_values = False
}

// ======================================================================
// Signature for User_data
// ======================================================================

sig User_data in Compute {
    occi_compute_userdata : one String,
}

//
// OCCI data type SuspendMethod
//
one sig SuspendMethod_DataType extends DataType {} {
    name = "SuspendMethod"
}

let SuspendMethod=String

//
// OCCI data type Vlan
//
one sig Vlan_DataType extends DataType {} {
    name = "Vlan"
}

let Vlan=String

//
// OCCI data type Token
//
one sig Token_DataType extends DataType {} {
    name = "Token"
}

let Token=String

//
// OCCI data type NetworkStatus
//
one sig NetworkStatus_DataType extends DataType {} {
    name = "NetworkStatus"
}

let NetworkStatus=String

//
// OCCI data type ComputeStatus
//
one sig ComputeStatus_DataType extends DataType {} {
    name = "ComputeStatus"
}

let ComputeStatus=String

//
// OCCI data type NetworkInterfaceStatus
//
one sig NetworkInterfaceStatus_DataType extends DataType {} {
    name = "NetworkInterfaceStatus"
}

let NetworkInterfaceStatus=String

//
// OCCI data type Architecture
//
one sig Architecture_DataType extends DataType {} {
    name = "Architecture"
}

let Architecture=String

//
// OCCI data type StopMethod
//
one sig StopMethod_DataType extends DataType {} {
    name = "StopMethod"
}

let StopMethod=String

//
// OCCI data type RestartMethod
//
one sig RestartMethod_DataType extends DataType {} {
    name = "RestartMethod"
}

let RestartMethod=String

//
// OCCI data type IpAddress
//
one sig IpAddress_DataType extends DataType {} {
    name = "IpAddress"
}

let IpAddress=String

//
// OCCI data type Allocation
//
one sig Allocation_DataType extends DataType {} {
    name = "Allocation"
}

let Allocation=String

//
// OCCI data type StorageStatus
//
one sig StorageStatus_DataType extends DataType {} {
    name = "StorageStatus"
}

let StorageStatus=String

//
// OCCI data type StorageLinkStatus
//
one sig StorageLinkStatus_DataType extends DataType {} {
    name = "StorageLinkStatus"
}

let StorageLinkStatus=String

//
// OCCI data type Core
//
one sig Core_DataType extends DataType {} {
    name = "Core"
}

let Core=String

//
// OCCI data type GHz
//
one sig GHz_DataType extends DataType {} {
    name = "GHz"
}

let GHz=String

//
// OCCI data type GiB
//
one sig GiB_DataType extends DataType {} {
    name = "GiB"
}

let GiB=String

//
// OCCI data type IpAddressRange
//
one sig IpAddressRange_DataType extends DataType {} {
    name = "IpAddressRange"
}

let IpAddressRange=String

//
// OCCI data type Mac
//
one sig Mac_DataType extends DataType {} {
    name = "Mac"
}

let Mac=String

//
// OCCI data type Share
//
one sig Share_DataType extends DataType {} {
    name = "Share"
}

let Share=String

//
// OCCI data type SaveMethod
//
one sig SaveMethod_DataType extends DataType {} {
    name = "SaveMethod"
}

let SaveMethod=String

// ======================================================================
// Check consistency, i.e., there is at least one instance of this model.
// ======================================================================

run Consistency {} for 10

// ======================================================================
// Instance containing the OCCI Type System only.
// ======================================================================

run The_OCCI_Type_System {} for 0

// ======================================================================
// imported check
// ======================================================================

check GetAllCategoriesIsSafe for 10
check GetAllCategoriesIsIdempotent for 10
check GetAllCategoriesOnConfigurationWithoutExtensionsAndUserMixinsReturnsNoCategory for 10
check GetAllCategoriesOnConfigurationWithoutExtensionsReturnsUserMixins for 10
check GetAllCategoriesOnConfigurationWithoutUserMixinsReturnsAllExtensionsKindsAndMixins for 10
check CreateResourceIsIdempotent for 10
check CreateResourceImpliesResourceAddedToKind for 10
check RetrieveResourceIsSafe for 10
check RetrieveResourceIsIdempotent for 10
check CreateResourceAndRetrieveResourceAreSequential for 10 //but exactly 1 Configuration, exactly 2 Resource, exactly 3 Time
check UpdateResourceIsIdempotent for 10
check DeleteResourceIsIdempotent for 10
check DeleteResourceImpliesResourceRemovedFromConfiguration for 10
check CreateResourceAndDeleteResourceAreReversible for 10
check CreateLinkIsIdempotent for 10
check CreateLinkImpliesLinkAddedToKind for 10
check RetrieveLinkIsSafe for 10
check RetrieveLinkIsIdempotent for 10
check CreateLinkAndRetrieveLinkAreSequential for 10
check DeleteLinkIsIdempotent for 10
check DeleteLinkImpliesLinkRemovedFromConfiguration for 10
check CreateLinkAndDeleteLinkAreReversible for 10
check UpdateLinkIsIdempotent for 10
check AddUserMixinDoesNotModifyConfigurationExtensionsAndResources for 10
check AddUserMixinCanNotAddAlreadyExistingMixin for 10
check AddUserMixinDoesTheWork for 10
check RemoveUserMixinDoesNotModifyConfigurationExtensionsAndResources for 10
check RemoveUserMixinCanNotRemoveNotExistingMixin for 10
check RemoveUserMixinDoesTheWork for 10
check AddUserMixinAndRemoveUserMixinAreReversibleOperations_v2 for 10
check AssociateMixinToResourceIsIdempotent for 10
check DissociateMixinFromResourceIsIdempotent for 10
check AssociateMixinToResourceAndDissociateMixinFromResourceAreReversible for 10
check RetrieveCollectionIsSafe for 10
check RetrieveCollectionOnConfigurationWithoutExtensionsAndUserMixinsReturnsNoCategory for 10
check RetrieveCollectionOnConfigurationWithoutExtensionsReturnsUserMixins for 10
check RetrieveCollectionOnConfigurationWithoutUserMixinsReturnsAllExtensionsKindsAndMixins for 10

