// Generated at Sun Feb 18 22:12:59 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'apache_cassandra'
//
// ======================================================================

module apache_cassandra

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open modmacao

// ======================================================================
//
// fclouds extension 'apache_cassandra'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "apache_cassandra"
    scheme = "http://schemas.modmacao.org/apache/cassandra#"
    import = core/extension + modmacao/extension
    no kinds
    mixins = this/cluster + node + seed
    no types
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/apache/cassandra#cluster'
//
// ======================================================================

one sig cluster extends Mixin {} {
    term = "cluster"
    scheme = "http://schemas.modmacao.org/apache/cassandra#"
    no title
    depends = modmacao/cluster
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
// OCCI mixin 'http://schemas.modmacao.org/apache/cassandra#node'
//
// ======================================================================

one sig node extends Mixin {} {
    term = "node"
    scheme = "http://schemas.modmacao.org/apache/cassandra#"
    no title
    depends = modmacao/component
    no applies
    no attributes
    no actions
    entities.Time in this/Node
}

// ======================================================================
// Signature for Node
// ======================================================================

sig Node in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/apache/cassandra#seed'
//
// ======================================================================

one sig seed extends Mixin {} {
    term = "seed"
    scheme = "http://schemas.modmacao.org/apache/cassandra#"
    no title
    depends = node
    no applies
    no attributes
    no actions
    entities.Time in this/Seed
}

// ======================================================================
// Signature for Seed
// ======================================================================

sig Seed in core/Entity {
}

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

