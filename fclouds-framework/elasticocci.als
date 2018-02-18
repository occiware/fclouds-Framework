// Generated at Sun Feb 18 22:43:54 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'elasticocci'
//
// ======================================================================

module elasticocci

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open infrastructure
open vmware
open occimonitoring

// ======================================================================
//
// fclouds extension 'elasticocci'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "elasticocci"
    scheme = "http://occiware.org/occi/multicloud/elasticocci#"
    import = core/extension + infrastructure/extension + vmware/extension + occimonitoring/extension
    kinds = elasticcontroller + elasticlink
    mixins = strategy + strategycompute + strategycpu + strategymemory
    types = ModeType_DataType + DirectionType_DataType + this/Double_DataType + DateType_DataType + RelationalType_DataType
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/multicloud/elasticocci#elasticcontroller'
//
// ======================================================================

one sig elasticcontroller extends Kind {} {
    term = "elasticcontroller"
    scheme = "http://occiware.org/occi/multicloud/elasticocci#"
    no title
    parent = core/resource
    no attributes
    no actions
	entities.Time in this/Elasticcontroller
}

// ======================================================================
// Signature for Elasticcontroller
// ======================================================================

sig Elasticcontroller extends core/Resource {
} {
    hasKind[elasticcontroller]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/multicloud/elasticocci#elasticlink'
//
// ======================================================================

one sig elasticlink extends Kind {} {
    term = "elasticlink"
    scheme = "http://occiware.org/occi/multicloud/elasticocci#"
    no title
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Elasticlink
}

// ======================================================================
// Signature for Elasticlink
// ======================================================================

sig Elasticlink extends core/Link {
} {
    hasKind[elasticlink]
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/multicloud/elasticocci#strategy'
//
// ======================================================================

one sig strategy extends Mixin {} {
    term = "strategy"
    scheme = "http://occiware.org/occi/multicloud/elasticocci#"
    no title
    no depends
    applies = elasticcontroller
    no attributes
    no actions
    entities.Time in this/Strategy
}

// ======================================================================
// Signature for Strategy
// ======================================================================

sig Strategy in Elasticcontroller {
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/multicloud/elasticocci#strategycompute'
//
// ======================================================================

one sig strategycompute extends Mixin {} {
    term = "strategycompute"
    scheme = "http://occiware.org/occi/multicloud/elasticocci#"
    no title
    depends = strategy
    no applies
    attributes = strategycompute_StrategyCompute_uthreshold + strategycompute_StrategyCompute_breathDown + strategycompute_StrategyCompute_breathUp + strategycompute_StrategyCompute_pollTime + strategycompute_StrategyCompute_lthreshold
    no actions
    entities.Time in this/Strategycompute
}

//
// OCCI attribute 'StrategyCompute.uthreshold'
//
one sig strategycompute_StrategyCompute_uthreshold extends Attribute {} {
    name = "StrategyCompute.uthreshold"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "90"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCompute.breathDown'
//
one sig strategycompute_StrategyCompute_breathDown extends Attribute {} {
    name = "StrategyCompute.breathDown"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "20000"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCompute.breathUp'
//
one sig strategycompute_StrategyCompute_breathUp extends Attribute {} {
    name = "StrategyCompute.breathUp"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "40000"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCompute.pollTime'
//
one sig strategycompute_StrategyCompute_pollTime extends Attribute {} {
    name = "StrategyCompute.pollTime"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "10000"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCompute.lthreshold'
//
one sig strategycompute_StrategyCompute_lthreshold extends Attribute {} {
    name = "StrategyCompute.lthreshold"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "70"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Strategycompute
// ======================================================================

sig Strategycompute in core/Entity {
    StrategyCompute_uthreshold : lone core/Integer,
    StrategyCompute_breathDown : lone core/Integer,
    StrategyCompute_breathUp : lone core/Integer,
    StrategyCompute_pollTime : lone core/Integer,
    StrategyCompute_lthreshold : lone core/Integer,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/multicloud/elasticocci#strategycpu'
//
// ======================================================================

one sig strategycpu extends Mixin {} {
    term = "strategycpu"
    scheme = "http://occiware.org/occi/multicloud/elasticocci#"
    no title
    depends = strategycompute
    applies = elasticcontroller
    attributes = strategycpu_StrategyCPU_upperLimit + strategycpu_StrategyCPU_lowerLimit + strategycpu_StrategyCPU_mode + strategycpu_StrategyCPU_direction + strategycpu_StrategyCPU_stepCPUDecrease + strategycpu_StrategyCPU_stepCPUIncrease + strategycpu_StrategyCPU_date + strategycpu_StrategyCPU_increaseRelationalOp + strategycpu_StrategyCPU_decreaseRelationalOp
    actions = strategycpu_start + strategycpu_stop
    entities.Time in this/Strategycpu
}

//
// OCCI attribute 'StrategyCPU.upperLimit'
//
one sig strategycpu_StrategyCPU_upperLimit extends Attribute {} {
    name = "StrategyCPU.upperLimit"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "7"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCPU.lowerLimit'
//
one sig strategycpu_StrategyCPU_lowerLimit extends Attribute {} {
    name = "StrategyCPU.lowerLimit"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "1"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCPU.mode'
//
one sig strategycpu_StrategyCPU_mode extends Attribute {} {
    name = "StrategyCPU.mode"
    type = ModeType_DataType
    mutable = True
    required = False
    default = "scheduled"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCPU.direction'
//
one sig strategycpu_StrategyCPU_direction extends Attribute {} {
    name = "StrategyCPU.direction"
    type = DirectionType_DataType
    mutable = True
    required = False
    default = "up"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCPU.stepCPUDecrease'
//
one sig strategycpu_StrategyCPU_stepCPUDecrease extends Attribute {} {
    name = "StrategyCPU.stepCPUDecrease"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "1"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCPU.stepCPUIncrease'
//
one sig strategycpu_StrategyCPU_stepCPUIncrease extends Attribute {} {
    name = "StrategyCPU.stepCPUIncrease"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "1"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCPU.date'
//
one sig strategycpu_StrategyCPU_date extends Attribute {} {
    name = "StrategyCPU.date"
    type = DateType_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCPU.increaseRelationalOp'
//
one sig strategycpu_StrategyCPU_increaseRelationalOp extends Attribute {} {
    name = "StrategyCPU.increaseRelationalOp"
    type = RelationalType_DataType
    mutable = True
    required = False
    default = "greaterThan"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyCPU.decreaseRelationalOp'
//
one sig strategycpu_StrategyCPU_decreaseRelationalOp extends Attribute {} {
    name = "StrategyCPU.decreaseRelationalOp"
    type = RelationalType_DataType
    mutable = True
    required = False
    default = "lessThan"
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/occi/multicloud/elasticocci/strategycpu/action#start'
//
one sig strategycpu_start extends Action {} {
    term = "start"
    scheme = "http://occiware.org/occi/multicloud/elasticocci/strategycpu/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/occi/multicloud/elasticocci/strategycpu/action#stop'
//
one sig strategycpu_stop extends Action {} {
    term = "stop"
    scheme = "http://occiware.org/occi/multicloud/elasticocci/strategycpu/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Strategycpu
// ======================================================================

sig Strategycpu in Elasticcontroller {
    StrategyCPU_upperLimit : lone core/Integer,
    StrategyCPU_lowerLimit : lone core/Integer,
    StrategyCPU_mode : lone ModeType,
    StrategyCPU_direction : lone DirectionType,
    StrategyCPU_stepCPUDecrease : lone core/Integer,
    StrategyCPU_stepCPUIncrease : lone core/Integer,
    StrategyCPU_date : lone DateType,
    StrategyCPU_increaseRelationalOp : lone RelationalType,
    StrategyCPU_decreaseRelationalOp : lone RelationalType,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/occi/multicloud/elasticocci#strategymemory'
//
// ======================================================================

one sig strategymemory extends Mixin {} {
    term = "strategymemory"
    scheme = "http://occiware.org/occi/multicloud/elasticocci#"
    no title
    depends = strategycompute
    applies = elasticcontroller
    attributes = strategymemory_StrategyMemory_mode + strategymemory_StrategyMemory_direction + strategymemory_StrategyMemory_stepMemDecrease + strategymemory_StrategyMemory_stepMemIncrease + strategymemory_StrategyMemory_upperLimit + strategymemory_StrategyMemory_lowerLimit + strategymemory_StrategyMemory_date + strategymemory_StrategyMemory_increaseRelationalOp + strategymemory_StrategyMemory_decreaseRelationalOp
    actions = strategymemory_stop + strategymemory_start
    entities.Time in this/Strategymemory
}

//
// OCCI attribute 'StrategyMemory.mode'
//
one sig strategymemory_StrategyMemory_mode extends Attribute {} {
    name = "StrategyMemory.mode"
    type = ModeType_DataType
    mutable = True
    required = False
    default = "dynamic"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyMemory.direction'
//
one sig strategymemory_StrategyMemory_direction extends Attribute {} {
    name = "StrategyMemory.direction"
    type = DirectionType_DataType
    mutable = True
    required = False
    default = "up"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyMemory.stepMemDecrease'
//
one sig strategymemory_StrategyMemory_stepMemDecrease extends Attribute {} {
    name = "StrategyMemory.stepMemDecrease"
    type = this/Double_DataType
    mutable = True
    required = False
    default = "0.25"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyMemory.stepMemIncrease'
//
one sig strategymemory_StrategyMemory_stepMemIncrease extends Attribute {} {
    name = "StrategyMemory.stepMemIncrease"
    type = this/Double_DataType
    mutable = True
    required = False
    default = "0.5"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyMemory.upperLimit'
//
one sig strategymemory_StrategyMemory_upperLimit extends Attribute {} {
    name = "StrategyMemory.upperLimit"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "5"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyMemory.lowerLimit'
//
one sig strategymemory_StrategyMemory_lowerLimit extends Attribute {} {
    name = "StrategyMemory.lowerLimit"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "1"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyMemory.date'
//
one sig strategymemory_StrategyMemory_date extends Attribute {} {
    name = "StrategyMemory.date"
    type = DateType_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyMemory.increaseRelationalOp'
//
one sig strategymemory_StrategyMemory_increaseRelationalOp extends Attribute {} {
    name = "StrategyMemory.increaseRelationalOp"
    type = RelationalType_DataType
    mutable = True
    required = False
    default = "greaterThan"
    no description
    multiple_values = False
}

//
// OCCI attribute 'StrategyMemory.decreaseRelationalOp'
//
one sig strategymemory_StrategyMemory_decreaseRelationalOp extends Attribute {} {
    name = "StrategyMemory.decreaseRelationalOp"
    type = RelationalType_DataType
    mutable = True
    required = False
    default = "lessThan"
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/occi/multicloud/elasticocci/strategymemory/action#stop'
//
one sig strategymemory_stop extends Action {} {
    term = "stop"
    scheme = "http://occiware.org/occi/multicloud/elasticocci/strategymemory/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/occi/multicloud/elasticocci/strategymemory/action#start'
//
one sig strategymemory_start extends Action {} {
    term = "start"
    scheme = "http://occiware.org/occi/multicloud/elasticocci/strategymemory/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Strategymemory
// ======================================================================

sig Strategymemory in Elasticcontroller {
    StrategyMemory_mode : lone ModeType,
    StrategyMemory_direction : lone DirectionType,
    StrategyMemory_stepMemDecrease : lone this/Double,
    StrategyMemory_stepMemIncrease : lone this/Double,
    StrategyMemory_upperLimit : lone core/Integer,
    StrategyMemory_lowerLimit : lone core/Integer,
    StrategyMemory_date : lone DateType,
    StrategyMemory_increaseRelationalOp : lone RelationalType,
    StrategyMemory_decreaseRelationalOp : lone RelationalType,
}

//
// OCCI data type ModeType
//
one sig ModeType_DataType extends DataType {} {
    name = "ModeType"
}

let ModeType=String

//
// OCCI data type DirectionType
//
one sig DirectionType_DataType extends DataType {} {
    name = "DirectionType"
}

let DirectionType=String

//
// OCCI data type Double
//
one sig Double_DataType extends DataType {} {
    name = "Double"
}

let Double=String

//
// OCCI data type DateType
//
one sig DateType_DataType extends DataType {} {
    name = "DateType"
}

let DateType=String

//
// OCCI data type RelationalType
//
one sig RelationalType_DataType extends DataType {} {
    name = "RelationalType"
}

let RelationalType=String

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

