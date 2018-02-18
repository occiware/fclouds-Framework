// Generated at Sun Feb 18 22:13:01 CET 2018 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'docker'
//
// ======================================================================

module docker

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
// fclouds extension 'docker'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "docker"
    scheme = "http://occiware.org/occi/docker#"
    import = core/extension + infrastructure/extension
    kinds = container + this/link + networklink + volumesfrom + contains + machine + volume + this/network + machinegeneric + machineamazonec2 + machinedigitalocean + machinegooglecomputeengine + machineibmsoftlayer + machinemicrosoftazure + machinemicrosofthyperv + machineopenstack + machinerackspace + machinevirtualbox + machinevmwarefusion + machinevmwarevcloudair + machinevmwarevsphere + machineexoscale + machinegrid5000 + cluster
    no mixins
    types = ArrayOfString_DataType + Mode_DataType
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#container'
//
// ======================================================================

one sig container extends Kind {} {
    term = "container"
    scheme = "http://occiware.org/occi/docker#"
    title = "Container Resource"
    parent = infrastructure/compute
    attributes = container_name + container_containerid + container_image + container_build + container_command + container_ports + container_expose + container_volumes + container_environment + container_envFile + container_net + container_dns + container_dnsSearch + container_capAdd + container_capDrop + container_workingDir + container_entrypoint + container_user + container_domainName + container_memLimit + container_memorySwap + container_privileged + container_restart + container_stdinOpen + container_interactive + container_cpuShares + container_pid + container_ipc + container_addHost + container_macAddress + container_rm + container_securityOpt + container_device + container_lxcConf + container_publishAll + container_readOnly + container_monitored + container_cpuUsed + container_memoryUsed + container_cpuPercent + container_memoryPercent + container_diskUsed + container_diskPercent + container_bandwidthUsed + container_bandwidthPercent + container_monitoringInterval + container_cpuMaxValue + container_memoryMaxValue + container_coreMax + container_cpuSetCpus + container_cpuSetMems + container_tty
    actions = container_create + container_stop + container_run + container_pause + container_unpause + container_kill
	entities.Time in this/Container
}

//
// OCCI attribute 'name'
//
one sig container_name extends Attribute {} {
    name = "name"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'containerid'
//
one sig container_containerid extends Attribute {} {
    name = "containerid"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'image'
//
one sig container_image extends Attribute {} {
    name = "image"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'build'
//
one sig container_build extends Attribute {} {
    name = "build"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'command'
//
one sig container_command extends Attribute {} {
    name = "command"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ports'
//
one sig container_ports extends Attribute {} {
    name = "ports"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'expose'
//
one sig container_expose extends Attribute {} {
    name = "expose"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'volumes'
//
one sig container_volumes extends Attribute {} {
    name = "volumes"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'environment'
//
one sig container_environment extends Attribute {} {
    name = "environment"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'envFile'
//
one sig container_envFile extends Attribute {} {
    name = "envFile"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'net'
//
one sig container_net extends Attribute {} {
    name = "net"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'dns'
//
one sig container_dns extends Attribute {} {
    name = "dns"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'dnsSearch'
//
one sig container_dnsSearch extends Attribute {} {
    name = "dnsSearch"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'capAdd'
//
one sig container_capAdd extends Attribute {} {
    name = "capAdd"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'capDrop'
//
one sig container_capDrop extends Attribute {} {
    name = "capDrop"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'workingDir'
//
one sig container_workingDir extends Attribute {} {
    name = "workingDir"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'entrypoint'
//
one sig container_entrypoint extends Attribute {} {
    name = "entrypoint"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'user'
//
one sig container_user extends Attribute {} {
    name = "user"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'domainName'
//
one sig container_domainName extends Attribute {} {
    name = "domainName"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'memLimit'
//
one sig container_memLimit extends Attribute {} {
    name = "memLimit"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'memorySwap'
//
one sig container_memorySwap extends Attribute {} {
    name = "memorySwap"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'privileged'
//
one sig container_privileged extends Attribute {} {
    name = "privileged"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'restart'
//
one sig container_restart extends Attribute {} {
    name = "restart"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'stdinOpen'
//
one sig container_stdinOpen extends Attribute {} {
    name = "stdinOpen"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'interactive'
//
one sig container_interactive extends Attribute {} {
    name = "interactive"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'cpuShares'
//
one sig container_cpuShares extends Attribute {} {
    name = "cpuShares"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "0"
    no description
    multiple_values = False
}

//
// OCCI attribute 'pid'
//
one sig container_pid extends Attribute {} {
    name = "pid"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ipc'
//
one sig container_ipc extends Attribute {} {
    name = "ipc"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'addHost'
//
one sig container_addHost extends Attribute {} {
    name = "addHost"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'macAddress'
//
one sig container_macAddress extends Attribute {} {
    name = "macAddress"
    type = infrastructure/Mac_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'rm'
//
one sig container_rm extends Attribute {} {
    name = "rm"
    type = core/Boolean_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'securityOpt'
//
one sig container_securityOpt extends Attribute {} {
    name = "securityOpt"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'device'
//
one sig container_device extends Attribute {} {
    name = "device"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'lxcConf'
//
one sig container_lxcConf extends Attribute {} {
    name = "lxcConf"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'publishAll'
//
one sig container_publishAll extends Attribute {} {
    name = "publishAll"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'readOnly'
//
one sig container_readOnly extends Attribute {} {
    name = "readOnly"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'monitored'
//
one sig container_monitored extends Attribute {} {
    name = "monitored"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'cpuUsed'
//
one sig container_cpuUsed extends Attribute {} {
    name = "cpuUsed"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'memoryUsed'
//
one sig container_memoryUsed extends Attribute {} {
    name = "memoryUsed"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'cpuPercent'
//
one sig container_cpuPercent extends Attribute {} {
    name = "cpuPercent"
    type = core/String_DataType
    mutable = True
    required = False
    default = "0"
    no description
    multiple_values = False
}

//
// OCCI attribute 'memoryPercent'
//
one sig container_memoryPercent extends Attribute {} {
    name = "memoryPercent"
    type = core/String_DataType
    mutable = True
    required = False
    default = "0"
    no description
    multiple_values = False
}

//
// OCCI attribute 'diskUsed'
//
one sig container_diskUsed extends Attribute {} {
    name = "diskUsed"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'diskPercent'
//
one sig container_diskPercent extends Attribute {} {
    name = "diskPercent"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'bandwidthUsed'
//
one sig container_bandwidthUsed extends Attribute {} {
    name = "bandwidthUsed"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'bandwidthPercent'
//
one sig container_bandwidthPercent extends Attribute {} {
    name = "bandwidthPercent"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'monitoringInterval'
//
one sig container_monitoringInterval extends Attribute {} {
    name = "monitoringInterval"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'cpuMaxValue'
//
one sig container_cpuMaxValue extends Attribute {} {
    name = "cpuMaxValue"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'memoryMaxValue'
//
one sig container_memoryMaxValue extends Attribute {} {
    name = "memoryMaxValue"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'coreMax'
//
one sig container_coreMax extends Attribute {} {
    name = "coreMax"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "1"
    no description
    multiple_values = False
}

//
// OCCI attribute 'cpuSetCpus'
//
one sig container_cpuSetCpus extends Attribute {} {
    name = "cpuSetCpus"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "CPUs in which to allow execution (0-3, 0,1)"
    multiple_values = False
}

//
// OCCI attribute 'cpuSetMems'
//
one sig container_cpuSetMems extends Attribute {} {
    name = "cpuSetMems"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    description = "Memory nodes (MEMs) in which to allow execution (0-3, 0,1). Only effective on NUMA systems."
    multiple_values = False
}

//
// OCCI attribute 'tty'
//
one sig container_tty extends Attribute {} {
    name = "tty"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/occi/docker/container/action#create'
//
one sig container_create extends Action {} {
    term = "create"
    scheme = "http://occiware.org/occi/docker/container/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/occi/docker/container/action#stop'
//
one sig container_stop extends Action {} {
    term = "stop"
    scheme = "http://occiware.org/occi/docker/container/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/occi/docker/container/action#run'
//
one sig container_run extends Action {} {
    term = "run"
    scheme = "http://occiware.org/occi/docker/container/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/occi/docker/container/action#pause'
//
one sig container_pause extends Action {} {
    term = "pause"
    scheme = "http://occiware.org/occi/docker/container/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/occi/docker/container/action#unpause'
//
one sig container_unpause extends Action {} {
    term = "unpause"
    scheme = "http://occiware.org/occi/docker/container/action#"
    no title
    no attributes
}


//
// OCCI action 'http://occiware.org/occi/docker/container/action#kill'
//
one sig container_kill extends Action {} {
    term = "kill"
    scheme = "http://occiware.org/occi/docker/container/action#"
    no title
    attributes = kill_signal
}

//
// OCCI attribute 'signal'
//
one sig kill_signal extends Attribute {} {
    name = "signal"
    type = core/String_DataType
    mutable = True
    required = False
    default = "KILL"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Container
// ======================================================================

sig Container extends infrastructure/Compute {
    name : lone String,
    containerid : lone String,
    image : lone String,
    build : lone String,
    command : lone String,
    ports : lone String,
    expose : lone String,
    volumes : lone String,
    environment : lone String,
    envFile : lone String,
    net : lone String,
    dns : lone String,
    dnsSearch : lone String,
    capAdd : lone String,
    capDrop : lone String,
    workingDir : lone String,
    entrypoint : lone String,
    user : lone String,
    domainName : lone String,
    memLimit : lone core/Integer,
    memorySwap : lone core/Integer,
    privileged : lone core/Boolean,
    restart : lone String,
    stdinOpen : lone core/Boolean,
    interactive : lone core/Boolean,
    cpuShares : lone core/Integer,
    pid : lone String,
    ipc : lone String,
    addHost : lone String,
    macAddress : lone infrastructure/Mac,
    rm : lone core/Boolean,
    securityOpt : lone String,
    device : lone String,
    lxcConf : lone String,
    publishAll : lone core/Boolean,
    readOnly : lone core/Boolean,
    monitored : lone core/Boolean,
    cpuUsed : lone core/Integer,
    memoryUsed : lone core/Integer,
    cpuPercent : lone String,
    memoryPercent : lone String,
    diskUsed : lone core/Integer,
    diskPercent : lone String,
    bandwidthUsed : lone core/Integer,
    bandwidthPercent : lone String,
    monitoringInterval : lone core/Integer,
    cpuMaxValue : lone core/Integer,
    memoryMaxValue : lone core/Integer,
    coreMax : lone core/Integer,
    cpuSetCpus : lone String,
    cpuSetMems : lone String,
    tty : lone core/Boolean,
} {
    hasKind[container]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#link'
//
// ======================================================================

one sig link extends Kind {} {
    term = "link"
    scheme = "http://occiware.org/occi/docker#"
    title = "Link between containers"
    parent = core/link
    attributes = link_alias
    no actions
	entities.Time in this/Link
}

//
// OCCI attribute 'alias'
//
one sig link_alias extends Attribute {} {
    name = "alias"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Link
// ======================================================================

sig Link extends core/Link {
    alias : lone String,
} {
    hasKind[this/link]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#networklink'
//
// ======================================================================

one sig networklink extends Kind {} {
    term = "networklink"
    scheme = "http://occiware.org/occi/docker#"
    no title
    parent = this/link
    no attributes
    no actions
	entities.Time in this/Networklink
}

// ======================================================================
// Signature for Networklink
// ======================================================================

sig Networklink extends this/Link {
} {
    hasKind[networklink]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#volumesfrom'
//
// ======================================================================

one sig volumesfrom extends Kind {} {
    term = "volumesfrom"
    scheme = "http://occiware.org/occi/docker#"
    title = "VolumsFrom"
    parent = core/link
    attributes = volumesfrom_mode
    no actions
	entities.Time in this/Volumesfrom
}

//
// OCCI attribute 'mode'
//
one sig volumesfrom_mode extends Attribute {} {
    name = "mode"
    type = Mode_DataType
    mutable = True
    required = False
    default = "readWrite"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Volumesfrom
// ======================================================================

sig Volumesfrom extends core/Link {
    mode : lone Mode,
} {
    hasKind[volumesfrom]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#contains'
//
// ======================================================================

one sig contains extends Kind {} {
    term = "contains"
    scheme = "http://occiware.org/occi/docker#"
    no title
    parent = core/link
    no attributes
    no actions
	entities.Time in this/Contains
}

// ======================================================================
// Signature for Contains
// ======================================================================

sig Contains extends core/Link {
} {
    hasKind[contains]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machine'
//
// ======================================================================

one sig machine extends Kind {} {
    term = "machine"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine Resource"
    parent = infrastructure/compute
    attributes = machine_name + machine_engineInstallURL + machine_engineOpt + machine_engineInsecureRegistry + machine_engineRegistryMirror + machine_engineLabel + machine_engineStorageDriver + machine_engineEnv + machine_swarm + machine_swarmImage + machine_swarmMaster + machine_swarmDiscovery + machine_swarmStrategy + machine_swarmOpt + machine_swarmHost + machine_swarmAddr + machine_swarmExperimental + machine_tlsSan
    actions = machine_startall
	entities.Time in this/Machine
}

//
// OCCI attribute 'name'
//
one sig machine_name extends Attribute {} {
    name = "name"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'engineInstallURL'
//
one sig machine_engineInstallURL extends Attribute {} {
    name = "engineInstallURL"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'engineOpt'
//
one sig machine_engineOpt extends Attribute {} {
    name = "engineOpt"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'engineInsecureRegistry'
//
one sig machine_engineInsecureRegistry extends Attribute {} {
    name = "engineInsecureRegistry"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'engineRegistryMirror'
//
one sig machine_engineRegistryMirror extends Attribute {} {
    name = "engineRegistryMirror"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'engineLabel'
//
one sig machine_engineLabel extends Attribute {} {
    name = "engineLabel"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'engineStorageDriver'
//
one sig machine_engineStorageDriver extends Attribute {} {
    name = "engineStorageDriver"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'engineEnv'
//
one sig machine_engineEnv extends Attribute {} {
    name = "engineEnv"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarm'
//
one sig machine_swarm extends Attribute {} {
    name = "swarm"
    type = core/Boolean_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarmImage'
//
one sig machine_swarmImage extends Attribute {} {
    name = "swarmImage"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarmMaster'
//
one sig machine_swarmMaster extends Attribute {} {
    name = "swarmMaster"
    type = core/Boolean_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarmDiscovery'
//
one sig machine_swarmDiscovery extends Attribute {} {
    name = "swarmDiscovery"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarmStrategy'
//
one sig machine_swarmStrategy extends Attribute {} {
    name = "swarmStrategy"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarmOpt'
//
one sig machine_swarmOpt extends Attribute {} {
    name = "swarmOpt"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarmHost'
//
one sig machine_swarmHost extends Attribute {} {
    name = "swarmHost"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarmAddr'
//
one sig machine_swarmAddr extends Attribute {} {
    name = "swarmAddr"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'swarmExperimental'
//
one sig machine_swarmExperimental extends Attribute {} {
    name = "swarmExperimental"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'tlsSan'
//
one sig machine_tlsSan extends Attribute {} {
    name = "tlsSan"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI action 'http://occiware.org/occi/docker/machine/action#startall'
//
one sig machine_startall extends Action {} {
    term = "startall"
    scheme = "http://occiware.org/occi/docker/machine/action#"
    title = "Start all implies this machine AND all containers inside"
    no attributes
}


// ======================================================================
// Signature for Machine
// ======================================================================

sig Machine extends infrastructure/Compute {
    name : lone String,
    engineInstallURL : lone String,
    engineOpt : lone String,
    engineInsecureRegistry : lone String,
    engineRegistryMirror : lone String,
    engineLabel : lone String,
    engineStorageDriver : lone String,
    engineEnv : lone String,
    swarm : lone core/Boolean,
    swarmImage : lone String,
    swarmMaster : lone core/Boolean,
    swarmDiscovery : lone String,
    swarmStrategy : lone String,
    swarmOpt : lone String,
    swarmHost : lone String,
    swarmAddr : lone String,
    swarmExperimental : lone String,
    tlsSan : lone String,
} {
    hasKind[machine]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#volume'
//
// ======================================================================

one sig volume extends Kind {} {
    term = "volume"
    scheme = "http://occiware.org/occi/docker#"
    title = "Volume Disk"
    parent = infrastructure/storage
    attributes = volume_driver + volume_labels + volume_options + volume_source + volume_destination + volume_mode + volume_rw + volume_propagation + volume_name
    no actions
	entities.Time in this/Volume
}

//
// OCCI attribute 'driver'
//
one sig volume_driver extends Attribute {} {
    name = "driver"
    type = core/String_DataType
    mutable = True
    required = False
    default = "local"
    no description
    multiple_values = False
}

//
// OCCI attribute 'labels'
//
one sig volume_labels extends Attribute {} {
    name = "labels"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'options'
//
one sig volume_options extends Attribute {} {
    name = "options"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'source'
//
one sig volume_source extends Attribute {} {
    name = "source"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'destination'
//
one sig volume_destination extends Attribute {} {
    name = "destination"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'mode'
//
one sig volume_mode extends Attribute {} {
    name = "mode"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'rw'
//
one sig volume_rw extends Attribute {} {
    name = "rw"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'propagation'
//
one sig volume_propagation extends Attribute {} {
    name = "propagation"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'name'
//
one sig volume_name extends Attribute {} {
    name = "name"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Volume
// ======================================================================

sig Volume extends infrastructure/Storage {
    driver : lone String,
    labels : lone String,
    options : lone String,
    source : lone String,
    destination : lone String,
    mode : lone String,
    rw : lone String,
    propagation : lone String,
    name : lone String,
} {
    hasKind[volume]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#network'
//
// ======================================================================

one sig network extends Kind {} {
    term = "network"
    scheme = "http://occiware.org/occi/docker#"
    title = "Network resource"
    parent = infrastructure/network
    attributes = network_networkId + network_name + network_auxAddress + network_driver + network_gateway + network_internal + network_ipRange + network_ipamDriver + network_ipamOpt + network_ipv6 + network_opt + network_subnet
    no actions
	entities.Time in this/Network
}

//
// OCCI attribute 'networkId'
//
one sig network_networkId extends Attribute {} {
    name = "networkId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'name'
//
one sig network_name extends Attribute {} {
    name = "name"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'auxAddress'
//
one sig network_auxAddress extends Attribute {} {
    name = "auxAddress"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'driver'
//
one sig network_driver extends Attribute {} {
    name = "driver"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'gateway'
//
one sig network_gateway extends Attribute {} {
    name = "gateway"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'internal'
//
one sig network_internal extends Attribute {} {
    name = "internal"
    type = core/Boolean_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ipRange'
//
one sig network_ipRange extends Attribute {} {
    name = "ipRange"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ipamDriver'
//
one sig network_ipamDriver extends Attribute {} {
    name = "ipamDriver"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ipamOpt'
//
one sig network_ipamOpt extends Attribute {} {
    name = "ipamOpt"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ipv6'
//
one sig network_ipv6 extends Attribute {} {
    name = "ipv6"
    type = core/Boolean_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'opt'
//
one sig network_opt extends Attribute {} {
    name = "opt"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'subnet'
//
one sig network_subnet extends Attribute {} {
    name = "subnet"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Network
// ======================================================================

sig Network extends infrastructure/Network {
    networkId : lone String,
    name : lone String,
    auxAddress : lone String,
    driver : lone String,
    gateway : lone String,
    internal : lone core/Boolean,
    ipRange : lone String,
    ipamDriver : lone String,
    ipamOpt : lone String,
    ipv6 : lone core/Boolean,
    opt : lone String,
    subnet : lone String,
} {
    hasKind[this/network]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinegeneric'
//
// ======================================================================

one sig machinegeneric extends Kind {} {
    term = "machinegeneric"
    scheme = "http://occiware.org/occi/docker#"
    title = "Create machines using an existing VM/Host with SSH"
    parent = machine
    attributes = machinegeneric_enginePort + machinegeneric_ipAddress + machinegeneric_sshKey + machinegeneric_sshUser + machinegeneric_sshPort
    no actions
	entities.Time in this/Machinegeneric
}

//
// OCCI attribute 'enginePort'
//
one sig machinegeneric_enginePort extends Attribute {} {
    name = "enginePort"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ipAddress'
//
one sig machinegeneric_ipAddress extends Attribute {} {
    name = "ipAddress"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshKey'
//
one sig machinegeneric_sshKey extends Attribute {} {
    name = "sshKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshUser'
//
one sig machinegeneric_sshUser extends Attribute {} {
    name = "sshUser"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshPort'
//
one sig machinegeneric_sshPort extends Attribute {} {
    name = "sshPort"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "22"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinegeneric
// ======================================================================

sig Machinegeneric extends this/Machine {
    enginePort : lone core/Integer,
    ipAddress : lone String,
    sshKey : lone String,
    sshUser : lone String,
    sshPort : lone core/Integer,
} {
    hasKind[machinegeneric]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machineamazonec2'
//
// ======================================================================

one sig machineamazonec2 extends Kind {} {
    term = "machineamazonec2"
    scheme = "http://occiware.org/occi/docker#"
    no title
    parent = machine
    attributes = machineamazonec2_accessKey + machineamazonec2_ami + machineamazonec2_instanceType + machineamazonec2_region + machineamazonec2_rootSize + machineamazonec2_secretKey + machineamazonec2_securityGroup + machineamazonec2_sessionToken + machineamazonec2_subnetId + machineamazonec2_vpcId + machineamazonec2_zone
    no actions
	entities.Time in this/Machineamazonec2
}

//
// OCCI attribute 'accessKey'
//
one sig machineamazonec2_accessKey extends Attribute {} {
    name = "accessKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ami'
//
one sig machineamazonec2_ami extends Attribute {} {
    name = "ami"
    type = core/String_DataType
    mutable = True
    required = False
    default = "ami-4ae27e22"
    no description
    multiple_values = False
}

//
// OCCI attribute 'instanceType'
//
one sig machineamazonec2_instanceType extends Attribute {} {
    name = "instanceType"
    type = core/String_DataType
    mutable = True
    required = False
    default = "t2.micro"
    no description
    multiple_values = False
}

//
// OCCI attribute 'region'
//
one sig machineamazonec2_region extends Attribute {} {
    name = "region"
    type = core/String_DataType
    mutable = True
    required = False
    default = "us-east-1"
    no description
    multiple_values = False
}

//
// OCCI attribute 'rootSize'
//
one sig machineamazonec2_rootSize extends Attribute {} {
    name = "rootSize"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "16"
    no description
    multiple_values = False
}

//
// OCCI attribute 'secretKey'
//
one sig machineamazonec2_secretKey extends Attribute {} {
    name = "secretKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'securityGroup'
//
one sig machineamazonec2_securityGroup extends Attribute {} {
    name = "securityGroup"
    type = core/String_DataType
    mutable = True
    required = False
    default = "docker-machine"
    no description
    multiple_values = False
}

//
// OCCI attribute 'sessionToken'
//
one sig machineamazonec2_sessionToken extends Attribute {} {
    name = "sessionToken"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'subnetId'
//
one sig machineamazonec2_subnetId extends Attribute {} {
    name = "subnetId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'vpcId'
//
one sig machineamazonec2_vpcId extends Attribute {} {
    name = "vpcId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'zone'
//
one sig machineamazonec2_zone extends Attribute {} {
    name = "zone"
    type = core/String_DataType
    mutable = True
    required = False
    default = "a"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machineamazonec2
// ======================================================================

sig Machineamazonec2 extends this/Machine {
    accessKey : lone String,
    ami : lone String,
    instanceType : lone String,
    region : lone String,
    rootSize : lone core/Integer,
    secretKey : lone String,
    securityGroup : lone String,
    sessionToken : lone String,
    subnetId : lone String,
    vpcId : lone String,
    zone : lone String,
} {
    hasKind[machineamazonec2]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinedigitalocean'
//
// ======================================================================

one sig machinedigitalocean extends Kind {} {
    term = "machinedigitalocean"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on Digital Ocean"
    parent = machine
    attributes = machinedigitalocean_accessToken + machinedigitalocean_image + machinedigitalocean_region + machinedigitalocean_size
    no actions
	entities.Time in this/Machinedigitalocean
}

//
// OCCI attribute 'accessToken'
//
one sig machinedigitalocean_accessToken extends Attribute {} {
    name = "accessToken"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'image'
//
one sig machinedigitalocean_image extends Attribute {} {
    name = "image"
    type = core/String_DataType
    mutable = True
    required = False
    default = "docker"
    no description
    multiple_values = False
}

//
// OCCI attribute 'region'
//
one sig machinedigitalocean_region extends Attribute {} {
    name = "region"
    type = core/String_DataType
    mutable = True
    required = False
    default = "nyc3"
    no description
    multiple_values = False
}

//
// OCCI attribute 'size'
//
one sig machinedigitalocean_size extends Attribute {} {
    name = "size"
    type = core/String_DataType
    mutable = True
    required = False
    default = "512mb"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinedigitalocean
// ======================================================================

sig Machinedigitalocean extends this/Machine {
    accessToken : lone String,
    image : lone String,
    region : lone String,
    size : lone String,
} {
    hasKind[machinedigitalocean]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinegooglecomputeengine'
//
// ======================================================================

one sig machinegooglecomputeengine extends Kind {} {
    term = "machinegooglecomputeengine"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on Google Compute Engine"
    parent = machine
    attributes = machinegooglecomputeengine_zone + machinegooglecomputeengine_machineType + machinegooglecomputeengine_username + machinegooglecomputeengine_instanceName + machinegooglecomputeengine_project
    no actions
	entities.Time in this/Machinegooglecomputeengine
}

//
// OCCI attribute 'zone'
//
one sig machinegooglecomputeengine_zone extends Attribute {} {
    name = "zone"
    type = core/String_DataType
    mutable = True
    required = False
    default = "us-central1-a"
    no description
    multiple_values = False
}

//
// OCCI attribute 'machineType'
//
one sig machinegooglecomputeengine_machineType extends Attribute {} {
    name = "machineType"
    type = core/String_DataType
    mutable = True
    required = False
    default = "f1-micro"
    no description
    multiple_values = False
}

//
// OCCI attribute 'username'
//
one sig machinegooglecomputeengine_username extends Attribute {} {
    name = "username"
    type = core/String_DataType
    mutable = True
    required = False
    default = "docker-user"
    no description
    multiple_values = False
}

//
// OCCI attribute 'instanceName'
//
one sig machinegooglecomputeengine_instanceName extends Attribute {} {
    name = "instanceName"
    type = core/String_DataType
    mutable = True
    required = False
    default = "docker-machine"
    no description
    multiple_values = False
}

//
// OCCI attribute 'project'
//
one sig machinegooglecomputeengine_project extends Attribute {} {
    name = "project"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinegooglecomputeengine
// ======================================================================

sig Machinegooglecomputeengine extends this/Machine {
    zone : lone String,
    machineType : lone String,
    username : lone String,
    instanceName : lone String,
    project : lone String,
} {
    hasKind[machinegooglecomputeengine]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machineibmsoftlayer'
//
// ======================================================================

one sig machineibmsoftlayer extends Kind {} {
    term = "machineibmsoftlayer"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on IBM SoftLayer"
    parent = machine
    attributes = machineibmsoftlayer_apiEndpoint + machineibmsoftlayer_user + machineibmsoftlayer_apiKey + machineibmsoftlayer_cpu + machineibmsoftlayer_diskSize + machineibmsoftlayer_domain + machineibmsoftlayer_hourlyBilling + machineibmsoftlayer_image + machineibmsoftlayer_localDisk + machineibmsoftlayer_privateNetOnly + machineibmsoftlayer_region + machineibmsoftlayer_publicVlanId + machineibmsoftlayer_privateVlanId
    no actions
	entities.Time in this/Machineibmsoftlayer
}

//
// OCCI attribute 'apiEndpoint'
//
one sig machineibmsoftlayer_apiEndpoint extends Attribute {} {
    name = "apiEndpoint"
    type = core/String_DataType
    mutable = True
    required = False
    default = "api.softlayer.com/rest/v3"
    no description
    multiple_values = False
}

//
// OCCI attribute 'user'
//
one sig machineibmsoftlayer_user extends Attribute {} {
    name = "user"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'apiKey'
//
one sig machineibmsoftlayer_apiKey extends Attribute {} {
    name = "apiKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'cpu'
//
one sig machineibmsoftlayer_cpu extends Attribute {} {
    name = "cpu"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'diskSize'
//
one sig machineibmsoftlayer_diskSize extends Attribute {} {
    name = "diskSize"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'domain'
//
one sig machineibmsoftlayer_domain extends Attribute {} {
    name = "domain"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'hourlyBilling'
//
one sig machineibmsoftlayer_hourlyBilling extends Attribute {} {
    name = "hourlyBilling"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'image'
//
one sig machineibmsoftlayer_image extends Attribute {} {
    name = "image"
    type = core/String_DataType
    mutable = True
    required = False
    default = "UBUNTU_LATEST"
    no description
    multiple_values = False
}

//
// OCCI attribute 'localDisk'
//
one sig machineibmsoftlayer_localDisk extends Attribute {} {
    name = "localDisk"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'privateNetOnly'
//
one sig machineibmsoftlayer_privateNetOnly extends Attribute {} {
    name = "privateNetOnly"
    type = core/Boolean_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'region'
//
one sig machineibmsoftlayer_region extends Attribute {} {
    name = "region"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'publicVlanId'
//
one sig machineibmsoftlayer_publicVlanId extends Attribute {} {
    name = "publicVlanId"
    type = core/String_DataType
    mutable = True
    required = False
    default = "0"
    no description
    multiple_values = False
}

//
// OCCI attribute 'privateVlanId'
//
one sig machineibmsoftlayer_privateVlanId extends Attribute {} {
    name = "privateVlanId"
    type = core/String_DataType
    mutable = True
    required = False
    default = "0"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machineibmsoftlayer
// ======================================================================

sig Machineibmsoftlayer extends this/Machine {
    apiEndpoint : lone String,
    user : lone String,
    apiKey : lone String,
    cpu : lone core/Integer,
    diskSize : lone core/Integer,
    domain : lone String,
    hourlyBilling : lone core/Boolean,
    image : lone String,
    localDisk : lone core/Boolean,
    privateNetOnly : lone core/Boolean,
    region : lone String,
    publicVlanId : lone String,
    privateVlanId : lone String,
} {
    hasKind[machineibmsoftlayer]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinemicrosoftazure'
//
// ======================================================================

one sig machinemicrosoftazure extends Kind {} {
    term = "machinemicrosoftazure"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on Microsoft Azure"
    parent = machine
    attributes = machinemicrosoftazure_subscriptionId + machinemicrosoftazure_subscriptionCert + machinemicrosoftazure_environment + machinemicrosoftazure_machineLocation + machinemicrosoftazure_resourceGroup + machinemicrosoftazure_size + machinemicrosoftazure_sshUser + machinemicrosoftazure_vnet + machinemicrosoftazure_subnet + machinemicrosoftazure_subnetPrefix + machinemicrosoftazure_availabilitySet + machinemicrosoftazure_openPort + machinemicrosoftazure_privateIpAddress + machinemicrosoftazure_noPublicIp + machinemicrosoftazure_staticPublicIp + machinemicrosoftazure_dockerPort + machinemicrosoftazure_usePrivateIp + machinemicrosoftazure_image
    no actions
	entities.Time in this/Machinemicrosoftazure
}

//
// OCCI attribute 'subscriptionId'
//
one sig machinemicrosoftazure_subscriptionId extends Attribute {} {
    name = "subscriptionId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'subscriptionCert'
//
one sig machinemicrosoftazure_subscriptionCert extends Attribute {} {
    name = "subscriptionCert"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'environment'
//
one sig machinemicrosoftazure_environment extends Attribute {} {
    name = "environment"
    type = core/String_DataType
    mutable = True
    required = False
    default = "AzurePublicCloud"
    no description
    multiple_values = False
}

//
// OCCI attribute 'machineLocation'
//
one sig machinemicrosoftazure_machineLocation extends Attribute {} {
    name = "machineLocation"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'resourceGroup'
//
one sig machinemicrosoftazure_resourceGroup extends Attribute {} {
    name = "resourceGroup"
    type = core/String_DataType
    mutable = True
    required = False
    default = "docker-machine"
    no description
    multiple_values = False
}

//
// OCCI attribute 'size'
//
one sig machinemicrosoftazure_size extends Attribute {} {
    name = "size"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshUser'
//
one sig machinemicrosoftazure_sshUser extends Attribute {} {
    name = "sshUser"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'vnet'
//
one sig machinemicrosoftazure_vnet extends Attribute {} {
    name = "vnet"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'subnet'
//
one sig machinemicrosoftazure_subnet extends Attribute {} {
    name = "subnet"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'subnetPrefix'
//
one sig machinemicrosoftazure_subnetPrefix extends Attribute {} {
    name = "subnetPrefix"
    type = core/String_DataType
    mutable = True
    required = False
    default = "192.168.0.0/16"
    no description
    multiple_values = False
}

//
// OCCI attribute 'availabilitySet'
//
one sig machinemicrosoftazure_availabilitySet extends Attribute {} {
    name = "availabilitySet"
    type = core/String_DataType
    mutable = True
    required = False
    default = "docker-machine"
    no description
    multiple_values = False
}

//
// OCCI attribute 'openPort'
//
one sig machinemicrosoftazure_openPort extends Attribute {} {
    name = "openPort"
    type = core/Integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'privateIpAddress'
//
one sig machinemicrosoftazure_privateIpAddress extends Attribute {} {
    name = "privateIpAddress"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'noPublicIp'
//
one sig machinemicrosoftazure_noPublicIp extends Attribute {} {
    name = "noPublicIp"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'staticPublicIp'
//
one sig machinemicrosoftazure_staticPublicIp extends Attribute {} {
    name = "staticPublicIp"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'dockerPort'
//
one sig machinemicrosoftazure_dockerPort extends Attribute {} {
    name = "dockerPort"
    type = core/String_DataType
    mutable = True
    required = False
    default = "2376"
    no description
    multiple_values = False
}

//
// OCCI attribute 'usePrivateIp'
//
one sig machinemicrosoftazure_usePrivateIp extends Attribute {} {
    name = "usePrivateIp"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'image'
//
one sig machinemicrosoftazure_image extends Attribute {} {
    name = "image"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinemicrosoftazure
// ======================================================================

sig Machinemicrosoftazure extends this/Machine {
    subscriptionId : lone String,
    subscriptionCert : lone String,
    environment : lone String,
    machineLocation : lone String,
    resourceGroup : lone String,
    size : lone String,
    sshUser : lone String,
    vnet : lone String,
    subnet : lone String,
    subnetPrefix : lone String,
    availabilitySet : lone String,
    openPort : lone core/Integer,
    privateIpAddress : lone String,
    noPublicIp : lone String,
    staticPublicIp : lone String,
    dockerPort : lone String,
    usePrivateIp : lone String,
    image : lone String,
} {
    hasKind[machinemicrosoftazure]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinemicrosofthyperv'
//
// ======================================================================

one sig machinemicrosofthyperv extends Kind {} {
    term = "machinemicrosofthyperv"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on Microsoft Hyper-V"
    parent = machine
    attributes = machinemicrosofthyperv_virtualSwitch + machinemicrosofthyperv_boot2dockerURL + machinemicrosofthyperv_diskSize + machinemicrosofthyperv_staticMacAddress + machinemicrosofthyperv_vlanId
    no actions
	entities.Time in this/Machinemicrosofthyperv
}

//
// OCCI attribute 'virtualSwitch'
//
one sig machinemicrosofthyperv_virtualSwitch extends Attribute {} {
    name = "virtualSwitch"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'boot2dockerURL'
//
one sig machinemicrosofthyperv_boot2dockerURL extends Attribute {} {
    name = "boot2dockerURL"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'diskSize'
//
one sig machinemicrosofthyperv_diskSize extends Attribute {} {
    name = "diskSize"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "20000"
    no description
    multiple_values = False
}

//
// OCCI attribute 'staticMacAddress'
//
one sig machinemicrosofthyperv_staticMacAddress extends Attribute {} {
    name = "staticMacAddress"
    type = infrastructure/Mac_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'vlanId'
//
one sig machinemicrosofthyperv_vlanId extends Attribute {} {
    name = "vlanId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinemicrosofthyperv
// ======================================================================

sig Machinemicrosofthyperv extends this/Machine {
    virtualSwitch : lone String,
    boot2dockerURL : lone String,
    diskSize : lone core/Integer,
    staticMacAddress : lone infrastructure/Mac,
    vlanId : lone String,
} {
    hasKind[machinemicrosofthyperv]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machineopenstack'
//
// ======================================================================

one sig machineopenstack extends Kind {} {
    term = "machineopenstack"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on OpenStack"
    parent = machine
    attributes = machineopenstack_flavorId + machineopenstack_flavorName + machineopenstack_imageId + machineopenstack_imageName + machineopenstack_authUrl + machineopenstack_username + machineopenstack_password + machineopenstack_tenantName + machineopenstack_tenantId + machineopenstack_region + machineopenstack_endpointType + machineopenstack_netId + machineopenstack_netName + machineopenstack_secGroups + machineopenstack_floatingIpPool + machineopenstack_activeTimeOut + machineopenstack_availabilityZone + machineopenstack_domainId + machineopenstack_domainName + machineopenstack_insecure + machineopenstack_ipVersion + machineopenstack_keypairName + machineopenstack_privateKeyFile + machineopenstack_sshPort + machineopenstack_sshUser
    no actions
	entities.Time in this/Machineopenstack
}

//
// OCCI attribute 'flavorId'
//
one sig machineopenstack_flavorId extends Attribute {} {
    name = "flavorId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'flavorName'
//
one sig machineopenstack_flavorName extends Attribute {} {
    name = "flavorName"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'imageId'
//
one sig machineopenstack_imageId extends Attribute {} {
    name = "imageId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'imageName'
//
one sig machineopenstack_imageName extends Attribute {} {
    name = "imageName"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'authUrl'
//
one sig machineopenstack_authUrl extends Attribute {} {
    name = "authUrl"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'username'
//
one sig machineopenstack_username extends Attribute {} {
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
one sig machineopenstack_password extends Attribute {} {
    name = "password"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'tenantName'
//
one sig machineopenstack_tenantName extends Attribute {} {
    name = "tenantName"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'tenantId'
//
one sig machineopenstack_tenantId extends Attribute {} {
    name = "tenantId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'region'
//
one sig machineopenstack_region extends Attribute {} {
    name = "region"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'endpointType'
//
one sig machineopenstack_endpointType extends Attribute {} {
    name = "endpointType"
    type = core/String_DataType
    mutable = True
    required = False
    default = "publicURL"
    no description
    multiple_values = False
}

//
// OCCI attribute 'netId'
//
one sig machineopenstack_netId extends Attribute {} {
    name = "netId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'netName'
//
one sig machineopenstack_netName extends Attribute {} {
    name = "netName"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'secGroups'
//
one sig machineopenstack_secGroups extends Attribute {} {
    name = "secGroups"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'floatingIpPool'
//
one sig machineopenstack_floatingIpPool extends Attribute {} {
    name = "floatingIpPool"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'activeTimeOut'
//
one sig machineopenstack_activeTimeOut extends Attribute {} {
    name = "activeTimeOut"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "200"
    no description
    multiple_values = False
}

//
// OCCI attribute 'availabilityZone'
//
one sig machineopenstack_availabilityZone extends Attribute {} {
    name = "availabilityZone"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'domainId'
//
one sig machineopenstack_domainId extends Attribute {} {
    name = "domainId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'domainName'
//
one sig machineopenstack_domainName extends Attribute {} {
    name = "domainName"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'insecure'
//
one sig machineopenstack_insecure extends Attribute {} {
    name = "insecure"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'ipVersion'
//
one sig machineopenstack_ipVersion extends Attribute {} {
    name = "ipVersion"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "4"
    no description
    multiple_values = False
}

//
// OCCI attribute 'keypairName'
//
one sig machineopenstack_keypairName extends Attribute {} {
    name = "keypairName"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'privateKeyFile'
//
one sig machineopenstack_privateKeyFile extends Attribute {} {
    name = "privateKeyFile"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshPort'
//
one sig machineopenstack_sshPort extends Attribute {} {
    name = "sshPort"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "22"
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshUser'
//
one sig machineopenstack_sshUser extends Attribute {} {
    name = "sshUser"
    type = core/String_DataType
    mutable = True
    required = False
    default = "root"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machineopenstack
// ======================================================================

sig Machineopenstack extends this/Machine {
    flavorId : lone String,
    flavorName : lone String,
    imageId : lone String,
    imageName : lone String,
    authUrl : lone String,
    username : lone String,
    password : lone String,
    tenantName : lone String,
    tenantId : lone String,
    region : lone String,
    endpointType : lone String,
    netId : lone String,
    netName : lone String,
    secGroups : lone String,
    floatingIpPool : lone String,
    activeTimeOut : lone core/Integer,
    availabilityZone : lone String,
    domainId : lone String,
    domainName : lone String,
    insecure : lone core/Boolean,
    ipVersion : lone core/Integer,
    keypairName : lone String,
    privateKeyFile : lone String,
    sshPort : lone core/Integer,
    sshUser : lone String,
} {
    hasKind[machineopenstack]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinerackspace'
//
// ======================================================================

one sig machinerackspace extends Kind {} {
    term = "machinerackspace"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on Rackspace cloud"
    parent = machine
    attributes = machinerackspace_username + machinerackspace_apiKey + machinerackspace_region + machinerackspace_endPointType + machinerackspace_imageId + machinerackspace_flavorId + machinerackspace_sshUser + machinerackspace_sshPort + machinerackspace_dockerInstall
    no actions
	entities.Time in this/Machinerackspace
}

//
// OCCI attribute 'username'
//
one sig machinerackspace_username extends Attribute {} {
    name = "username"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'apiKey'
//
one sig machinerackspace_apiKey extends Attribute {} {
    name = "apiKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'region'
//
one sig machinerackspace_region extends Attribute {} {
    name = "region"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'endPointType'
//
one sig machinerackspace_endPointType extends Attribute {} {
    name = "endPointType"
    type = core/String_DataType
    mutable = True
    required = False
    default = "publicURL"
    no description
    multiple_values = False
}

//
// OCCI attribute 'imageId'
//
one sig machinerackspace_imageId extends Attribute {} {
    name = "imageId"
    type = core/String_DataType
    mutable = True
    required = False
    default = "59a3fadd-93e7-4674-886a-64883e17115f"
    no description
    multiple_values = False
}

//
// OCCI attribute 'flavorId'
//
one sig machinerackspace_flavorId extends Attribute {} {
    name = "flavorId"
    type = core/String_DataType
    mutable = True
    required = False
    default = "general1-1"
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshUser'
//
one sig machinerackspace_sshUser extends Attribute {} {
    name = "sshUser"
    type = core/String_DataType
    mutable = True
    required = False
    default = "root"
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshPort'
//
one sig machinerackspace_sshPort extends Attribute {} {
    name = "sshPort"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "22"
    no description
    multiple_values = False
}

//
// OCCI attribute 'dockerInstall'
//
one sig machinerackspace_dockerInstall extends Attribute {} {
    name = "dockerInstall"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "true"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinerackspace
// ======================================================================

sig Machinerackspace extends this/Machine {
    username : lone String,
    apiKey : lone String,
    region : lone String,
    endPointType : lone String,
    imageId : lone String,
    flavorId : lone String,
    sshUser : lone String,
    sshPort : lone core/Integer,
    dockerInstall : lone core/Boolean,
} {
    hasKind[machinerackspace]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinevirtualbox'
//
// ======================================================================

one sig machinevirtualbox extends Kind {} {
    term = "machinevirtualbox"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on VirtualBox"
    parent = machine
    attributes = machinevirtualbox_boot2dockerURL + machinevirtualbox_diskSize + machinevirtualbox_hostDNSResolver + machinevirtualbox_importBoot2DockerVM + machinevirtualbox_hostOnlyCIDR + machinevirtualbox_hostOnlyNICType + machinevirtualbox_hostOnlyNICPromisc + machinevirtualbox_noShare + machinevirtualbox_noDNSProxy + machinevirtualbox_noVTXCheck + machinevirtualbox_shareFolder
    no actions
	entities.Time in this/Machinevirtualbox
}

//
// OCCI attribute 'boot2dockerURL'
//
one sig machinevirtualbox_boot2dockerURL extends Attribute {} {
    name = "boot2dockerURL"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'diskSize'
//
one sig machinevirtualbox_diskSize extends Attribute {} {
    name = "diskSize"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "20000"
    no description
    multiple_values = False
}

//
// OCCI attribute 'hostDNSResolver'
//
one sig machinevirtualbox_hostDNSResolver extends Attribute {} {
    name = "hostDNSResolver"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'importBoot2DockerVM'
//
one sig machinevirtualbox_importBoot2DockerVM extends Attribute {} {
    name = "importBoot2DockerVM"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'hostOnlyCIDR'
//
one sig machinevirtualbox_hostOnlyCIDR extends Attribute {} {
    name = "hostOnlyCIDR"
    type = core/String_DataType
    mutable = True
    required = False
    default = "192.168.99.1/24"
    no description
    multiple_values = False
}

//
// OCCI attribute 'hostOnlyNICType'
//
one sig machinevirtualbox_hostOnlyNICType extends Attribute {} {
    name = "hostOnlyNICType"
    type = core/String_DataType
    mutable = True
    required = False
    default = "82540EM"
    no description
    multiple_values = False
}

//
// OCCI attribute 'hostOnlyNICPromisc'
//
one sig machinevirtualbox_hostOnlyNICPromisc extends Attribute {} {
    name = "hostOnlyNICPromisc"
    type = core/String_DataType
    mutable = True
    required = False
    default = "deny"
    no description
    multiple_values = False
}

//
// OCCI attribute 'noShare'
//
one sig machinevirtualbox_noShare extends Attribute {} {
    name = "noShare"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'noDNSProxy'
//
one sig machinevirtualbox_noDNSProxy extends Attribute {} {
    name = "noDNSProxy"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'noVTXCheck'
//
one sig machinevirtualbox_noVTXCheck extends Attribute {} {
    name = "noVTXCheck"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'shareFolder'
//
one sig machinevirtualbox_shareFolder extends Attribute {} {
    name = "shareFolder"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinevirtualbox
// ======================================================================

sig Machinevirtualbox extends this/Machine {
    boot2dockerURL : lone String,
    diskSize : lone core/Integer,
    hostDNSResolver : lone core/Boolean,
    importBoot2DockerVM : lone String,
    hostOnlyCIDR : lone String,
    hostOnlyNICType : lone String,
    hostOnlyNICPromisc : lone String,
    noShare : lone core/Boolean,
    noDNSProxy : lone core/Boolean,
    noVTXCheck : lone core/Boolean,
    shareFolder : lone String,
} {
    hasKind[machinevirtualbox]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinevmwarefusion'
//
// ======================================================================

one sig machinevmwarefusion extends Kind {} {
    term = "machinevmwarefusion"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on VMware Fusion"
    parent = machine
    attributes = machinevmwarefusion_boot2dockerURL + machinevmwarefusion_diskSize + machinevmwarefusion_memorySize + machinevmwarefusion_noShare
    no actions
	entities.Time in this/Machinevmwarefusion
}

//
// OCCI attribute 'boot2dockerURL'
//
one sig machinevmwarefusion_boot2dockerURL extends Attribute {} {
    name = "boot2dockerURL"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'diskSize'
//
one sig machinevmwarefusion_diskSize extends Attribute {} {
    name = "diskSize"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "20000"
    no description
    multiple_values = False
}

//
// OCCI attribute 'memorySize'
//
one sig machinevmwarefusion_memorySize extends Attribute {} {
    name = "memorySize"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "1024"
    no description
    multiple_values = False
}

//
// OCCI attribute 'noShare'
//
one sig machinevmwarefusion_noShare extends Attribute {} {
    name = "noShare"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinevmwarefusion
// ======================================================================

sig Machinevmwarefusion extends this/Machine {
    boot2dockerURL : lone String,
    diskSize : lone core/Integer,
    memorySize : lone core/Integer,
    noShare : lone core/Boolean,
} {
    hasKind[machinevmwarefusion]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinevmwarevcloudair'
//
// ======================================================================

one sig machinevmwarevcloudair extends Kind {} {
    term = "machinevmwarevcloudair"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on VMware vCloud Air"
    parent = machine
    attributes = machinevmwarevcloudair_username + machinevmwarevcloudair_password + machinevmwarevcloudair_catalog + machinevmwarevcloudair_catalogItem + machinevmwarevcloudair_computeId + machinevmwarevcloudair_cpuCount + machinevmwarevcloudair_dockerPort + machinevmwarevcloudair_edgegateway + machinevmwarevcloudair_memorySize + machinevmwarevcloudair_vappName + machinevmwarevcloudair_orgvdcnetwork + machinevmwarevcloudair_provision + machinevmwarevcloudair_publicIp + machinevmwarevcloudair_sshPort + machinevmwarevcloudair_vdcId
    no actions
	entities.Time in this/Machinevmwarevcloudair
}

//
// OCCI attribute 'username'
//
one sig machinevmwarevcloudair_username extends Attribute {} {
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
one sig machinevmwarevcloudair_password extends Attribute {} {
    name = "password"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'catalog'
//
one sig machinevmwarevcloudair_catalog extends Attribute {} {
    name = "catalog"
    type = core/String_DataType
    mutable = True
    required = False
    default = "Public Catalog"
    no description
    multiple_values = False
}

//
// OCCI attribute 'catalogItem'
//
one sig machinevmwarevcloudair_catalogItem extends Attribute {} {
    name = "catalogItem"
    type = core/String_DataType
    mutable = True
    required = False
    default = "Ubuntu Server 12.04 LTS (amd64 20140927)"
    no description
    multiple_values = False
}

//
// OCCI attribute 'computeId'
//
one sig machinevmwarevcloudair_computeId extends Attribute {} {
    name = "computeId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'cpuCount'
//
one sig machinevmwarevcloudair_cpuCount extends Attribute {} {
    name = "cpuCount"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "1"
    no description
    multiple_values = False
}

//
// OCCI attribute 'dockerPort'
//
one sig machinevmwarevcloudair_dockerPort extends Attribute {} {
    name = "dockerPort"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "2376"
    no description
    multiple_values = False
}

//
// OCCI attribute 'edgegateway'
//
one sig machinevmwarevcloudair_edgegateway extends Attribute {} {
    name = "edgegateway"
    type = core/String_DataType
    mutable = True
    required = False
    default = "&lt;vdcid>"
    no description
    multiple_values = False
}

//
// OCCI attribute 'memorySize'
//
one sig machinevmwarevcloudair_memorySize extends Attribute {} {
    name = "memorySize"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "2048"
    no description
    multiple_values = False
}

//
// OCCI attribute 'vappName'
//
one sig machinevmwarevcloudair_vappName extends Attribute {} {
    name = "vappName"
    type = core/String_DataType
    mutable = True
    required = False
    default = "&lt;autogenerated>"
    no description
    multiple_values = False
}

//
// OCCI attribute 'orgvdcnetwork'
//
one sig machinevmwarevcloudair_orgvdcnetwork extends Attribute {} {
    name = "orgvdcnetwork"
    type = core/String_DataType
    mutable = True
    required = False
    default = "&lt;vdcid>-default-routed"
    no description
    multiple_values = False
}

//
// OCCI attribute 'provision'
//
one sig machinevmwarevcloudair_provision extends Attribute {} {
    name = "provision"
    type = core/Boolean_DataType
    mutable = True
    required = False
    default = "true"
    no description
    multiple_values = False
}

//
// OCCI attribute 'publicIp'
//
one sig machinevmwarevcloudair_publicIp extends Attribute {} {
    name = "publicIp"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshPort'
//
one sig machinevmwarevcloudair_sshPort extends Attribute {} {
    name = "sshPort"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "22"
    no description
    multiple_values = False
}

//
// OCCI attribute 'vdcId'
//
one sig machinevmwarevcloudair_vdcId extends Attribute {} {
    name = "vdcId"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinevmwarevcloudair
// ======================================================================

sig Machinevmwarevcloudair extends this/Machine {
    username : lone String,
    password : lone String,
    catalog : lone String,
    catalogItem : lone String,
    computeId : lone String,
    cpuCount : lone core/Integer,
    dockerPort : lone core/Integer,
    edgegateway : lone String,
    memorySize : lone core/Integer,
    vappName : lone String,
    orgvdcnetwork : lone String,
    provision : lone core/Boolean,
    publicIp : lone String,
    sshPort : lone core/Integer,
    vdcId : lone String,
} {
    hasKind[machinevmwarevcloudair]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinevmwarevsphere'
//
// ======================================================================

one sig machinevmwarevsphere extends Kind {} {
    term = "machinevmwarevsphere"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine on VMware vSphere"
    parent = machine
    attributes = machinevmwarevsphere_username + machinevmwarevsphere_password + machinevmwarevsphere_boot2dockerURL + machinevmwarevsphere_computeIp + machinevmwarevsphere_cpuCount + machinevmwarevsphere_datacenter + machinevmwarevsphere_datastore + machinevmwarevsphere_diskSize + machinevmwarevsphere_memorySize + machinevmwarevsphere_network + machinevmwarevsphere_pool + machinevmwarevsphere_vcenter
    no actions
	entities.Time in this/Machinevmwarevsphere
}

//
// OCCI attribute 'username'
//
one sig machinevmwarevsphere_username extends Attribute {} {
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
one sig machinevmwarevsphere_password extends Attribute {} {
    name = "password"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'boot2dockerURL'
//
one sig machinevmwarevsphere_boot2dockerURL extends Attribute {} {
    name = "boot2dockerURL"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'computeIp'
//
one sig machinevmwarevsphere_computeIp extends Attribute {} {
    name = "computeIp"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'cpuCount'
//
one sig machinevmwarevsphere_cpuCount extends Attribute {} {
    name = "cpuCount"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "2"
    no description
    multiple_values = False
}

//
// OCCI attribute 'datacenter'
//
one sig machinevmwarevsphere_datacenter extends Attribute {} {
    name = "datacenter"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'datastore'
//
one sig machinevmwarevsphere_datastore extends Attribute {} {
    name = "datastore"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'diskSize'
//
one sig machinevmwarevsphere_diskSize extends Attribute {} {
    name = "diskSize"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "20000"
    no description
    multiple_values = False
}

//
// OCCI attribute 'memorySize'
//
one sig machinevmwarevsphere_memorySize extends Attribute {} {
    name = "memorySize"
    type = core/Integer_DataType
    mutable = True
    required = False
    default = "2048"
    no description
    multiple_values = False
}

//
// OCCI attribute 'network'
//
one sig machinevmwarevsphere_network extends Attribute {} {
    name = "network"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'pool'
//
one sig machinevmwarevsphere_pool extends Attribute {} {
    name = "pool"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'vcenter'
//
one sig machinevmwarevsphere_vcenter extends Attribute {} {
    name = "vcenter"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinevmwarevsphere
// ======================================================================

sig Machinevmwarevsphere extends this/Machine {
    username : lone String,
    password : lone String,
    boot2dockerURL : lone String,
    computeIp : lone String,
    cpuCount : lone core/Integer,
    datacenter : lone String,
    datastore : lone String,
    diskSize : lone core/Integer,
    memorySize : lone core/Integer,
    network : lone String,
    pool : lone String,
    vcenter : lone String,
} {
    hasKind[machinevmwarevsphere]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machineexoscale'
//
// ======================================================================

one sig machineexoscale extends Kind {} {
    term = "machineexoscale"
    scheme = "http://occiware.org/occi/docker#"
    title = "Machine Exoscale"
    parent = machine
    attributes = machineexoscale_url + machineexoscale_apiKey + machineexoscale_apiSecretKey + machineexoscale_instanceProfile + machineexoscale_image + machineexoscale_securityGroup + machineexoscale_availabilityZone + machineexoscale_sshUser + machineexoscale_userData + machineexoscale_affinityGroup
    no actions
	entities.Time in this/Machineexoscale
}

//
// OCCI attribute 'url'
//
one sig machineexoscale_url extends Attribute {} {
    name = "url"
    type = core/String_DataType
    mutable = True
    required = False
    default = "https://api.exoscale.ch/compute"
    no description
    multiple_values = False
}

//
// OCCI attribute 'apiKey'
//
one sig machineexoscale_apiKey extends Attribute {} {
    name = "apiKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'apiSecretKey'
//
one sig machineexoscale_apiSecretKey extends Attribute {} {
    name = "apiSecretKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'instanceProfile'
//
one sig machineexoscale_instanceProfile extends Attribute {} {
    name = "instanceProfile"
    type = core/String_DataType
    mutable = True
    required = False
    default = "small"
    no description
    multiple_values = False
}

//
// OCCI attribute 'image'
//
one sig machineexoscale_image extends Attribute {} {
    name = "image"
    type = core/String_DataType
    mutable = True
    required = False
    default = "ubuntu-16.04"
    no description
    multiple_values = False
}

//
// OCCI attribute 'securityGroup'
//
one sig machineexoscale_securityGroup extends Attribute {} {
    name = "securityGroup"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'availabilityZone'
//
one sig machineexoscale_availabilityZone extends Attribute {} {
    name = "availabilityZone"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshUser'
//
one sig machineexoscale_sshUser extends Attribute {} {
    name = "sshUser"
    type = core/String_DataType
    mutable = True
    required = False
    default = "ubuntu"
    no description
    multiple_values = False
}

//
// OCCI attribute 'userData'
//
one sig machineexoscale_userData extends Attribute {} {
    name = "userData"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'affinityGroup'
//
one sig machineexoscale_affinityGroup extends Attribute {} {
    name = "affinityGroup"
    type = core/String_DataType
    mutable = True
    required = False
    default = "docker-machine"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machineexoscale
// ======================================================================

sig Machineexoscale extends this/Machine {
    url : lone String,
    apiKey : lone String,
    apiSecretKey : lone String,
    instanceProfile : lone String,
    image : lone String,
    securityGroup : lone String,
    availabilityZone : lone String,
    sshUser : lone String,
    userData : lone String,
    affinityGroup : lone String,
} {
    hasKind[machineexoscale]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#machinegrid5000'
//
// ======================================================================

one sig machinegrid5000 extends Kind {} {
    term = "machinegrid5000"
    scheme = "http://occiware.org/occi/docker#"
    title = "Grid5000"
    parent = machine
    attributes = machinegrid5000_username + machinegrid5000_password + machinegrid5000_site + machinegrid5000_walltime + machinegrid5000_sshPrivateKey + machinegrid5000_sshPublicKey + machinegrid5000_image + machinegrid5000_resourceProperties + machinegrid5000_useJobReservation + machinegrid5000_hostToProvision
    no actions
	entities.Time in this/Machinegrid5000
}

//
// OCCI attribute 'username'
//
one sig machinegrid5000_username extends Attribute {} {
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
one sig machinegrid5000_password extends Attribute {} {
    name = "password"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'site'
//
one sig machinegrid5000_site extends Attribute {} {
    name = "site"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'walltime'
//
one sig machinegrid5000_walltime extends Attribute {} {
    name = "walltime"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshPrivateKey'
//
one sig machinegrid5000_sshPrivateKey extends Attribute {} {
    name = "sshPrivateKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'sshPublicKey'
//
one sig machinegrid5000_sshPublicKey extends Attribute {} {
    name = "sshPublicKey"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'image'
//
one sig machinegrid5000_image extends Attribute {} {
    name = "image"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'resourceProperties'
//
one sig machinegrid5000_resourceProperties extends Attribute {} {
    name = "resourceProperties"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'useJobReservation'
//
one sig machinegrid5000_useJobReservation extends Attribute {} {
    name = "useJobReservation"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'hostToProvision'
//
one sig machinegrid5000_hostToProvision extends Attribute {} {
    name = "hostToProvision"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Machinegrid5000
// ======================================================================

sig Machinegrid5000 extends this/Machine {
    username : lone String,
    password : lone String,
    site : lone String,
    walltime : lone String,
    sshPrivateKey : lone String,
    sshPublicKey : lone String,
    image : lone String,
    resourceProperties : lone String,
    useJobReservation : lone String,
    hostToProvision : lone String,
} {
    hasKind[machinegrid5000]
}

// ======================================================================
//
// OCCI kind 'http://occiware.org/occi/docker#cluster'
//
// ======================================================================

one sig cluster extends Kind {} {
    term = "cluster"
    scheme = "http://occiware.org/occi/docker#"
    title = "Docker cluster"
    parent = infrastructure/compute
    attributes = cluster_name
    no actions
	entities.Time in this/Cluster
}

//
// OCCI attribute 'name'
//
one sig cluster_name extends Attribute {} {
    name = "name"
    type = core/String_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Cluster
// ======================================================================

sig Cluster extends infrastructure/Compute {
    name : lone String,
} {
    hasKind[cluster]
}

//
// OCCI data type ArrayOfString
//
one sig ArrayOfString_DataType extends DataType {} {
    name = "ArrayOfString"
}

let ArrayOfString=String

//
// OCCI data type Mode
//
one sig Mode_DataType extends DataType {} {
    name = "Mode"
}

let Mode=String

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

