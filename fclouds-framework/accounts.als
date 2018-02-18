// Generated at Sun Feb 18 22:12:59 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'accounts'
//
// ======================================================================

module accounts

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
// fclouds extension 'accounts'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "accounts"
    scheme = "http://occiware.org/occi/infrastructure/security#"
    import = core/extension
    kinds = cloudaccount + cloudaccountlink
    mixins = basiccredential + certificatecredential + keypaircredential + cloudcredential
    no types
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/infrastructure/security#cloudaccount'
//
// ======================================================================

one sig cloudaccount extends Kind {} {
    term = "cloudaccount"
    scheme = "http://occiware.org/occi/infrastructure/security#"
    no title
    parent = core/resource
    no attributes
    no actions
	entities.Time in this/Cloudaccount
}

// ======================================================================
// Signature for Cloudaccount
// ======================================================================

sig Cloudaccount extends core/Resource {
} {
    hasKind[cloudaccount]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/infrastructure/security#cloudaccountlink'
//
// ======================================================================

one sig cloudaccountlink extends Kind {} {
    term = "cloudaccountlink"
    scheme = "http://occiware.org/occi/infrastructure/security#"
    no title
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Cloudaccountlink
}

// ======================================================================
// Signature for Cloudaccountlink
// ======================================================================

sig Cloudaccountlink extends core/Link {
} {
    hasKind[cloudaccountlink]
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/security#basiccredential'
//
// ======================================================================

one sig basiccredential extends Mixin {} {
    term = "basiccredential"
    scheme = "http://occiware.org/occi/infrastructure/security#"
    no title
    no depends
    applies = cloudaccount
    attributes = basiccredential_username + basiccredential_password + basiccredential_url
    actions = basiccredential_updatepassword
    entities.Time in this/Basiccredential
}

//
// OCCI attribute 'username'
//
one sig basiccredential_username extends Attribute {} {
    name = "username"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'password'
//
one sig basiccredential_password extends Attribute {} {
    name = "password"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'url'
//
one sig basiccredential_url extends Attribute {} {
    name = "url"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/occi/infrastructure/security/basiccredential/action#updatepassword'
//
one sig basiccredential_updatepassword extends Action {} {
    term = "updatepassword"
    scheme = "http://occiware.org/occi/infrastructure/security/basiccredential/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Basiccredential
// ======================================================================

sig Basiccredential in Cloudaccount {
    username : lone String,
    password : lone String,
    url : lone String,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/security#certificatecredential'
//
// ======================================================================

one sig certificatecredential extends Mixin {} {
    term = "certificatecredential"
    scheme = "http://occiware.org/occi/infrastructure/security#"
    no title
    no depends
    applies = cloudaccount
    attributes = certificatecredential_publicCertificateContent + certificatecredential_privateCertifcateName
    actions = certificatecredential_generate
    entities.Time in this/Certificatecredential
}

//
// OCCI attribute 'publicCertificateContent'
//
one sig certificatecredential_publicCertificateContent extends Attribute {} {
    name = "publicCertificateContent"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'privateCertifcateName'
//
one sig certificatecredential_privateCertifcateName extends Attribute {} {
    name = "privateCertifcateName"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/occi/infrastructure/security/certificatecredential/action#generate'
//
one sig certificatecredential_generate extends Action {} {
    term = "generate"
    scheme = "http://occiware.org/occi/infrastructure/security/certificatecredential/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Certificatecredential
// ======================================================================

sig Certificatecredential in Cloudaccount {
    publicCertificateContent : lone String,
    privateCertifcateName : lone String,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/security#keypaircredential'
//
// ======================================================================

one sig keypaircredential extends Mixin {} {
    term = "keypaircredential"
    scheme = "http://occiware.org/occi/infrastructure/security#"
    no title
    no depends
    applies = cloudaccount
    attributes = keypaircredential_privateKey + keypaircredential_publicKey
    actions = keypaircredential_generate
    entities.Time in this/Keypaircredential
}

//
// OCCI attribute 'privateKey'
//
one sig keypaircredential_privateKey extends Attribute {} {
    name = "privateKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'publicKey'
//
one sig keypaircredential_publicKey extends Attribute {} {
    name = "publicKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/occi/infrastructure/security/keypaircredential/action#generate'
//
one sig keypaircredential_generate extends Action {} {
    term = "generate"
    scheme = "http://occiware.org/occi/infrastructure/security/keypaircredential/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Keypaircredential
// ======================================================================

sig Keypaircredential in Cloudaccount {
    privateKey : lone String,
    publicKey : lone String,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/infrastructure/security#cloudcredential'
//
// ======================================================================

one sig cloudcredential extends Mixin {} {
    term = "cloudcredential"
    scheme = "http://occiware.org/occi/infrastructure/security#"
    no title
    no depends
    applies = cloudaccount
    attributes = cloudcredential_accessKey + cloudcredential_secretKey + cloudcredential_url
    no actions
    entities.Time in this/Cloudcredential
}

//
// OCCI attribute 'accessKey'
//
one sig cloudcredential_accessKey extends Attribute {} {
    name = "accessKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'secretKey'
//
one sig cloudcredential_secretKey extends Attribute {} {
    name = "secretKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'url'
//
one sig cloudcredential_url extends Attribute {} {
    name = "url"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Cloudcredential
// ======================================================================

sig Cloudcredential in Cloudaccount {
//    accessKey : lone String,
//    secretKey : lone String,
//    url : lone String,
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

