// Generated at Sun Feb 18 22:13:05 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'omcricore'
//
// ======================================================================

module omcricore

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
// fclouds extension 'omcricore'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "omcricore"
    scheme = "http://occiware.org/cloudrobotics/core#"
    import = core/extension
    kinds = robotlink + robot
    mixins = connection + sensor + colorsensor + flightactuator + touchsensor + ultrasonicsensor + actuator + motionactuator + mouthactuator
    types = Color_DataType + Touch_DataType
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/cloudrobotics/core#robotlink'
//
// ======================================================================

one sig robotlink extends Kind {} {
    term = "robotlink"
    scheme = "http://occiware.org/cloudrobotics/core#"
    title = "Generic robotlink to link resources with a robot"
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Robotlink
}

// ======================================================================
// Signature for Robotlink
// ======================================================================

sig Robotlink extends core/Link {
} {
    hasKind[robotlink]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/cloudrobotics/core#robot'
//
// ======================================================================

one sig robot extends Kind {} {
    term = "robot"
    scheme = "http://occiware.org/cloudrobotics/core#"
    title = "Generic robot"
    parent = core/resource
    no attributes
    no actions
	entities.Time in this/Robot
}

// ======================================================================
// Signature for Robot
// ======================================================================

sig Robot extends core/Resource {
} {
    hasKind[robot]
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#connection'
//
// ======================================================================

one sig connection extends Mixin {} {
    term = "connection"
    scheme = "http://occiware.org/cloudrobotics/core#"
    title = "Connect/disconnect to robot"
    no depends
    applies = robot
    attributes = connection_timeOut
    actions = connection_connect + connection_disconnect
    entities.Time in this/Connection
}

//
// OCCI attribute 'timeOut'
//
one sig connection_timeOut extends Attribute {} {
    name = "timeOut"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    description = "Timeout session in seconds if no connections"
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/cloudrobotics/core/connection/action#connect'
//
one sig connection_connect extends Action {} {
    term = "connect"
    scheme = "http://occiware.org/cloudrobotics/core/connection/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/cloudrobotics/core/connection/action#disconnect'
//
one sig connection_disconnect extends Action {} {
    term = "disconnect"
    scheme = "http://occiware.org/cloudrobotics/core/connection/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Connection
// ======================================================================

sig Connection in Robot {
    timeOut : lone core/Integer,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#sensor'
//
// ======================================================================

one sig sensor extends Mixin {} {
    term = "sensor"
    scheme = "http://occiware.org/cloudrobotics/core#"
    title = "Generic sensor"
    no depends
    applies = robot
    no attributes
    no actions
    entities.Time in this/Sensor
}

// ======================================================================
// Signature for Sensor
// ======================================================================

sig Sensor in Robot {
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#colorsensor'
//
// ======================================================================

one sig colorsensor extends Mixin {} {
    term = "colorsensor"
    scheme = "http://occiware.org/cloudrobotics/core#"
    title = "Sensor color detection"
    depends = sensor
    no applies
    attributes = colorsensor_color + colorsensor_light + colorsensor_darkness + colorsensor_colorLamp
    actions = colorsensor_sensecolor
    entities.Time in this/Colorsensor
}

//
// OCCI attribute 'color'
//
one sig colorsensor_color extends Attribute {} {
    name = "color"
    type = Color_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'light'
//
one sig colorsensor_light extends Attribute {} {
    name = "light"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'darkness'
//
one sig colorsensor_darkness extends Attribute {} {
    name = "darkness"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'colorLamp'
//
one sig colorsensor_colorLamp extends Attribute {} {
    name = "colorLamp"
    type = Color_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/cloudrobotics/core/colorsensor/action#sensecolor'
//
one sig colorsensor_sensecolor extends Action {} {
    term = "sensecolor"
    scheme = "http://occiware.org/cloudrobotics/core/colorsensor/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Colorsensor
// ======================================================================

sig Colorsensor in core/Entity {
    color : lone Color,
    light : lone core/Integer,
    darkness : lone core/Integer,
    colorLamp : lone Color,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#flightactuator'
//
// ======================================================================

one sig flightactuator extends Mixin {} {
    term = "flightactuator"
    scheme = "http://occiware.org/cloudrobotics/core#"
    no title
    depends = actuator
    no applies
    attributes = flightactuator_horizontalTilt + flightactuator_verticalTilt + flightactuator_horizontalSpeed + flightactuator_verticalSpeed
    actions = flightactuator_move + flightactuator_land + flightactuator_takeoff
    entities.Time in this/Flightactuator
}

//
// OCCI attribute 'horizontalTilt'
//
one sig flightactuator_horizontalTilt extends Attribute {} {
    name = "horizontalTilt"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'verticalTilt'
//
one sig flightactuator_verticalTilt extends Attribute {} {
    name = "verticalTilt"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'horizontalSpeed'
//
one sig flightactuator_horizontalSpeed extends Attribute {} {
    name = "horizontalSpeed"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'verticalSpeed'
//
one sig flightactuator_verticalSpeed extends Attribute {} {
    name = "verticalSpeed"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/cloudrobotics/core/flightactuator/action#move'
//
one sig flightactuator_move extends Action {} {
    term = "move"
    scheme = "http://occiware.org/cloudrobotics/core/flightactuator/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/cloudrobotics/core/flightactuator/action#land'
//
one sig flightactuator_land extends Action {} {
    term = "land"
    scheme = "http://occiware.org/cloudrobotics/core/flightactuator/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/cloudrobotics/core/flightactuator/action#takeoff'
//
one sig flightactuator_takeoff extends Action {} {
    term = "takeoff"
    scheme = "http://occiware.org/cloudrobotics/core/flightactuator/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Flightactuator
// ======================================================================

sig Flightactuator in core/Entity {
    horizontalTilt : lone core/Integer,
    verticalTilt : lone core/Integer,
    horizontalSpeed : lone core/Integer,
    verticalSpeed : lone core/Integer,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#touchsensor'
//
// ======================================================================

one sig touchsensor extends Mixin {} {
    term = "touchsensor"
    scheme = "http://occiware.org/cloudrobotics/core#"
    title = "Touch detection"
    depends = sensor
    no applies
    attributes = touchsensor_touch
    actions = touchsensor_sensetouch
    entities.Time in this/Touchsensor
}

//
// OCCI attribute 'touch'
//
one sig touchsensor_touch extends Attribute {} {
    name = "touch"
    type = Color_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/cloudrobotics/core/touchsensor/action#sensetouch'
//
one sig touchsensor_sensetouch extends Action {} {
    term = "sensetouch"
    scheme = "http://occiware.org/cloudrobotics/core/touchsensor/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Touchsensor
// ======================================================================

sig Touchsensor in core/Entity {
    touch : lone Color,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#ultrasonicsensor'
//
// ======================================================================

one sig ultrasonicsensor extends Mixin {} {
    term = "ultrasonicsensor"
    scheme = "http://occiware.org/cloudrobotics/core#"
    title = "Sensor distance detection"
    depends = sensor
    no applies
    attributes = ultrasonicsensor_distance
    actions = ultrasonicsensor_sensedistance
    entities.Time in this/Ultrasonicsensor
}

//
// OCCI attribute 'distance'
//
one sig ultrasonicsensor_distance extends Attribute {} {
    name = "distance"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/cloudrobotics/core/ultrasonicsensor/action#sensedistance'
//
one sig ultrasonicsensor_sensedistance extends Action {} {
    term = "sensedistance"
    scheme = "http://occiware.org/cloudrobotics/core/ultrasonicsensor/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Ultrasonicsensor
// ======================================================================

sig Ultrasonicsensor in core/Entity {
    distance : lone core/Integer,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#actuator'
//
// ======================================================================

one sig actuator extends Mixin {} {
    term = "actuator"
    scheme = "http://occiware.org/cloudrobotics/core#"
    title = "Generic actuator"
    no depends
    applies = robot
    no attributes
    no actions
    entities.Time in this/Actuator
}

// ======================================================================
// Signature for Actuator
// ======================================================================

sig Actuator in Robot {
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#motionactuator'
//
// ======================================================================

one sig motionactuator extends Mixin {} {
    term = "motionactuator"
    scheme = "http://occiware.org/cloudrobotics/core#"
    no title
    depends = actuator
    no applies
    attributes = motionactuator_angle + motionactuator_speed + motionactuator_duration
    actions = motionactuator_moveforward + motionactuator_movebackward + motionactuator_turnright + motionactuator_turnleft + motionactuator_stop
    entities.Time in this/Motionactuator
}

//
// OCCI attribute 'angle'
//
one sig motionactuator_angle extends Attribute {} {
    name = "angle"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "45"
    no description
    multiple_values = False
}

//
// OCCI attribute 'speed'
//
one sig motionactuator_speed extends Attribute {} {
    name = "speed"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "100"
    no description
    multiple_values = False
}

//
// OCCI attribute 'duration'
//
one sig motionactuator_duration extends Attribute {} {
    name = "duration"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "1000"
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/cloudrobotics/core/motionactuator/action#moveforward'
//
one sig motionactuator_moveforward extends Action {} {
    term = "moveforward"
    scheme = "http://occiware.org/cloudrobotics/core/motionactuator/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/cloudrobotics/core/motionactuator/action#movebackward'
//
one sig motionactuator_movebackward extends Action {} {
    term = "movebackward"
    scheme = "http://occiware.org/cloudrobotics/core/motionactuator/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/cloudrobotics/core/motionactuator/action#turnright'
//
one sig motionactuator_turnright extends Action {} {
    term = "turnright"
    scheme = "http://occiware.org/cloudrobotics/core/motionactuator/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/cloudrobotics/core/motionactuator/action#turnleft'
//
one sig motionactuator_turnleft extends Action {} {
    term = "turnleft"
    scheme = "http://occiware.org/cloudrobotics/core/motionactuator/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/cloudrobotics/core/motionactuator/action#stop'
//
one sig motionactuator_stop extends Action {} {
    term = "stop"
    scheme = "http://occiware.org/cloudrobotics/core/motionactuator/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Motionactuator
// ======================================================================

sig Motionactuator in core/Entity {
    angle : lone core/Integer,
    speed : lone core/Integer,
    duration : lone core/Integer,
}

// ======================================================================
//
// OCCI mixin 'http://occiware.org/cloudrobotics/core#mouthactuator'
//
// ======================================================================

one sig mouthactuator extends Mixin {} {
    term = "mouthactuator"
    scheme = "http://occiware.org/cloudrobotics/core#"
    no title
    depends = actuator
    no applies
    no attributes
    actions = mouthactuator_openmouth + mouthactuator_closemouth
    entities.Time in this/Mouthactuator
}

//
// OCCI action 'http://occiware.org/cloudrobotics/core/mouthactuator/action#openmouth'
//
one sig mouthactuator_openmouth extends Action {} {
    term = "openmouth"
    scheme = "http://occiware.org/cloudrobotics/core/mouthactuator/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/cloudrobotics/core/mouthactuator/action#closemouth'
//
one sig mouthactuator_closemouth extends Action {} {
    term = "closemouth"
    scheme = "http://occiware.org/cloudrobotics/core/mouthactuator/action#"
    no title
    no attributes
}


// ======================================================================
// Signature for Mouthactuator
// ======================================================================

sig Mouthactuator in core/Entity {
}

//
// OCCI data type Color
//
one sig Color_DataType extends DataType {} {
    name = "Color"
}

let Color=String

//
// OCCI data type Touch
//
one sig Touch_DataType extends DataType {} {
    name = "Touch"
}

let Touch=String

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

