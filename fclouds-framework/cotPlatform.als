// Generated at Sun Feb 18 22:13:00 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'cotPlatform'
//
// ======================================================================

module cotPlatform

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open platform

// ======================================================================
//
// fclouds extension 'cotPlatform'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "cotPlatform"
    scheme = "http://org.cot.platform#"
    import = core/extension + platform/extension
    kinds = acceslink
    mixins = devicecomponent + collectorcomponent
    types = Double_DataType
}

// ======================================================================
//
// OCCI kind 'http://org.cot.platform#acceslink'
//
// ======================================================================

one sig acceslink extends Kind {} {
    term = "acceslink"
    scheme = "http://org.cot.platform#"
    no title
    parent = core/link
    attributes = acceslink_occi_accesslink_latency
    no actions
	entities.Time in this/Acceslink
}

//
// OCCI attribute 'occi.accesslink.latency'
//
one sig acceslink_occi_accesslink_latency extends Attribute {} {
    name = "occi.accesslink.latency"
    type = Double_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Acceslink
// ======================================================================

sig Acceslink extends core/Link {
    occi_accesslink_latency : lone Double,
} {
    hasKind[acceslink]
}

// ======================================================================
//
// OCCI mixin 'http://org.cot.platform#devicecomponent'
//
// ======================================================================

one sig devicecomponent extends Mixin {} {
    term = "devicecomponent"
    scheme = "http://org.cot.platform#"
    no title
    no depends
    applies = platform/component
    attributes = devicecomponent_occi_component_maxConnections
    no actions
    entities.Time in this/Devicecomponent
}

//
// OCCI attribute 'occi.component.maxConnections'
//
one sig devicecomponent_occi_component_maxConnections extends Attribute {} {
    name = "occi.component.maxConnections"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Devicecomponent
// ======================================================================

sig Devicecomponent in platform/Component {
    occi_component_maxConnections : lone core/Integer,
}

// ======================================================================
//
// OCCI mixin 'http://org.cot.platform#collectorcomponent'
//
// ======================================================================

one sig collectorcomponent extends Mixin {} {
    term = "collectorcomponent"
    scheme = "http://org.cot.platform#"
    no title
    no depends
    applies = platform/component
    attributes = collectorcomponent_occi_component_maxRequestsPerVCPU + collectorcomponent_occi_component_maxWrappersPerVCPU + collectorcomponent_occi_componenet_shareable
    no actions
    entities.Time in this/Collectorcomponent
}

//
// OCCI attribute 'occi.component.maxRequestsPerVCPU'
//
one sig collectorcomponent_occi_component_maxRequestsPerVCPU extends Attribute {} {
    name = "occi.component.maxRequestsPerVCPU"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.component.maxWrappersPerVCPU'
//
one sig collectorcomponent_occi_component_maxWrappersPerVCPU extends Attribute {} {
    name = "occi.component.maxWrappersPerVCPU"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.componenet.shareable'
//
one sig collectorcomponent_occi_componenet_shareable extends Attribute {} {
    name = "occi.componenet.shareable"
    type = core/Boolean_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Collectorcomponent
// ======================================================================

sig Collectorcomponent in platform/Component {
    occi_component_maxRequestsPerVCPU : lone core/Integer,
    occi_component_maxWrappersPerVCPU : lone core/Integer,
    occi_componenet_shareable : lone core/Boolean,
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

