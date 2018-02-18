// Generated at Sun Feb 18 22:13:03 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'lamp'
//
// ======================================================================

module lamp

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
// fclouds extension 'lamp'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "lamp"
    scheme = "http://schemas.modmacao.org/lamp#"
    import = core/extension + modmacao/extension
    no kinds
    mixins = lamp + apacheserver + tomcat + mysql + tomcatdependency + mysqldependency
    no types
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/lamp#lamp'
//
// ======================================================================

one sig lamp extends Mixin {} {
    term = "lamp"
    scheme = "http://schemas.modmacao.org/lamp#"
    no title
    depends = modmacao/application
    no applies
    no attributes
    no actions
    entities.Time in this/Lamp
}

// ======================================================================
// Signature for Lamp
// ======================================================================

sig Lamp in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/lamp#apacheserver'
//
// ======================================================================

one sig apacheserver extends Mixin {} {
    term = "apacheserver"
    scheme = "http://schemas.modmacao.org/lamp#"
    no title
    depends = modmacao/component
    no applies
    no attributes
    no actions
    entities.Time in this/Apacheserver
}

// ======================================================================
// Signature for Apacheserver
// ======================================================================

sig Apacheserver in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/lamp#tomcat'
//
// ======================================================================

one sig tomcat extends Mixin {} {
    term = "tomcat"
    scheme = "http://schemas.modmacao.org/lamp#"
    no title
    depends = modmacao/component
    no applies
    no attributes
    no actions
    entities.Time in this/Tomcat
}

// ======================================================================
// Signature for Tomcat
// ======================================================================

sig Tomcat in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/lamp#mysql'
//
// ======================================================================

one sig mysql extends Mixin {} {
    term = "mysql"
    scheme = "http://schemas.modmacao.org/lamp#"
    no title
    depends = modmacao/component
    no applies
    no attributes
    no actions
    entities.Time in this/Mysql
}

// ======================================================================
// Signature for Mysql
// ======================================================================

sig Mysql in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/lamp#tomcatdependency'
//
// ======================================================================

one sig tomcatdependency extends Mixin {} {
    term = "tomcatdependency"
    scheme = "http://schemas.modmacao.org/lamp#"
    no title
    depends = modmacao/executiondependency
    no applies
    no attributes
    no actions
    entities.Time in this/Tomcatdependency
}

// ======================================================================
// Signature for Tomcatdependency
// ======================================================================

sig Tomcatdependency in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/lamp#mysqldependency'
//
// ======================================================================

one sig mysqldependency extends Mixin {} {
    term = "mysqldependency"
    scheme = "http://schemas.modmacao.org/lamp#"
    no title
    depends = modmacao/executiondependency
    no applies
    no attributes
    no actions
    entities.Time in this/Mysqldependency
}

// ======================================================================
// Signature for Mysqldependency
// ======================================================================

sig Mysqldependency in core/Entity {
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

