// Generated at Sun Feb 18 22:13:00 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'cotGraphRepresentation'
//
// ======================================================================

module cotGraphRepresentation

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
// fclouds extension 'cotGraphRepresentation'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "cotGraphRepresentation"
    scheme = "http://org.cot.graph.representation#"
    import = core/extension
    kinds = node + networklink + nodelink
    no mixins
    types = Double_DataType
}

// ======================================================================
//
// OCCI kind 'http://org.cot.graph.representation#node'
//
// ======================================================================

one sig node extends Kind {} {
    term = "node"
    scheme = "http://org.cot.graph.representation#"
    no title
    parent = core/resource
    no attributes
    no actions
	entities.Time in this/Node
}

// ======================================================================
// Signature for Node
// ======================================================================

sig Node extends core/Resource {
} {
    hasKind[node]
}

// ======================================================================
//
// OCCI kind 'http://org.cot.graph.representation#networklink'
//
// ======================================================================

one sig networklink extends Kind {} {
    term = "networklink"
    scheme = "http://org.cot.graph.representation#"
    no title
    parent = core/link
    attributes = networklink_occi_networklink_bandwidth + networklink_occi_networklink_hops + networklink_occi_networklink_latency
    no actions
	entities.Time in this/Networklink
}

//
// OCCI attribute 'occi.networklink.bandwidth'
//
one sig networklink_occi_networklink_bandwidth extends Attribute {} {
    name = "occi.networklink.bandwidth"
    type = Double_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.networklink.hops'
//
one sig networklink_occi_networklink_hops extends Attribute {} {
    name = "occi.networklink.hops"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.networklink.latency'
//
one sig networklink_occi_networklink_latency extends Attribute {} {
    name = "occi.networklink.latency"
    type = Double_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Networklink
// ======================================================================

sig Networklink extends core/Link {
    occi_networklink_bandwidth : lone Double,
    occi_networklink_hops : lone core/Integer,
    occi_networklink_latency : lone Double,
} {
    hasKind[networklink]
}

// ======================================================================
//
// OCCI kind 'http://org.cot.graph.representation#nodelink'
//
// ======================================================================

one sig nodelink extends Kind {} {
    term = "nodelink"
    scheme = "http://org.cot.graph.representation#"
    no title
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Nodelink
}

// ======================================================================
// Signature for Nodelink
// ======================================================================

sig Nodelink extends core/Link {
} {
    hasKind[nodelink]
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

