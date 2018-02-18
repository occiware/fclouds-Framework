// Generated at Sun Feb 18 22:13:00 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'apache_spark'
//
// ======================================================================

module apache_spark

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open infrastructure
open modmacao

// ======================================================================
//
// fclouds extension 'apache_spark'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "apache_spark"
    scheme = "http://schemas.modmacao.org/apache/spark#"
    import = core/extension + infrastructure/extension + modmacao/extension
    no kinds
    mixins = master + worker + apachesparkcomponent + apachesparkcluster + masterdependency
    no types
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/apache/spark#master'
//
// ======================================================================

one sig master extends Mixin {} {
    term = "master"
    scheme = "http://schemas.modmacao.org/apache/spark#"
    no title
    depends = apachesparkcomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Master
}

// ======================================================================
// Signature for Master
// ======================================================================

sig Master in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/apache/spark#worker'
//
// ======================================================================

one sig worker extends Mixin {} {
    term = "worker"
    scheme = "http://schemas.modmacao.org/apache/spark#"
    no title
    depends = apachesparkcomponent
    no applies
    attributes = worker_apache_spark_worker_cores + worker_apache_spark_worker_memory
    no actions
    entities.Time in this/Worker
}

//
// OCCI attribute 'apache.spark.worker.cores'
//
one sig worker_apache_spark_worker_cores extends Attribute {} {
    name = "apache.spark.worker.cores"
    type = infrastructure/Core_DataType
    mutable = False
    required = False
    no default
    description = "Total CPU cores to allow Spark applications to use on the machine (default: all available)"
    multiple_values = False
}

//
// OCCI attribute 'apache.spark.worker.memory'
//
one sig worker_apache_spark_worker_memory extends Attribute {} {
    name = "apache.spark.worker.memory"
    type = infrastructure/GiB_DataType
    mutable = False
    required = False
    no default
    description = "Total amount of memory to allow Spark applications to use on the machine, in a format like 1000M or 2G (default: your machine's total RAM minus 1 GB)"
    multiple_values = False
}

// ======================================================================
// Signature for Worker
// ======================================================================

sig Worker in core/Entity {
    apache_spark_worker_cores : lone infrastructure/Core,
    apache_spark_worker_memory : lone infrastructure/GiB,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/apache/spark#apachesparkcomponent'
//
// ======================================================================

one sig apachesparkcomponent extends Mixin {} {
    term = "apachesparkcomponent"
    scheme = "http://schemas.modmacao.org/apache/spark#"
    no title
    depends = modmacao/component
    no applies
    attributes = apachesparkcomponent_apache_spark_port + apachesparkcomponent_apache_spark_webui_port
    no actions
    entities.Time in this/Apachesparkcomponent
}

//
// OCCI attribute 'apache.spark.port'
//
one sig apachesparkcomponent_apache_spark_port extends Attribute {} {
    name = "apache.spark.port"
    type = modmacao/Port_DataType
    mutable = False
    required = False
    no default
    description = "Port for service to listen on (default: 7077 for master, random for worker)"
    multiple_values = False
}

//
// OCCI attribute 'apache.spark.webui.port'
//
one sig apachesparkcomponent_apache_spark_webui_port extends Attribute {} {
    name = "apache.spark.webui.port"
    type = modmacao/Port_DataType
    mutable = False
    required = False
    no default
    description = "Port for Web UI (default: 8080 for master, 8081 for worker)"
    multiple_values = False
}

// ======================================================================
// Signature for Apachesparkcomponent
// ======================================================================

sig Apachesparkcomponent in core/Entity {
    apache_spark_port : lone modmacao/Port,
    apache_spark_webui_port : lone modmacao/Port,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/apache/spark#apachesparkcluster'
//
// ======================================================================

one sig apachesparkcluster extends Mixin {} {
    term = "apachesparkcluster"
    scheme = "http://schemas.modmacao.org/apache/spark#"
    no title
    depends = modmacao/cluster
    no applies
    no attributes
    no actions
    entities.Time in this/Apachesparkcluster
}

// ======================================================================
// Signature for Apachesparkcluster
// ======================================================================

sig Apachesparkcluster in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.modmacao.org/apache/spark#masterdependency'
//
// ======================================================================

one sig masterdependency extends Mixin {} {
    term = "masterdependency"
    scheme = "http://schemas.modmacao.org/apache/spark#"
    no title
    depends = modmacao/executiondependency
    no applies
    no attributes
    no actions
    entities.Time in this/Masterdependency
}

// ======================================================================
// Signature for Masterdependency
// ======================================================================

sig Masterdependency in core/Entity {
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

