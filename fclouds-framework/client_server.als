// Generated at Sun Feb 18 22:13:00 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'client_server'
//
// ======================================================================

module client_server

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open modmacao
open platform

// ======================================================================
//
// fclouds extension 'client_server'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "client_server"
    scheme = "http://schemas.modmacao.org/client_server#"
    import = core/extension + modmacao/extension + platform/extension
    no kinds
    mixins = clientserver + serverdependency + client + server
    no types
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/client_server#clientserver'
//
// ======================================================================

one sig clientserver extends Mixin {} {
    term = "clientserver"
    scheme = "http://schemas.modmacao.org/client_server#"
    no title
    depends = modmacao/application
    no applies
    no attributes
    no actions
    entities.Time in this/Clientserver
}

// ======================================================================
// Signature for Clientserver
// ======================================================================

sig Clientserver in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/client_server#serverdependency'
//
// ======================================================================

one sig serverdependency extends Mixin {} {
    term = "serverdependency"
    scheme = "http://schemas.modmacao.org/client_server#"
    no title
    depends = modmacao/executiondependency
    no applies
    no attributes
    no actions
    entities.Time in this/Serverdependency
}

// ======================================================================
// Signature for Serverdependency
// ======================================================================

sig Serverdependency in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/client_server#client'
//
// ======================================================================

one sig client extends Mixin {} {
    term = "client"
    scheme = "http://schemas.modmacao.org/client_server#"
    no title
    depends = modmacao/component
    no applies
    no attributes
    no actions
    entities.Time in this/Client
}

// ======================================================================
// Signature for Client
// ======================================================================

sig Client in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/client_server#server'
//
// ======================================================================

one sig server extends Mixin {} {
    term = "server"
    scheme = "http://schemas.modmacao.org/client_server#"
    no title
    depends = modmacao/component
    no applies
    attributes = server_server_port
    no actions
    entities.Time in this/Server
}

//
// OCCI attribute 'server.port'
//
one sig server_server_port extends Attribute {} {
    name = "server.port"
    type = modmacao/Port_DataType
    mutable = False
    required = True
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Server
// ======================================================================

sig Server in core/Entity {
    server_port : one modmacao/Port,
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

