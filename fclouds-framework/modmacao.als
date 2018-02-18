// Generated at Sun Feb 18 22:13:04 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'modmacao'
//
// ======================================================================

module modmacao

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open platform
open infrastructure

// ======================================================================
//
// fclouds extension 'modmacao'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "modmacao"
    scheme = "http://schemas.modmacao.org/modmacao#"
    import = core/extension + platform/extension + infrastructure/extension
    no kinds
    mixins = application + dependency + component + cluster + installationdependency + executiondependency
    types = Version_DataType + Port_DataType
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/modmacao#application'
//
// ======================================================================

one sig application extends Mixin {} {
    term = "application"
    scheme = "http://schemas.modmacao.org/modmacao#"
    no title
    no depends
    applies = platform/application
    no attributes
    no actions
    entities.Time in this/Application
}

// ======================================================================
// Signature for Application
// ======================================================================

sig Application in platform/Application {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/modmacao#dependency'
//
// ======================================================================

one sig dependency extends Mixin {} {
    term = "dependency"
    scheme = "http://schemas.modmacao.org/modmacao#"
    no title
    no depends
    applies = platform/componentlink
    no attributes
    no actions
    entities.Time in this/Dependency
}

// ======================================================================
// Signature for Dependency
// ======================================================================

sig Dependency in platform/Componentlink {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/modmacao#component'
//
// ======================================================================

one sig component extends Mixin {} {
    term = "component"
    scheme = "http://schemas.modmacao.org/modmacao#"
    no title
    no depends
    applies = platform/component
    attributes = component_modmacao_component_version
    no actions
    entities.Time in this/Component
}

//
// OCCI attribute 'modmacao.component.version'
//
one sig component_modmacao_component_version extends Attribute {} {
    name = "modmacao.component.version"
    type = Version_DataType
    mutable = False
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Component
// ======================================================================

sig Component in platform/Component {
    modmacao_component_version : lone Version,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/modmacao#cluster'
//
// ======================================================================

one sig cluster extends Mixin {} {
    term = "cluster"
    scheme = "http://schemas.modmacao.org/modmacao#"
    no title
    depends = application
    no applies
    no attributes
    no actions
    entities.Time in this/Cluster
}

// ======================================================================
// Signature for Cluster
// ======================================================================

sig Cluster in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/modmacao#installationdependency'
//
// ======================================================================

one sig installationdependency extends Mixin {} {
    term = "installationdependency"
    scheme = "http://schemas.modmacao.org/modmacao#"
    no title
    depends = dependency
    no applies
    no attributes
    no actions
    entities.Time in this/Installationdependency
}

// ======================================================================
// Signature for Installationdependency
// ======================================================================

sig Installationdependency in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/modmacao#executiondependency'
//
// ======================================================================

one sig executiondependency extends Mixin {} {
    term = "executiondependency"
    scheme = "http://schemas.modmacao.org/modmacao#"
    no title
    depends = dependency
    no applies
    no attributes
    no actions
    entities.Time in this/Executiondependency
}

// ======================================================================
// Signature for Executiondependency
// ======================================================================

sig Executiondependency in core/Entity {
}

//
// OCCI data type Version
//
one sig Version_DataType extends DataType {} {
    name = "Version"
}

let Version=String

//
// OCCI data type Port
//
one sig Port_DataType extends DataType {} {
    name = "Port"
}

let Port=String

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

