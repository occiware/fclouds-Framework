// Generated at Sun Feb 18 22:13:05 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'occimonitoring'
//
// ======================================================================

module occimonitoring

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
// fclouds extension 'occimonitoring'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "occimonitoring"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    import = core/extension
    kinds = zabbixinstance + hostgroup + zabbixtemplate + hostgroulink + templatelink
    mixins = metrics + cpuusage + memoryusage
    types = Double_DataType
}

// ======================================================================
//
// OCCI kind 'http://org.eclipse.cmf.occi.multicloud.occimonitoring#zabbixinstance'
//
// ======================================================================

one sig zabbixinstance extends Kind {} {
    term = "zabbixinstance"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    no title
    parent = core/resource
    attributes = zabbixinstance_zabbixinstance_port + zabbixinstance_zabbixinstance_identifier + zabbixinstance_zabbixinstance_ip
    no actions
	entities.Time in this/Zabbixinstance
}

//
// OCCI attribute 'zabbixinstance.port'
//
one sig zabbixinstance_zabbixinstance_port extends Attribute {} {
    name = "zabbixinstance.port"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'zabbixinstance.identifier'
//
one sig zabbixinstance_zabbixinstance_identifier extends Attribute {} {
    name = "zabbixinstance.identifier"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'zabbixinstance.ip'
//
one sig zabbixinstance_zabbixinstance_ip extends Attribute {} {
    name = "zabbixinstance.ip"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Zabbixinstance
// ======================================================================

sig Zabbixinstance extends core/Resource {
    zabbixinstance_port : lone core/Integer,
    zabbixinstance_identifier : lone core/Integer,
    zabbixinstance_ip : lone String,
} {
    hasKind[zabbixinstance]
}

// ======================================================================
//
// OCCI kind 'http://org.eclipse.cmf.occi.multicloud.occimonitoring#hostgroup'
//
// ======================================================================

one sig hostgroup extends Kind {} {
    term = "hostgroup"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    no title
    parent = core/resource
    attributes = hostgroup_hostgroup_identifier
    no actions
	entities.Time in this/Hostgroup
}

//
// OCCI attribute 'hostgroup.identifier'
//
one sig hostgroup_hostgroup_identifier extends Attribute {} {
    name = "hostgroup.identifier"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Hostgroup
// ======================================================================

sig Hostgroup extends core/Resource {
    hostgroup_identifier : lone core/Integer,
} {
    hasKind[hostgroup]
}

// ======================================================================
//
// OCCI kind 'http://org.eclipse.cmf.occi.multicloud.occimonitoring#zabbixtemplate'
//
// ======================================================================

one sig zabbixtemplate extends Kind {} {
    term = "zabbixtemplate"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    no title
    parent = core/resource
    attributes = zabbixtemplate_zabbixtemplate_identifier + zabbixtemplate_zabbixtemplate_hostgid + zabbixtemplate_zabbixtemplate_hostsids
    no actions
	entities.Time in this/Zabbixtemplate
}

//
// OCCI attribute 'zabbixtemplate.identifier'
//
one sig zabbixtemplate_zabbixtemplate_identifier extends Attribute {} {
    name = "zabbixtemplate.identifier"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'zabbixtemplate.hostgid'
//
one sig zabbixtemplate_zabbixtemplate_hostgid extends Attribute {} {
    name = "zabbixtemplate.hostgid"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'zabbixtemplate.hostsids'
//
one sig zabbixtemplate_zabbixtemplate_hostsids extends Attribute {} {
    name = "zabbixtemplate.hostsids"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Zabbixtemplate
// ======================================================================

sig Zabbixtemplate extends core/Resource {
    zabbixtemplate_identifier : lone core/Integer,
    zabbixtemplate_hostgid : lone core/Integer,
    zabbixtemplate_hostsids : lone core/Integer,
} {
    hasKind[zabbixtemplate]
}

// ======================================================================
//
// OCCI kind 'http://org.eclipse.cmf.occi.multicloud.occimonitoring#hostgroulink'
//
// ======================================================================

one sig hostgroulink extends Kind {} {
    term = "hostgroulink"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    no title
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Hostgroulink
}

// ======================================================================
// Signature for Hostgroulink
// ======================================================================

sig Hostgroulink extends core/Link {
} {
    hasKind[hostgroulink]
}

// ======================================================================
//
// OCCI kind 'http://org.eclipse.cmf.occi.multicloud.occimonitoring#templatelink'
//
// ======================================================================

one sig templatelink extends Kind {} {
    term = "templatelink"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    no title
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Templatelink
}

// ======================================================================
// Signature for Templatelink
// ======================================================================

sig Templatelink extends core/Link {
} {
    hasKind[templatelink]
}

// ======================================================================
//
// OCCI mixin 'http://org.eclipse.cmf.occi.multicloud.occimonitoring#metrics'
//
// ======================================================================

one sig metrics extends Mixin {} {
    term = "metrics"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    no title
    no depends
    applies = zabbixinstance
    no attributes
    no actions
    entities.Time in this/Metrics
}

// ======================================================================
// Signature for Metrics
// ======================================================================

sig Metrics in Zabbixinstance {
}

// ======================================================================
//
// OCCI mixin 'http://org.eclipse.cmf.occi.multicloud.occimonitoring#cpuusage'
//
// ======================================================================

one sig cpuusage extends Mixin {} {
    term = "cpuusage"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    no title
    depends = metrics
    applies = zabbixinstance
    attributes = cpuusage_cpuUsage_cpuUsage
    actions = cpuusage_getmetric
    entities.Time in this/Cpuusage
}

//
// OCCI attribute 'cpuUsage.cpuUsage'
//
one sig cpuusage_cpuUsage_cpuUsage extends Attribute {} {
    name = "cpuUsage.cpuUsage"
    type = Double_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://org.eclipse.cmf.occi.multicloud.occimonitoring/cpuusage/action#getmetric'
//
one sig cpuusage_getmetric extends Action {} {
    term = "getmetric"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring/cpuusage/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Cpuusage
// ======================================================================

sig Cpuusage in Zabbixinstance {
    cpuUsage_cpuUsage : lone Double,
}

// ======================================================================
//
// OCCI mixin 'http://org.eclipse.cmf.occi.multicloud.occimonitoring#memoryusage'
//
// ======================================================================

one sig memoryusage extends Mixin {} {
    term = "memoryusage"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring#"
    no title
    depends = metrics
    applies = zabbixinstance
    attributes = memoryusage_memoryUsage_memUsage
    actions = memoryusage_getmetric
    entities.Time in this/Memoryusage
}

//
// OCCI attribute 'memoryUsage.memUsage'
//
one sig memoryusage_memoryUsage_memUsage extends Attribute {} {
    name = "memoryUsage.memUsage"
    type = Double_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://org.eclipse.cmf.occi.multicloud.occimonitoring/memoryusage/action#getmetric'
//
one sig memoryusage_getmetric extends Action {} {
    term = "getmetric"
    scheme = "http://org.eclipse.cmf.occi.multicloud.occimonitoring/memoryusage/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Memoryusage
// ======================================================================

sig Memoryusage in Zabbixinstance {
    memoryUsage_memUsage : lone Double,
}

//
// OCCI data type Double
//
one sig Double_DataType extends DataType {} {
    name = "Double"
}

let Double=String

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

