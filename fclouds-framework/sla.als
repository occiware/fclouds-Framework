// Generated at Sun Feb 18 22:13:05 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'sla'
//
// ======================================================================

module sla

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
// fclouds extension 'sla'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "sla"
    scheme = "http://schemas.ogf.org/occi/sla#"
    import = core/extension
    kinds = agreement + agreement_link
    mixins = agreement_tpl + agreement_term
    types = DateTime_DataType + AgreementStatus_DataType + AgreementTermType_DataType + AgreementTermStatus_DataType
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/sla#agreement'
//
// ======================================================================

one sig agreement extends Kind {} {
    term = "agreement"
    scheme = "http://schemas.ogf.org/occi/sla#"
    title = "A Service Level Agreement"
    parent = core/resource
    attributes = agreement_occi_agreement_state + agreement_occi_agreement_agreedAt + agreement_occi_agreement_effectiveFrom + agreement_occi_agreement_effectiveUntil
    actions = agreement_accept + agreement_reject + agreement_suspend + agreement_resume + agreement_terminate
	entities.Time in this/Agreement
}

//
// OCCI attribute 'occi.agreement.state'
//
one sig agreement_occi_agreement_state extends Attribute {} {
    name = "occi.agreement.state"
    type = AgreementStatus_DataType
    mutable = False
    required = True
    no default
    description = "Current state of the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.agreement.agreedAt'
//
one sig agreement_occi_agreement_agreedAt extends Attribute {} {
    name = "occi.agreement.agreedAt"
    type = DateTime_DataType
    mutable = False
    required = False
    no default
    description = "The point in time when the agreement was made"
    multiple_values = False
}

//
// OCCI attribute 'occi.agreement.effectiveFrom'
//
one sig agreement_occi_agreement_effectiveFrom extends Attribute {} {
    name = "occi.agreement.effectiveFrom"
    type = DateTime_DataType
    mutable = True
    required = False
    no default
    description = "The point in time when the agreement’s effectiveness begins"
    multiple_values = False
}

//
// OCCI attribute 'occi.agreement.effectiveUntil'
//
one sig agreement_occi_agreement_effectiveUntil extends Attribute {} {
    name = "occi.agreement.effectiveUntil"
    type = DateTime_DataType
    mutable = True
    required = False
    no default
    description = "The point in time when the agreement’s effectiveness ends"
    multiple_values = False
}

//
// OCCI action 'http://schemas.ogf.org/occi/sla/agreement/action#accept'
//
one sig agreement_accept extends Action {} {
    term = "accept"
    scheme = "http://schemas.ogf.org/occi/sla/agreement/action#"
    title = "Accept an agreement."
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/sla/agreement/action#reject'
//
one sig agreement_reject extends Action {} {
    term = "reject"
    scheme = "http://schemas.ogf.org/occi/sla/agreement/action#"
    title = "Reject an agreement."
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/sla/agreement/action#suspend'
//
one sig agreement_suspend extends Action {} {
    term = "suspend"
    scheme = "http://schemas.ogf.org/occi/sla/agreement/action#"
    title = "Suspend an agreement."
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/sla/agreement/action#resume'
//
one sig agreement_resume extends Action {} {
    term = "resume"
    scheme = "http://schemas.ogf.org/occi/sla/agreement/action#"
    title = "Resume an agreement."
    no attributes
}


//
// OCCI action 'http://schemas.ogf.org/occi/sla/agreement/action#terminate'
//
one sig agreement_terminate extends Action {} {
    term = "terminate"
    scheme = "http://schemas.ogf.org/occi/sla/agreement/action#"
    title = "Terminate an agreement."
    no attributes
}


// ======================================================================
// Signature for Agreement
// ======================================================================

sig Agreement extends core/Resource {
    occi_agreement_state : one AgreementStatus,
    occi_agreement_agreedAt : lone DateTime,
    occi_agreement_effectiveFrom : lone DateTime,
    occi_agreement_effectiveUntil : lone DateTime,
} {
    hasKind[agreement]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/sla#agreement_link'
//
// ======================================================================

one sig agreement_link extends Kind {} {
    term = "agreement_link"
    scheme = "http://schemas.ogf.org/occi/sla#"
    title = "Link between a SLA and its associated resource"
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Agreement_link
}

// ======================================================================
// Signature for Agreement_link
// ======================================================================

sig Agreement_link extends core/Link {
} {
    hasKind[agreement_link]
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/sla#agreement_tpl'
//
// ======================================================================

one sig agreement_tpl extends Mixin {} {
    term = "agreement_tpl"
    scheme = "http://schemas.ogf.org/occi/sla#"
    title = "Mixin defining a SLA template collection"
    no depends
    applies = agreement
    no attributes
    no actions
    entities.Time in this/Agreement_tpl
}

// ======================================================================
// Signature for Agreement_tpl
// ======================================================================

sig Agreement_tpl in Agreement {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/sla#agreement_term'
//
// ======================================================================

one sig agreement_term extends Mixin {} {
    term = "agreement_term"
    scheme = "http://schemas.ogf.org/occi/sla#"
    title = "Mixin defining a Term collection for an agreement"
    no depends
    applies = agreement
    attributes = agreement_term_occi_agreement_term_type + agreement_term_occi_agreement_term_state + agreement_term_occi_agreement_term_desc + agreement_term_occi_agreement_term_remedy
    no actions
    entities.Time in this/Agreement_term
}

//
// OCCI attribute 'occi.agreement.term.type'
//
one sig agreement_term_occi_agreement_term_type extends Attribute {} {
    name = "occi.agreement.term.type"
    type = AgreementTermType_DataType
    mutable = False
    required = True
    no default
    description = "The type of the term that is being defined."
    multiple_values = False
}

//
// OCCI attribute 'occi.agreement.term.state'
//
one sig agreement_term_occi_agreement_term_state extends Attribute {} {
    name = "occi.agreement.term.state"
    type = AgreementTermStatus_DataType
    mutable = False
    required = True
    no default
    description = "The state of fulfillment of the specific term."
    multiple_values = False
}

//
// OCCI attribute 'occi.agreement.term.desc'
//
one sig agreement_term_occi_agreement_term_desc extends Attribute {} {
    name = "occi.agreement.term.desc"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "The description of the agreement term defined with this mixin."
    multiple_values = False
}

//
// OCCI attribute 'occi.agreement.term.remedy'
//
one sig agreement_term_occi_agreement_term_remedy extends Attribute {} {
    name = "occi.agreement.term.remedy"
    type = core/String_DataType
    mutable = False
    required = False
    no default
    description = "The remedy value (e.g., price penalty) or action e.g., command) when an SLO term is being violated."
    multiple_values = False
}

// ======================================================================
// Signature for Agreement_term
// ======================================================================

sig Agreement_term in Agreement {
    occi_agreement_term_type : one AgreementTermType,
    occi_agreement_term_state : one AgreementTermStatus,
    occi_agreement_term_desc : lone String,
    occi_agreement_term_remedy : lone String,
}

//
// OCCI data type DateTime
//
one sig DateTime_DataType extends DataType {} {
    name = "DateTime"
}

let DateTime=String

//
// OCCI data type AgreementStatus
//
one sig AgreementStatus_DataType extends DataType {} {
    name = "AgreementStatus"
}

let AgreementStatus=String

//
// OCCI data type AgreementTermType
//
one sig AgreementTermType_DataType extends DataType {} {
    name = "AgreementTermType"
}

let AgreementTermType=String

//
// OCCI data type AgreementTermStatus
//
one sig AgreementTermStatus_DataType extends DataType {} {
    name = "AgreementTermStatus"
}

let AgreementTermStatus=String

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

