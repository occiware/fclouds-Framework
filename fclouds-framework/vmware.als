// Generated at Sun Feb 18 22:13:06 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'vmware'
//
// ======================================================================

module vmware

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open crtp
open infrastructure
open accounts

// ======================================================================
//
// fclouds extension 'vmware'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "vmware"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    import = core/extension + crtp/extension + infrastructure/extension + accounts/extension
    kinds = instancevmware + storagevmware + storagelinkvmware + vswitch + networkadapter + vcenteraccount
    mixins = windows + linux + macosx + vmwarefolders + os_tpl_vmware + ssh_user_data + vcentercredential
    types = GuestOsIdentifiers_DataType
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/infrastructure/vmware#instancevmware'
//
// ======================================================================

one sig instancevmware extends Kind {} {
    term = "instancevmware"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    no title
    parent = infrastructure/compute
    attributes = instancevmware_imagename + instancevmware_markedastemplate + instancevmware_gueststate + instancevmware_guestosid + instancevmware_vcpu + instancevmware_instanceId + instancevmware_guestIpv4Address + instancevmware_guestIpv6Address
    no actions
	entities.Time in this/Instancevmware
}

//
// OCCI attribute 'imagename'
//
one sig instancevmware_imagename extends Attribute {} {
    name = "imagename"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "Name of the template if this compute has a template or will be created with a template."
    multiple_values = False
}

//
// OCCI attribute 'markedastemplate'
//
one sig instancevmware_markedastemplate extends Attribute {} {
    name = "markedastemplate"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'gueststate'
//
one sig instancevmware_gueststate extends Attribute {} {
    name = "gueststate"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'guestosid'
//
one sig instancevmware_guestosid extends Attribute {} {
    name = "guestosid"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'vcpu'
//
one sig instancevmware_vcpu extends Attribute {} {
    name = "vcpu"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'instanceId'
//
one sig instancevmware_instanceId extends Attribute {} {
    name = "instanceId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "Unique Instance provider Id given by provider after creation"
    multiple_values = False
}

//
// OCCI attribute 'guestIpv4Address'
//
one sig instancevmware_guestIpv4Address extends Attribute {} {
    name = "guestIpv4Address"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "Ipv4 address from guest tools."
    multiple_values = False
}

//
// OCCI attribute 'guestIpv6Address'
//
one sig instancevmware_guestIpv6Address extends Attribute {} {
    name = "guestIpv6Address"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Instancevmware
// ======================================================================

sig Instancevmware extends infrastructure/Compute {
    imagename : lone String,
    markedastemplate : lone String,
    gueststate : lone String,
    guestosid : lone String,
    vcpu : lone core/Integer,
    instanceId : lone String,
    guestIpv4Address : lone String,
    guestIpv6Address : lone String,
} {
    hasKind[instancevmware]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/infrastructure/vmware#storagevmware'
//
// ======================================================================

one sig storagevmware extends Kind {} {
    term = "storagevmware"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    no title
    parent = infrastructure/storage
    no attributes
    no actions
	entities.Time in this/Storagevmware
}

// ======================================================================
// Signature for Storagevmware
// ======================================================================

sig Storagevmware extends infrastructure/Storage {
} {
    hasKind[storagevmware]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/infrastructure/vmware#storagelinkvmware'
//
// ======================================================================

one sig storagelinkvmware extends Kind {} {
    term = "storagelinkvmware"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    no title
    parent = infrastructure/storagelink
    no attributes
    no actions
	entities.Time in this/Storagelinkvmware
}

// ======================================================================
// Signature for Storagelinkvmware
// ======================================================================

sig Storagelinkvmware extends infrastructure/Storagelink {
} {
    hasKind[storagelinkvmware]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/infrastructure/vmware#vswitch'
//
// ======================================================================

one sig vswitch extends Kind {} {
    term = "vswitch"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    no title
    parent = infrastructure/network
    attributes = vswitch_nbport
    no actions
	entities.Time in this/Vswitch
}

//
// OCCI attribute 'nbport'
//
one sig vswitch_nbport extends Attribute {} {
    name = "nbport"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Vswitch
// ======================================================================

sig Vswitch extends infrastructure/Network {
    nbport : lone core/Integer,
} {
    hasKind[vswitch]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/infrastructure/vmware#networkadapter'
//
// ======================================================================

one sig networkadapter extends Kind {} {
    term = "networkadapter"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    title = "Network adapter interface"
    parent = infrastructure/networkinterface
    no attributes
    no actions
	entities.Time in this/Networkadapter
}

// ======================================================================
// Signature for Networkadapter
// ======================================================================

sig Networkadapter extends infrastructure/Networkinterface {
} {
    hasKind[networkadapter]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/infrastructure/vmware#vcenteraccount'
//
// ======================================================================

one sig vcenteraccount extends Kind {} {
    term = "vcenteraccount"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    no title
    parent = accounts/cloudaccount
    no attributes
    no actions
	entities.Time in this/Vcenteraccount
}

// ======================================================================
// Signature for Vcenteraccount
// ======================================================================

sig Vcenteraccount extends accounts/Cloudaccount {
} {
    hasKind[vcenteraccount]
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/vmware#windows'
//
// ======================================================================

one sig windows extends Mixin {} {
    term = "windows"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    title = "Mixin os_tpl for Windows system"
    depends = os_tpl_vmware
    applies = instancevmware
    no attributes
    no actions
    entities.Time in this/Windows
}

// ======================================================================
// Signature for Windows
// ======================================================================

sig Windows in Instancevmware {
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/vmware#linux'
//
// ======================================================================

one sig linux extends Mixin {} {
    term = "linux"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    title = "Mixin os_tpl for linux systems"
    depends = os_tpl_vmware
    applies = instancevmware
    no attributes
    no actions
    entities.Time in this/Linux
}

// ======================================================================
// Signature for Linux
// ======================================================================

sig Linux in Instancevmware {
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/vmware#macosx'
//
// ======================================================================

one sig macosx extends Mixin {} {
    term = "macosx"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    title = "Mixin os_tpl for mac os x systems"
    depends = os_tpl_vmware
    applies = instancevmware
    no attributes
    no actions
    entities.Time in this/Macosx
}

// ======================================================================
// Signature for Macosx
// ======================================================================

sig Macosx in Instancevmware {
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/vmware#vmwarefolders'
//
// ======================================================================

one sig vmwarefolders extends Mixin {} {
    term = "vmwarefolders"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    title = "This mixin add global attributes like datacentername, clustername, hostsystem name etc."
    no depends
    applies = instancevmware + networkadapter + storagelinkvmware + storagevmware + vswitch
    attributes = vmwarefolders_datacentername + vmwarefolders_datastorename + vmwarefolders_clustername + vmwarefolders_hostsystemname + vmwarefolders_inventorypath
    no actions
    entities.Time in this/Vmwarefolders
}

//
// OCCI attribute 'datacentername'
//
one sig vmwarefolders_datacentername extends Attribute {} {
    name = "datacentername"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "Datacenter name identifier of the entity"
    multiple_values = False
}

//
// OCCI attribute 'datastorename'
//
one sig vmwarefolders_datastorename extends Attribute {} {
    name = "datastorename"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "Datastore name"
    multiple_values = False
}

//
// OCCI attribute 'clustername'
//
one sig vmwarefolders_clustername extends Attribute {} {
    name = "clustername"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'hostsystemname'
//
one sig vmwarefolders_hostsystemname extends Attribute {} {
    name = "hostsystemname"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'inventorypath'
//
one sig vmwarefolders_inventorypath extends Attribute {} {
    name = "inventorypath"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Vmwarefolders
// ======================================================================

sig Vmwarefolders in Instancevmware + Networkadapter + Storagelinkvmware + Storagevmware + Vswitch {
    datacentername : lone String,
    datastorename : lone String,
    clustername : lone String,
    hostsystemname : lone String,
    inventorypath : lone String,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/vmware#os_tpl_vmware'
//
// ======================================================================

one sig os_tpl_vmware extends Mixin {} {
    term = "os_tpl_vmware"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    no title
    depends = infrastructure/os_tpl
    applies = instancevmware
    attributes = os_tpl_vmware_datastoreisopath + os_tpl_vmware_guestid
    no actions
    entities.Time in this/Os_tpl_vmware
}

//
// OCCI attribute 'datastoreisopath'
//
one sig os_tpl_vmware_datastoreisopath extends Attribute {} {
    name = "datastoreisopath"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'guestid'
//
one sig os_tpl_vmware_guestid extends Attribute {} {
    name = "guestid"
    type = GuestOsIdentifiers_DataType
    mutable = True
    required = True
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Os_tpl_vmware
// ======================================================================

sig Os_tpl_vmware in Instancevmware {
    datastoreisopath : lone String,
    guestid : one GuestOsIdentifiers,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/vmware#ssh_user_data'
//
// ======================================================================

one sig ssh_user_data extends Mixin {} {
    term = "ssh_user_data"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    no title
    depends = infrastructure/user_data
    applies = instancevmware
    attributes = ssh_user_data_password + ssh_user_data_occi_compute_userdata_file + ssh_user_data_user
    no actions
    entities.Time in this/Ssh_user_data
}

//
// OCCI attribute 'password'
//
one sig ssh_user_data_password extends Attribute {} {
    name = "password"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.userdata.file'
//
one sig ssh_user_data_occi_compute_userdata_file extends Attribute {} {
    name = "occi.compute.userdata.file"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'user'
//
one sig ssh_user_data_user extends Attribute {} {
    name = "user"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Ssh_user_data
// ======================================================================

sig Ssh_user_data in Instancevmware {
    password : lone String,
    occi_compute_userdata_file : lone String,
    user : lone String,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/vmware#vcentercredential'
//
// ======================================================================

one sig vcentercredential extends Mixin {} {
    term = "vcentercredential"
    scheme = "http://occiware.org/occi/infrastructure/vmware#"
    no title
    depends = accounts/basiccredential
    applies = vcenteraccount
    no attributes
    no actions
    entities.Time in this/Vcentercredential
}

// ======================================================================
// Signature for Vcentercredential
// ======================================================================

sig Vcentercredential in Vcenteraccount {
}

//
// OCCI data type GuestOsIdentifiers
//
one sig GuestOsIdentifiers_DataType extends DataType {} {
    name = "GuestOsIdentifiers"
}

let GuestOsIdentifiers=String

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

