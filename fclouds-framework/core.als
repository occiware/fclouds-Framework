// Generated at Sun Feb 18 22:13:00 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'core'
//
// ======================================================================

module core

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================


// ======================================================================
//
// fclouds extension 'core'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "core"
    scheme = "http://schemas.ogf.org/occi/core#"
    no import
    kinds = entity + resource + link
    no mixins
    types = String_DataType + Boolean_DataType + Integer_DataType
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/core#entity'
//
// ======================================================================

one sig entity extends Kind {} {
    term = "entity"
    scheme = "http://schemas.ogf.org/occi/core#"
    title = "Entity type"
    no parent
    attributes = entity_occi_core_id + entity_occi_core_title
    no actions
	entities.Time in fclouds/Entity
}

//
// OCCI attribute 'occi.core.id'
//
one sig entity_occi_core_id extends Attribute {} {
    name = "occi.core.id"
    type = String_DataType
    mutable = False
    required = True
    no default
    description = "The unique identity of the instance."
    multiple_values = False
}

//
// OCCI attribute 'occi.core.title'
//
one sig entity_occi_core_title extends Attribute {} {
    name = "occi.core.title"
    type = String_DataType
    mutable = True
    required = False
    no default
    description = "The display name of the instance."
    multiple_values = False
}

// ======================================================================
// Signature for Entity
// ======================================================================

sig Entity extends fclouds/Entity {
    occi_core_id : one String,
    occi_core_title : lone String,
} {
    hasKind[entity]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/core#resource'
//
// ======================================================================

one sig resource extends Kind {} {
    term = "resource"
    scheme = "http://schemas.ogf.org/occi/core#"
    title = "Resource type"
    parent = entity
    attributes = resource_occi_core_summary
    no actions
	entities.Time in this/Resource
}

//
// OCCI attribute 'occi.core.summary'
//
one sig resource_occi_core_summary extends Attribute {} {
    name = "occi.core.summary"
    type = String_DataType
    mutable = True
    required = False
    no default
    description = "A summarizing description of the Resource instance."
    multiple_values = False
}

// ======================================================================
// Signature for Resource
// ======================================================================

sig Resource extends this/Entity {
    occi_core_summary : lone String,
} {
    hasKind[resource]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/core#link'
//
// ======================================================================

one sig link extends Kind {} {
    term = "link"
    scheme = "http://schemas.ogf.org/occi/core#"
    title = "Link type"
    parent = entity
    no attributes
    no actions
	entities.Time in this/Link
}

// ======================================================================
// Signature for Link
// ======================================================================

sig Link extends this/Entity {
} {
    hasKind[link]
}

//
// OCCI data type String
//
one sig String_DataType extends DataType {} {
    name = "String"
}

//let String=String

//
// OCCI data type Boolean
//
one sig Boolean_DataType extends DataType {} {
    name = "Boolean"
}

let Boolean=String

//
// OCCI data type Integer
//
one sig Integer_DataType extends DataType {} {
    name = "Integer"
}

let Integer=String

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

