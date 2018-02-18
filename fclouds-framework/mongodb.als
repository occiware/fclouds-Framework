// Generated at Sun Feb 18 22:13:04 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'mongodb'
//
// ======================================================================

module mongodb

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
// fclouds extension 'mongodb'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "mongodb"
    scheme = "http://schemas.modmacao.org/mongodb#"
    import = core/extension + modmacao/extension
    no kinds
    mixins = mongodbcomponent + configserver + router + shard + this/cluster + replicablemongodbcomponent + configserverdependency
    no types
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/mongodb#mongodbcomponent'
//
// ======================================================================

one sig mongodbcomponent extends Mixin {} {
    term = "mongodbcomponent"
    scheme = "http://schemas.modmacao.org/mongodb#"
    no title
    depends = modmacao/component
    no applies
    attributes = mongodbcomponent_mongodb_port + mongodbcomponent_mongodb_bindip
    no actions
    entities.Time in this/Mongodbcomponent
}

//
// OCCI attribute 'mongodb.port'
//
one sig mongodbcomponent_mongodb_port extends Attribute {} {
    name = "mongodb.port"
    type = modmacao/Port_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'mongodb.bindip'
//
one sig mongodbcomponent_mongodb_bindip extends Attribute {} {
    name = "mongodb.bindip"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Mongodbcomponent
// ======================================================================

sig Mongodbcomponent in core/Entity {
    mongodb_port : lone modmacao/Port,
    mongodb_bindip : lone String,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/mongodb#configserver'
//
// ======================================================================

one sig configserver extends Mixin {} {
    term = "configserver"
    scheme = "http://schemas.modmacao.org/mongodb#"
    no title
    depends = replicablemongodbcomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Configserver
}

// ======================================================================
// Signature for Configserver
// ======================================================================

sig Configserver in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/mongodb#router'
//
// ======================================================================

one sig router extends Mixin {} {
    term = "router"
    scheme = "http://schemas.modmacao.org/mongodb#"
    no title
    depends = mongodbcomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Router
}

// ======================================================================
// Signature for Router
// ======================================================================

sig Router in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/mongodb#shard'
//
// ======================================================================

one sig shard extends Mixin {} {
    term = "shard"
    scheme = "http://schemas.modmacao.org/mongodb#"
    no title
    depends = replicablemongodbcomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Shard
}

// ======================================================================
// Signature for Shard
// ======================================================================

sig Shard in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/mongodb#cluster'
//
// ======================================================================

one sig cluster extends Mixin {} {
    term = "cluster"
    scheme = "http://schemas.modmacao.org/mongodb#"
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
// OCCI mixin 'http://schemas.modmacao.org/mongodb#replicablemongodbcomponent'
//
// ======================================================================

one sig replicablemongodbcomponent extends Mixin {} {
    term = "replicablemongodbcomponent"
    scheme = "http://schemas.modmacao.org/mongodb#"
    no title
    depends = mongodbcomponent
    no applies
    attributes = replicablemongodbcomponent_mongodb_replication_set_name
    no actions
    entities.Time in this/Replicablemongodbcomponent
}

//
// OCCI attribute 'mongodb.replication.set.name'
//
one sig replicablemongodbcomponent_mongodb_replication_set_name extends Attribute {} {
    name = "mongodb.replication.set.name"
    type = core/String_DataType
    mutable = True
    required = True
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Replicablemongodbcomponent
// ======================================================================

sig Replicablemongodbcomponent in core/Entity {
    mongodb_replication_set_name : one String,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/mongodb#configserverdependency'
//
// ======================================================================

one sig configserverdependency extends Mixin {} {
    term = "configserverdependency"
    scheme = "http://schemas.modmacao.org/mongodb#"
    no title
    depends = modmacao/executiondependency
    no applies
    no attributes
    no actions
    entities.Time in this/Configserverdependency
}

// ======================================================================
// Signature for Configserverdependency
// ======================================================================

sig Configserverdependency in core/Entity {
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

