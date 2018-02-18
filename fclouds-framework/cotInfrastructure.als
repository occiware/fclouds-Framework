// Generated at Sun Feb 18 22:13:00 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'cotInfrastructure'
//
// ======================================================================

module cotInfrastructure

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open cotGraphRepresentation

// ======================================================================
//
// fclouds extension 'cotInfrastructure'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "cotInfrastructure"
    scheme = "http://org.cot.infrastructure#"
    import = core/extension + cotGraphRepresentation/extension
    kinds = sensor + actuator
    mixins = location + systemproperty
    types = Float_DataType
}

// ======================================================================
//
// OCCI kind 'http://org.cot.infrastructure#sensor'
//
// ======================================================================

one sig sensor extends Kind {} {
    term = "sensor"
    scheme = "http://org.cot.infrastructure#"
    no title
    parent = core/resource
    attributes = sensor_occi_sensor_featureOfInterest + sensor_occi_sensor_quatity + sensor_occi_sensor_quantityKind + sensor_occi_sensor_unit
    no actions
	entities.Time in this/Sensor
}

//
// OCCI attribute 'occi.sensor.featureOfInterest'
//
one sig sensor_occi_sensor_featureOfInterest extends Attribute {} {
    name = "occi.sensor.featureOfInterest"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.quatity'
//
one sig sensor_occi_sensor_quatity extends Attribute {} {
    name = "occi.sensor.quatity"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.quantityKind'
//
one sig sensor_occi_sensor_quantityKind extends Attribute {} {
    name = "occi.sensor.quantityKind"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.sensor.unit'
//
one sig sensor_occi_sensor_unit extends Attribute {} {
    name = "occi.sensor.unit"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Sensor
// ======================================================================

sig Sensor extends core/Resource {
    occi_sensor_featureOfInterest : lone String,
    occi_sensor_quatity : lone core/Integer,
    occi_sensor_quantityKind : lone String,
    occi_sensor_unit : lone String,
} {
    hasKind[sensor]
}

// ======================================================================
//
// OCCI kind 'http://org.cot.infrastructure#actuator'
//
// ======================================================================

one sig actuator extends Kind {} {
    term = "actuator"
    scheme = "http://org.cot.infrastructure#"
    no title
    parent = core/resource
    attributes = actuator_occi_actuator_featureOfInterest + actuator_occi_actuator_quantity + actuator_occi_actuator_quantityKind + actuator_occi_actuator_unit
    no actions
	entities.Time in this/Actuator
}

//
// OCCI attribute 'occi.actuator.featureOfInterest'
//
one sig actuator_occi_actuator_featureOfInterest extends Attribute {} {
    name = "occi.actuator.featureOfInterest"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.actuator.quantity'
//
one sig actuator_occi_actuator_quantity extends Attribute {} {
    name = "occi.actuator.quantity"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.actuator.quantityKind'
//
one sig actuator_occi_actuator_quantityKind extends Attribute {} {
    name = "occi.actuator.quantityKind"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.actuator.unit'
//
one sig actuator_occi_actuator_unit extends Attribute {} {
    name = "occi.actuator.unit"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Actuator
// ======================================================================

sig Actuator extends core/Resource {
    occi_actuator_featureOfInterest : lone String,
    occi_actuator_quantity : lone core/Integer,
    occi_actuator_quantityKind : lone String,
    occi_actuator_unit : lone String,
} {
    hasKind[actuator]
}

// ======================================================================
//
// OCCI mixin 'http://org.cot.infrastructure#location'
//
// ======================================================================

one sig location extends Mixin {} {
    term = "location"
    scheme = "http://org.cot.infrastructure#"
    no title
    no depends
    applies = cotGraphRepresentation/node
    attributes = location_occi_location_lattitude + location_occi_location_longitude
    no actions
    entities.Time in this/Location
}

//
// OCCI attribute 'occi.location.lattitude'
//
one sig location_occi_location_lattitude extends Attribute {} {
    name = "occi.location.lattitude"
    type = Float_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.location.longitude'
//
one sig location_occi_location_longitude extends Attribute {} {
    name = "occi.location.longitude"
    type = Float_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Location
// ======================================================================

sig Location in cotGraphRepresentation/Node {
    occi_location_lattitude : lone Float,
    occi_location_longitude : lone Float,
}

// ======================================================================
//
// OCCI mixin 'http://org.cot.infrastructure#systemproperty'
//
// ======================================================================

one sig systemproperty extends Mixin {} {
    term = "systemproperty"
    scheme = "http://org.cot.infrastructure#"
    no title
    no depends
    applies = sensor + actuator
    attributes = systemproperty_occi_property_accuracy + systemproperty_occi_property_resolution + systemproperty_occi_property_responseTime
    no actions
    entities.Time in this/Systemproperty
}

//
// OCCI attribute 'occi.property.accuracy'
//
one sig systemproperty_occi_property_accuracy extends Attribute {} {
    name = "occi.property.accuracy"
    type = cotGraphRepresentation/Double_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.property.resolution'
//
one sig systemproperty_occi_property_resolution extends Attribute {} {
    name = "occi.property.resolution"
    type = cotGraphRepresentation/Double_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'occi.property.responseTime'
//
one sig systemproperty_occi_property_responseTime extends Attribute {} {
    name = "occi.property.responseTime"
    type = cotGraphRepresentation/Double_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Systemproperty
// ======================================================================

sig Systemproperty in Sensor + Actuator {
    occi_property_accuracy : lone cotGraphRepresentation/Double,
    occi_property_resolution : lone cotGraphRepresentation/Double,
    occi_property_responseTime : lone cotGraphRepresentation/Double,
}

//
// OCCI data type Float
//
one sig Float_DataType extends DataType {} {
    name = "Float"
}

let Float=String

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

