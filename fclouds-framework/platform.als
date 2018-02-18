// Generated at Sun Feb 18 22:13:05 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'platform'
//
// ======================================================================

module platform

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
// fclouds extension 'platform'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "platform"
    scheme = "http://schemas.ogf.org/occi/platform#"
    import = core/extension
    kinds = application + component + componentlink
    mixins = app_tpl + res_tpl + database + databaselink
    types = URL_DataType + URI_DataType + Status_DataType
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/platform#application'
//
// ======================================================================

one sig application extends Kind {} {
    term = "application"
    scheme = "http://schemas.ogf.org/occi/platform#"
    title = "Application"
    parent = core/resource
    attributes = application_occi_app_name + application_occi_app_context + application_occi_app_url + application_occi_app_state + application_occi_app_state_message
    actions = application_start + application_stop
	entities.Time in this/Application
}

//
// OCCI attribute 'occi.app.name'
//
one sig application_occi_app_name extends Attribute {} {
    name = "occi.app.name"
    type = core/String_DataType
    mutable = True
    required = True
    no default
    description = "Name of the application."
    multiple_values = False
}

//
// OCCI attribute 'occi.app.context'
//
one sig application_occi_app_context extends Attribute {} {
    name = "occi.app.context"
    type = URL_DataType
    mutable = False
    required = True
    no default
    description = "URL for contextualizing the app."
    multiple_values = False
}

//
// OCCI attribute 'occi.app.url'
//
one sig application_occi_app_url extends Attribute {} {
    name = "occi.app.url"
    type = URL_DataType
    mutable = False
    required = True
    no default
    description = "DNS entry."
    multiple_values = False
}

//
// OCCI attribute 'occi.app.state'
//
one sig application_occi_app_state extends Attribute {} {
    name = "occi.app.state"
    type = Status_DataType
    mutable = False
    required = True
    no default
    description = "State of the application."
    multiple_values = False
}

//
// OCCI attribute 'occi.app.state.message'
//
one sig application_occi_app_state_message extends Attribute {} {
    name = "occi.app.state.message"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "Human-readable explanation of the current instance state."
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/platform/application/action#start'
//
one sig application_start extends Action {} {
    term = "start"
    scheme = "http://schemas.ogf.org/occi/platform/application/action#"
    title = "Start the application."
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/platform/application/action#stop'
//
one sig application_stop extends Action {} {
    term = "stop"
    scheme = "http://schemas.ogf.org/occi/platform/application/action#"
    title = "Stop the application."
    no attributes
}


// ======================================================================
// Signature for Application
// ======================================================================

sig Application extends core/Resource {
    occi_app_name : one String,
    occi_app_context : one URL,
    occi_app_url : one URL,
    occi_app_state : one Status,
    occi_app_state_message : lone String,
} {
    hasKind[application]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/platform#component'
//
// ======================================================================

one sig component extends Kind {} {
    term = "component"
    scheme = "http://schemas.ogf.org/occi/platform#"
    title = "Component"
    parent = core/resource
    attributes = component_occi_component_state + component_occi_component_state_message
    actions = component_start + component_stop
	entities.Time in this/Component
}

//
// OCCI attribute 'occi.component.state'
//
one sig component_occi_component_state extends Attribute {} {
    name = "occi.component.state"
    type = Status_DataType
    mutable = False
    required = True
    no default
    description = "State of the component."
    multiple_values = False
}

//
// OCCI attribute 'occi.component.state.message'
//
one sig component_occi_component_state_message extends Attribute {} {
    name = "occi.component.state.message"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "Human-readable explanation of the current instance state."
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/platform/component/action#start'
//
one sig component_start extends Action {} {
    term = "start"
    scheme = "http://schemas.ogf.org/occi/platform/component/action#"
    title = "Start the application."
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/platform/component/action#stop'
//
one sig component_stop extends Action {} {
    term = "stop"
    scheme = "http://schemas.ogf.org/occi/platform/component/action#"
    title = "Stop the application."
    no attributes
}


// ======================================================================
// Signature for Component
// ======================================================================

sig Component extends core/Resource {
    occi_component_state : one Status,
    occi_component_state_message : lone String,
} {
    hasKind[component]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/platform#componentlink'
//
// ======================================================================

one sig componentlink extends Kind {} {
    term = "componentlink"
    scheme = "http://schemas.ogf.org/occi/platform#"
    title = "ComponentLink"
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Componentlink
}

// ======================================================================
// Signature for Componentlink
// ======================================================================

sig Componentlink extends core/Link {
} {
    hasKind[componentlink]
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/platform#app_tpl'
//
// ======================================================================

one sig app_tpl extends Mixin {} {
    term = "app_tpl"
    scheme = "http://schemas.ogf.org/occi/platform#"
    title = "Application Template"
    no depends
    applies = application
    no attributes
    no actions
    entities.Time in this/App_tpl
}

// ======================================================================
// Signature for App_tpl
// ======================================================================

sig App_tpl in Application {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/platform#res_tpl'
//
// ======================================================================

one sig res_tpl extends Mixin {} {
    term = "res_tpl"
    scheme = "http://schemas.ogf.org/occi/platform#"
    title = "Resource Template"
    no depends
    applies = application + component
    no attributes
    no actions
    entities.Time in this/Res_tpl
}

// ======================================================================
// Signature for Res_tpl
// ======================================================================

sig Res_tpl in Application + Component {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/platform#database'
//
// ======================================================================

one sig database extends Mixin {} {
    term = "database"
    scheme = "http://schemas.ogf.org/occi/platform#"
    title = "Database Mixin"
    no depends
    applies = component
    attributes = database_occi_database_version
    no actions
    entities.Time in this/Database
}

//
// OCCI attribute 'occi.database.version'
//
one sig database_occi_database_version extends Attribute {} {
    name = "occi.database.version"
    type = core/String_DataType
    mutable = False
    required = True
    no default
    description = "Version of the database."
    multiple_values = False
}

// ======================================================================
// Signature for Database
// ======================================================================

sig Database in Component {
    occi_database_version : one String,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/platform#databaselink'
//
// ======================================================================

one sig databaselink extends Mixin {} {
    term = "databaselink"
    scheme = "http://schemas.ogf.org/occi/platform#"
    title = "Database Link"
    no depends
    applies = componentlink
    attributes = databaselink_occi_database_uri + databaselink_occi_database_username + databaselink_occi_database_token
    no actions
    entities.Time in this/Databaselink
}

//
// OCCI attribute 'occi.database.uri'
//
one sig databaselink_occi_database_uri extends Attribute {} {
    name = "occi.database.uri"
    type = URI_DataType
    mutable = False
    required = True
    no default
    description = "Connection URI for the database."
    multiple_values = False
}

//
// OCCI attribute 'occi.database.username'
//
one sig databaselink_occi_database_username extends Attribute {} {
    name = "occi.database.username"
    type = URI_DataType
    mutable = False
    required = False
    no default
    description = "Username."
    multiple_values = False
}

//
// OCCI attribute 'occi.database.token'
//
one sig databaselink_occi_database_token extends Attribute {} {
    name = "occi.database.token"
    type = URI_DataType
    mutable = False
    required = False
    no default
    description = "Token."
    multiple_values = False
}

// ======================================================================
// Signature for Databaselink
// ======================================================================

sig Databaselink in Componentlink {
    occi_database_uri : one this/URI,
    occi_database_username : lone this/URI,
    occi_database_token : lone this/URI,
}

//
// OCCI data type URL
//
one sig URL_DataType extends DataType {} {
    name = "URL"
}

let URL=String

//
// OCCI data type URI
//
one sig URI_DataType extends DataType {} {
    name = "URI"
}

let URI=String

//
// OCCI data type Status
//
one sig Status_DataType extends DataType {} {
    name = "Status"
}

let Status=String

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

