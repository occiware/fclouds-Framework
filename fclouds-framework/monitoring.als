// Generated at Sun Feb 18 22:13:04 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'monitoring'
//
// ======================================================================

module monitoring

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
// fclouds extension 'monitoring'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "monitoring"
    scheme = "http://schemas.ogf.org/occi/monitoring#"
    import = core/extension
    kinds = sensor + collector
    mixins = metric + aggregator + publisher
    types = Second_DataType + DateTime_DataType
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/monitoring#sensor'
//
// ======================================================================

one sig sensor extends Kind {} {
    term = "sensor"
    scheme = "http://schemas.ogf.org/occi/monitoring#"
    title = "Sensor Resource"
    parent = core/resource
    attributes = sensor_occi_sensor_timebase + sensor_occi_sensor_timestart + sensor_occi_sensor_timestop + sensor_occi_sensor_period + sensor_occi_sensor_granularity + sensor_occi_sensor_accuracy
    no actions
	entities.Time in this/Sensor
}

//
// OCCI attribute 'occi.sensor.timebase'
//
one sig sensor_occi_sensor_timebase extends Attribute {} {
    name = "occi.sensor.timebase"
    type = DateTime_DataType
    mutable = True
    required = False
    no default
    description = "Base time reference (ISO8601)"
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.timestart'
//
one sig sensor_occi_sensor_timestart extends Attribute {} {
    name = "occi.sensor.timestart"
    type = Second_DataType
    mutable = True
    required = False
    no default
    description = "Start time offset (seconds)"
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.timestop'
//
one sig sensor_occi_sensor_timestop extends Attribute {} {
    name = "occi.sensor.timestop"
    type = Second_DataType
    mutable = True
    required = False
    no default
    description = "Stop time offset (seconds)"
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.period'
//
one sig sensor_occi_sensor_period extends Attribute {} {
    name = "occi.sensor.period"
    type = Second_DataType
    mutable = True
    required = True
    no default
    description = "Time between two following measurements (seconds)"
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.granularity'
//
one sig sensor_occi_sensor_granularity extends Attribute {} {
    name = "occi.sensor.granularity"
    type = Second_DataType
    mutable = True
    required = False
    no default
    description = "Granularity of time measument (seconds)"
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.accuracy'
//
one sig sensor_occi_sensor_accuracy extends Attribute {} {
    name = "occi.sensor.accuracy"
    type = Second_DataType
    mutable = True
    required = False
    no default
    description = "Accuracy of time measument (seconds)"
    multiple_values = False
}

// ======================================================================
// Signature for Sensor
// ======================================================================

sig Sensor extends core/Resource {
    occi_sensor_timebase : lone DateTime,
    occi_sensor_timestart : lone Second,
    occi_sensor_timestop : lone Second,
    occi_sensor_period : one Second,
    occi_sensor_granularity : lone Second,
    occi_sensor_accuracy : lone Second,
} {
    hasKind[sensor]
}

// ======================================================================
//
// OCCI kind 'http://schemas.ogf.org/occi/monitoring#collector'
//
// ======================================================================

one sig collector extends Kind {} {
    term = "collector"
    scheme = "http://schemas.ogf.org/occi/monitoring#"
    title = "Collector Link"
    parent = core/link
    attributes = collector_occi_collector_period + collector_occi_sensor_accuracy + collector_occi_sensor_granularity
    no actions
	entities.Time in this/Collector
}

//
// OCCI attribute 'occi.collector.period'
//
one sig collector_occi_collector_period extends Attribute {} {
    name = "occi.collector.period"
    type = Second_DataType
    mutable = True
    required = True
    no default
    description = "Time between two following measurements (seconds)"
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.accuracy'
//
one sig collector_occi_sensor_accuracy extends Attribute {} {
    name = "occi.sensor.accuracy"
    type = Second_DataType
    mutable = True
    required = False
    no default
    description = "Accuracy of time measument (seconds)"
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.granularity'
//
one sig collector_occi_sensor_granularity extends Attribute {} {
    name = "occi.sensor.granularity"
    type = Second_DataType
    mutable = True
    required = False
    no default
    description = "Granularity of time measument (seconds)"
    multiple_values = False
}

// ======================================================================
// Signature for Collector
// ======================================================================

sig Collector extends core/Link {
    occi_collector_period : one Second,
    occi_sensor_accuracy : lone Second,
    occi_sensor_granularity : lone Second,
} {
    hasKind[collector]
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/monitoring#metric'
//
// ======================================================================

one sig metric extends Mixin {} {
    term = "metric"
    scheme = "http://schemas.ogf.org/occi/monitoring#"
    title = "Metric Mixin"
    no depends
    applies = collector
    no attributes
    no actions
    entities.Time in this/Metric
}

// ======================================================================
// Signature for Metric
// ======================================================================

sig Metric in Collector {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/monitoring#aggregator'
//
// ======================================================================

one sig aggregator extends Mixin {} {
    term = "aggregator"
    scheme = "http://schemas.ogf.org/occi/monitoring#"
    title = "Aggregator Mixin"
    no depends
    applies = sensor
    no attributes
    no actions
    entities.Time in this/Aggregator
}

// ======================================================================
// Signature for Aggregator
// ======================================================================

sig Aggregator in Sensor {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/monitoring#publisher'
//
// ======================================================================

one sig publisher extends Mixin {} {
    term = "publisher"
    scheme = "http://schemas.ogf.org/occi/monitoring#"
    title = "Published Mixin"
    no depends
    applies = sensor
    no attributes
    no actions
    entities.Time in this/Publisher
}

// ======================================================================
// Signature for Publisher
// ======================================================================

sig Publisher in Sensor {
}

//
// OCCI data type Second
//
one sig Second_DataType extends DataType {} {
    name = "Second"
}

let Second=String

//
// OCCI data type DateTime
//
one sig DateTime_DataType extends DataType {} {
    name = "DateTime"
}

let DateTime=String

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

