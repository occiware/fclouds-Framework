// Generated at Sun Feb 18 22:13:01 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'crtp'
//
// ======================================================================

module crtp

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open infrastructure

// ======================================================================
//
// fclouds extension 'crtp'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "crtp"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#"
    import = core/extension + infrastructure/extension
    no kinds
    mixins = small + medium + large + mem_small + mem_medium + mem_large
    no types
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#small'
//
// ======================================================================

one sig small extends Mixin {} {
    term = "small"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#"
    title = "A small Compute instance"
    depends = infrastructure/resource_tpl
    applies = infrastructure/compute
    attributes = small_occi_compute_cores + small_occi_compute_memory + small_occi_compute_ephemeral_storage_size
    no actions
    entities.Time in this/Small
}

//
// OCCI attribute 'occi.compute.cores'
//
one sig small_occi_compute_cores extends Attribute {} {
    name = "occi.compute.cores"
    type = infrastructure/Core_DataType
    mutable = True
    required = False
    default = "1"
    description = "Number of CPU cores assigned to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.memory'
//
one sig small_occi_compute_memory extends Attribute {} {
    name = "occi.compute.memory"
    type = infrastructure/GiB_DataType
    mutable = True
    required = False
    default = "1.0"
    description = "Maximum RAM in gigabytes allocated to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.ephemeral.storage.size'
//
one sig small_occi_compute_ephemeral_storage_size extends Attribute {} {
    name = "occi.compute.ephemeral.storage.size"
    type = infrastructure/GiB_DataType
    mutable = False
    required = True
    default = "10.0"
    description = "Ephemeral storage provisioned for the associated Compute instance"
    multiple_values = False
}

// ======================================================================
// Signature for Small
// ======================================================================

sig Small in infrastructure/Compute {
//    occi_compute_cores : lone infrastructure/Core,
//    occi_compute_memory : lone infrastructure/GiB,
//    occi_compute_ephemeral_storage_size : one infrastructure/GiB,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#medium'
//
// ======================================================================

one sig medium extends Mixin {} {
    term = "medium"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#"
    title = "A medium Compute instance"
    depends = infrastructure/resource_tpl
    applies = infrastructure/compute
    attributes = medium_occi_compute_cores + medium_occi_compute_memory + medium_occi_compute_ephemeral_storage_size
    no actions
    entities.Time in this/Medium
}

//
// OCCI attribute 'occi.compute.cores'
//
one sig medium_occi_compute_cores extends Attribute {} {
    name = "occi.compute.cores"
    type = infrastructure/Core_DataType
    mutable = True
    required = False
    default = "2"
    description = "Number of CPU cores assigned to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.memory'
//
one sig medium_occi_compute_memory extends Attribute {} {
    name = "occi.compute.memory"
    type = infrastructure/GiB_DataType
    mutable = True
    required = False
    default = "2.0"
    description = "Maximum RAM in gigabytes allocated to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.ephemeral.storage.size'
//
one sig medium_occi_compute_ephemeral_storage_size extends Attribute {} {
    name = "occi.compute.ephemeral.storage.size"
    type = infrastructure/GiB_DataType
    mutable = False
    required = True
    default = "20.0"
    description = "Ephemeral storage provisioned for the associated Compute instance"
    multiple_values = False
}

// ======================================================================
// Signature for Medium
// ======================================================================

sig Medium in infrastructure/Compute {
//    occi_compute_cores : lone infrastructure/Core,
//    occi_compute_memory : lone infrastructure/GiB,
//    occi_compute_ephemeral_storage_size : one infrastructure/GiB,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#large'
//
// ======================================================================

one sig large extends Mixin {} {
    term = "large"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#"
    title = "A large Compute instance"
    depends = infrastructure/resource_tpl
    applies = infrastructure/compute
    attributes = large_occi_compute_cores + large_occi_compute_memory + large_occi_compute_ephemeral_storage_size
    no actions
    entities.Time in this/Large
}

//
// OCCI attribute 'occi.compute.cores'
//
one sig large_occi_compute_cores extends Attribute {} {
    name = "occi.compute.cores"
    type = infrastructure/Core_DataType
    mutable = True
    required = False
    default = "4"
    description = "Number of CPU cores assigned to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.memory'
//
one sig large_occi_compute_memory extends Attribute {} {
    name = "occi.compute.memory"
    type = infrastructure/GiB_DataType
    mutable = True
    required = False
    default = "4.0"
    description = "Maximum RAM in gigabytes allocated to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.ephemeral.storage.size'
//
one sig large_occi_compute_ephemeral_storage_size extends Attribute {} {
    name = "occi.compute.ephemeral.storage.size"
    type = infrastructure/GiB_DataType
    mutable = False
    required = True
    default = "40.0"
    description = "Ephemeral storage provisioned for the associated Compute instance"
    multiple_values = False
}

// ======================================================================
// Signature for Large
// ======================================================================

sig Large in infrastructure/Compute {
//    occi_compute_cores : lone infrastructure/Core,
//    occi_compute_memory : lone infrastructure/GiB,
//    occi_compute_ephemeral_storage_size : one infrastructure/GiB,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#mem_small'
//
// ======================================================================

one sig mem_small extends Mixin {} {
    term = "mem_small"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#"
    title = "A small Compute instance for memory-intensive applications"
    depends = infrastructure/resource_tpl
    applies = infrastructure/compute
    attributes = mem_small_occi_compute_cores + mem_small_occi_compute_memory + mem_small_occi_compute_ephemeral_storage_size
    no actions
    entities.Time in this/Mem_small
}

//
// OCCI attribute 'occi.compute.cores'
//
one sig mem_small_occi_compute_cores extends Attribute {} {
    name = "occi.compute.cores"
    type = infrastructure/Core_DataType
    mutable = True
    required = False
    default = "1"
    description = "Number of CPU cores assigned to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.memory'
//
one sig mem_small_occi_compute_memory extends Attribute {} {
    name = "occi.compute.memory"
    type = infrastructure/GiB_DataType
    mutable = True
    required = False
    default = "4.0"
    description = "Maximum RAM in gigabytes allocated to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.ephemeral.storage.size'
//
one sig mem_small_occi_compute_ephemeral_storage_size extends Attribute {} {
    name = "occi.compute.ephemeral.storage.size"
    type = infrastructure/GiB_DataType
    mutable = False
    required = True
    default = "10.0"
    description = "Ephemeral storage provisioned for the associated Compute instance"
    multiple_values = False
}

// ======================================================================
// Signature for Mem_small
// ======================================================================

sig Mem_small in infrastructure/Compute {
//    occi_compute_cores : lone infrastructure/Core,
//    occi_compute_memory : lone infrastructure/GiB,
//    occi_compute_ephemeral_storage_size : one infrastructure/GiB,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#mem_medium'
//
// ======================================================================

one sig mem_medium extends Mixin {} {
    term = "mem_medium"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#"
    title = "A medium Compute instance for memory-intensive applications"
    depends = infrastructure/resource_tpl
    applies = infrastructure/compute
    attributes = mem_medium_occi_compute_cores + mem_medium_occi_compute_memory + mem_medium_occi_compute_ephemeral_storage_size
    no actions
    entities.Time in this/Mem_medium
}

//
// OCCI attribute 'occi.compute.cores'
//
one sig mem_medium_occi_compute_cores extends Attribute {} {
    name = "occi.compute.cores"
    type = infrastructure/Core_DataType
    mutable = True
    required = False
    default = "2"
    description = "Number of CPU cores assigned to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.memory'
//
one sig mem_medium_occi_compute_memory extends Attribute {} {
    name = "occi.compute.memory"
    type = infrastructure/GiB_DataType
    mutable = True
    required = False
    default = "8.0"
    description = "Maximum RAM in gigabytes allocated to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.ephemeral.storage.size'
//
one sig mem_medium_occi_compute_ephemeral_storage_size extends Attribute {} {
    name = "occi.compute.ephemeral.storage.size"
    type = infrastructure/GiB_DataType
    mutable = False
    required = True
    default = "20.0"
    description = "Ephemeral storage provisioned for the associated Compute instance"
    multiple_values = False
}

// ======================================================================
// Signature for Mem_medium
// ======================================================================

sig Mem_medium in infrastructure/Compute {
//    occi_compute_cores : lone infrastructure/Core,
//    occi_compute_memory : lone infrastructure/GiB,
//    occi_compute_ephemeral_storage_size : one infrastructure/GiB,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#mem_large'
//
// ======================================================================

one sig mem_large extends Mixin {} {
    term = "mem_large"
    scheme = "http://schemas.ogf.org/occi/infrastructure/compute/template/1.1#"
    title = "A large Compute instance for memory-intensive applications"
    depends = infrastructure/resource_tpl
    applies = infrastructure/compute
    attributes = mem_large_occi_compute_cores + mem_large_occi_compute_memory + mem_large_occi_compute_ephemeral_storage_size
    no actions
    entities.Time in this/Mem_large
}

//
// OCCI attribute 'occi.compute.cores'
//
one sig mem_large_occi_compute_cores extends Attribute {} {
    name = "occi.compute.cores"
    type = infrastructure/Core_DataType
    mutable = True
    required = False
    default = "4"
    description = "Number of CPU cores assigned to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.memory'
//
one sig mem_large_occi_compute_memory extends Attribute {} {
    name = "occi.compute.memory"
    type = infrastructure/GiB_DataType
    mutable = True
    required = False
    default = "16.0"
    description = "Maximum RAM in gigabytes allocated to the instance"
    multiple_values = False
}

//
// OCCI attribute 'occi.compute.ephemeral.storage.size'
//
one sig mem_large_occi_compute_ephemeral_storage_size extends Attribute {} {
    name = "occi.compute.ephemeral.storage.size"
    type = infrastructure/GiB_DataType
    mutable = False
    required = True
    default = "40.0"
    description = "Ephemeral storage provisioned for the associated Compute instance"
    multiple_values = False
}

// ======================================================================
// Signature for Mem_large
// ======================================================================

sig Mem_large in infrastructure/Compute {
//    occi_compute_cores : lone infrastructure/Core,
//    occi_compute_memory : lone infrastructure/GiB,
//    occi_compute_ephemeral_storage_size : one infrastructure/GiB,
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

