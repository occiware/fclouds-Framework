// Generated at Sun Jun 28 13:22:26 CEST 2020 from  by org.eclipse.cmf.occi.core.gen.alloy

// ======================================================================
//
// Static Semantics for fclouds 'extendedTosca'
//
// ======================================================================

module extendedTosca

open util/boolean
open fclouds

// ======================================================================
//
// Imported extensions
//
// ======================================================================

open core
open infrastructure
open sla
open tosca
open modmacao
open platform
open placement

// ======================================================================
//
// fclouds extension 'extendedTosca'
//
// ======================================================================

one sig extension extends Extension {} {
    name = "extendedTosca"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    import = core/extension + infrastructure/extension + sla/extension + tosca/extension + modmacao/extension + platform/extension + placement/extension
    no kinds
    mixins = tosca_capabilities_containerchild + tosca_capabilities_somecap + tosca_capabilities_indigo_endpoint + tosca_capabilities_ha + tosca_capabilities_nodejsappcontainer + tosca_capabilities_container_docker + tosca_capabilities_somechildcap + tosca_nodes_computewithprop + tosca_nodes_webapplication_paypalpizzastore + tosca_nodes_abstractmongod + tosca_nodes_mongod + tosca_nodes_network_network + tosca_nodes_nodejs + tosca_nodes_container_application_docker + tosca_nodes_softwarecomponent_kibana + tosca_nodes_computewithattrlist + tosca_nodes_softwarecomponent_logstash + example_databasesubsystem + tosca_nodes_softwarecomponent_collectd + tosca_nodes_nodewithreq + tosca_nodes_somenode2 + tosca_nodes_php + tosca_nodes_database_mysql + example_queuingsubsystem + example_transactionsubsystem + tosca_nodes_abstractmysql + tosca_nodes_mysql + tosca_nodes_softwarecomponent_elasticsearch + tosca_nodes_databasewithlistparam + example_someapp + tosca_nodes_nodecellar + tosca_nodes_nodewithcap + tosca_nodes_apache + rsyslog + tosca_nodes_wordpress + tosca_nodes_network_port + tosca_nodes_computewithcapwithattr + tosca_nodes_softwarecomponent_rsyslog + tosca_nodes_hacompute + tosca_nodes_somenode + tosca_nodes_dbms_mysql + mycompany_mytypes_myscalingpolicy + tosca_relationships_nodecellarhostedonnodejs + tosca_relationships_ha + myattachesto + tosca_relationships_nodejsconnecttomongo + tosca_relationships_network_linksto + test_relation_connects + tosca_relationships_network_bindsto
    types = arrayCredential_DataType + arrayPortSpec_DataType + arrayversion_DataType + ip_versionEnum_DataType + storage_pathEnum_DataType + arrayinteger_DataType
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_capabilities_containerchild'
//
// ======================================================================

one sig tosca_capabilities_containerchild extends Mixin {} {
    term = "tosca_capabilities_containerchild"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Define a capability class that inherits from tosca.capabilities.Container"
    depends = tosca/tosca_capabilities_container
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_capabilities_containerchild
}

// ======================================================================
// Signature for Tosca_capabilities_containerchild
// ======================================================================

sig Tosca_capabilities_containerchild in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_capabilities_somecap'
//
// ======================================================================

one sig tosca_capabilities_somecap extends Mixin {} {
    term = "tosca_capabilities_somecap"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_capabilities_root
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_capabilities_somecap
}

// ======================================================================
// Signature for Tosca_capabilities_somecap
// ======================================================================

sig Tosca_capabilities_somecap in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_capabilities_indigo_endpoint'
//
// ======================================================================

one sig tosca_capabilities_indigo_endpoint extends Mixin {} {
    term = "tosca_capabilities_indigo_endpoint"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_capabilities_endpoint
    no applies
    attributes = tosca_capabilities_indigo_endpoint_credential
    no actions
    entities.Time in this/Tosca_capabilities_indigo_endpoint
}

//
// OCCI attribute 'credential'
//
one sig tosca_capabilities_indigo_endpoint_credential extends Attribute {} {
    name = "credential"
    type = arrayCredential_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_capabilities_indigo_endpoint
// ======================================================================

sig Tosca_capabilities_indigo_endpoint in core/Entity {
    credential : lone arrayCredential,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_capabilities_ha'
//
// ======================================================================

one sig tosca_capabilities_ha extends Mixin {} {
    term = "tosca_capabilities_ha"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_capabilities_root
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_capabilities_ha
}

// ======================================================================
// Signature for Tosca_capabilities_ha
// ======================================================================

sig Tosca_capabilities_ha in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_capabilities_nodejsappcontainer'
//
// ======================================================================

one sig tosca_capabilities_nodejsappcontainer extends Mixin {} {
    term = "tosca_capabilities_nodejsappcontainer"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_capabilities_container
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_capabilities_nodejsappcontainer
}

// ======================================================================
// Signature for Tosca_capabilities_nodejsappcontainer
// ======================================================================

sig Tosca_capabilities_nodejsappcontainer in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_capabilities_container_docker'
//
// ======================================================================

one sig tosca_capabilities_container_docker extends Mixin {} {
    term = "tosca_capabilities_container_docker"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_capabilities_container
    no applies
    attributes = tosca_capabilities_container_docker_publish_all + tosca_capabilities_container_docker_publish_ports + tosca_capabilities_container_docker_expose_ports + tosca_capabilities_container_docker_volumes + tosca_capabilities_container_docker_version
    no actions
    entities.Time in this/Tosca_capabilities_container_docker
}

//
// OCCI attribute 'publish.all'
//
one sig tosca_capabilities_container_docker_publish_all extends Attribute {} {
    name = "publish.all"
    type = tosca/boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'publish.ports'
//
one sig tosca_capabilities_container_docker_publish_ports extends Attribute {} {
    name = "publish.ports"
    type = arrayPortSpec_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'expose.ports'
//
one sig tosca_capabilities_container_docker_expose_ports extends Attribute {} {
    name = "expose.ports"
    type = arrayPortSpec_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'volumes'
//
one sig tosca_capabilities_container_docker_volumes extends Attribute {} {
    name = "volumes"
    type = tosca/arraystring_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'version'
//
one sig tosca_capabilities_container_docker_version extends Attribute {} {
    name = "version"
    type = arrayversion_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_capabilities_container_docker
// ======================================================================

sig Tosca_capabilities_container_docker in core/Entity {
    publish_all : lone tosca/boolean,
    publish_ports : lone arrayPortSpec,
    expose_ports : lone arrayPortSpec,
    volumes : lone tosca/arraystring,
    //version : lone arrayversion,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_capabilities_somechildcap'
//
// ======================================================================

one sig tosca_capabilities_somechildcap extends Mixin {} {
    term = "tosca_capabilities_somechildcap"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca_capabilities_somecap
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_capabilities_somechildcap
}

// ======================================================================
// Signature for Tosca_capabilities_somechildcap
// ======================================================================

sig Tosca_capabilities_somechildcap in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_computewithprop'
//
// ======================================================================

one sig tosca_nodes_computewithprop extends Mixin {} {
    term = "tosca_nodes_computewithprop"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Compute node type with a parameter for the get property with host test"
    depends = tosca/tosca_nodes_compute
    no applies
    attributes = tosca_nodes_computewithprop_test
    no actions
    entities.Time in this/Tosca_nodes_computewithprop
}

//
// OCCI attribute 'test'
//
one sig tosca_nodes_computewithprop_test extends Attribute {} {
    name = "test"
    type = tosca/integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_computewithprop
// ======================================================================

sig Tosca_nodes_computewithprop in core/Entity {
    test : lone tosca/integer,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_webapplication_paypalpizzastore'
//
// ======================================================================

one sig tosca_nodes_webapplication_paypalpizzastore extends Mixin {} {
    term = "tosca_nodes_webapplication_paypalpizzastore"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Pizza store app that allows you to explore the features provided by PayPal's REST APIs. More detail can be found at https://github.com/paypal/rest-api-sample-app-nodejs/"
    depends = tosca/tosca_nodes_webapplication
    no applies
    attributes = tosca_nodes_webapplication_paypalpizzastore_github_url
    no actions
    entities.Time in this/Tosca_nodes_webapplication_paypalpizzastore
}

//
// OCCI attribute 'github.url'
//
one sig tosca_nodes_webapplication_paypalpizzastore_github_url extends Attribute {} {
    name = "github.url"
    type = tosca/string_DataType
    mutable = True
    required = False
    default = "https://github.com/sample.git"
    description = "location of the application on the github."
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_webapplication_paypalpizzastore
// ======================================================================

sig Tosca_nodes_webapplication_paypalpizzastore in core/Entity {
    github_url : lone tosca/string,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_abstractmongod'
//
// ======================================================================

one sig tosca_nodes_abstractmongod extends Mixin {} {
    term = "tosca_nodes_abstractmongod"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_dbms
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_abstractmongod
}

// ======================================================================
// Signature for Tosca_nodes_abstractmongod
// ======================================================================

sig Tosca_nodes_abstractmongod in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_mongod'
//
// ======================================================================

one sig tosca_nodes_mongod extends Mixin {} {
    term = "tosca_nodes_mongod"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "A node to install Mongodb nosql database."
    depends = tosca_nodes_abstractmongod
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_mongod
}

// ======================================================================
// Signature for Tosca_nodes_mongod
// ======================================================================

sig Tosca_nodes_mongod in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_network_network'
//
// ======================================================================

one sig tosca_nodes_network_network extends Mixin {} {
    term = "tosca_nodes_network_network"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_root
    applies = infrastructure/network
    attributes = tosca_nodes_network_network_physical_network + tosca_nodes_network_network_segmentation_id + tosca_nodes_network_network_network_id + tosca_nodes_network_network_ip_version + tosca_nodes_network_network_start_ip + tosca_nodes_network_network_network_name + tosca_nodes_network_network_cidr + tosca_nodes_network_network_gateway_ip + tosca_nodes_network_network_network_type + tosca_nodes_network_network_end_ip
    no actions
    entities.Time in this/Tosca_nodes_network_network
}

//
// OCCI attribute 'physical.network'
//
one sig tosca_nodes_network_network_physical_network extends Attribute {} {
    name = "physical.network"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'segmentation.id'
//
one sig tosca_nodes_network_network_segmentation_id extends Attribute {} {
    name = "segmentation.id"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'network.id'
//
one sig tosca_nodes_network_network_network_id extends Attribute {} {
    name = "network.id"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ip.version'
//
one sig tosca_nodes_network_network_ip_version extends Attribute {} {
    name = "ip.version"
    type = ip_versionEnum_DataType
    mutable = True
    required = False
    default = "IPv4"
    no description
    multiple_values = False
}

//
// OCCI attribute 'start.ip'
//
one sig tosca_nodes_network_network_start_ip extends Attribute {} {
    name = "start.ip"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'network.name'
//
one sig tosca_nodes_network_network_network_name extends Attribute {} {
    name = "network.name"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'cidr'
//
one sig tosca_nodes_network_network_cidr extends Attribute {} {
    name = "cidr"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'gateway.ip'
//
one sig tosca_nodes_network_network_gateway_ip extends Attribute {} {
    name = "gateway.ip"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'network.type'
//
one sig tosca_nodes_network_network_network_type extends Attribute {} {
    name = "network.type"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'end.ip'
//
one sig tosca_nodes_network_network_end_ip extends Attribute {} {
    name = "end.ip"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_network_network
// ======================================================================

sig Tosca_nodes_network_network in infrastructure/Network {
    physical_network : lone tosca/string,
    segmentation_id : lone tosca/string,
    network_id : lone tosca/string,
    ip_version : lone ip_versionEnum,
    start_ip : lone tosca/string,
//    network_name : lone tosca/string,
    cidr : lone tosca/string,
    gateway_ip : lone tosca/string,
    network_type : lone tosca/string,
    end_ip : lone tosca/string,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_nodejs'
//
// ======================================================================

one sig tosca_nodes_nodejs extends Mixin {} {
    term = "tosca_nodes_nodejs"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "The TOSCA Nodejs Node Type represents an Nodejs component that can be managed and run by a TOSCA Compute Node Type."
    depends = tosca/tosca_nodes_webserver + tosca_capabilities_nodejsappcontainer
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_nodejs
}

// ======================================================================
// Signature for Tosca_nodes_nodejs
// ======================================================================

sig Tosca_nodes_nodejs in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_container_application_docker'
//
// ======================================================================

one sig tosca_nodes_container_application_docker extends Mixin {} {
    term = "tosca_nodes_container_application_docker"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_container_application
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_container_application_docker
}

// ======================================================================
// Signature for Tosca_nodes_container_application_docker
// ======================================================================

sig Tosca_nodes_container_application_docker in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_softwarecomponent_kibana'
//
// ======================================================================

one sig tosca_nodes_softwarecomponent_kibana extends Mixin {} {
    term = "tosca_nodes_softwarecomponent_kibana"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Kibana is an open source analytics and visualization platform designed to work with Elasticsearch. You use Kibana to search, view, and interact with data stored in Elasticsearch."
    depends = tosca/tosca_nodes_softwarecomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_softwarecomponent_kibana
}

// ======================================================================
// Signature for Tosca_nodes_softwarecomponent_kibana
// ======================================================================

sig Tosca_nodes_softwarecomponent_kibana in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_computewithattrlist'
//
// ======================================================================

one sig tosca_nodes_computewithattrlist extends Mixin {} {
    term = "tosca_nodes_computewithattrlist"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Compute node type with a list attribute"
    depends = tosca/tosca_nodes_compute
    no applies
    attributes = tosca_nodes_computewithattrlist_attr_list
    no actions
    entities.Time in this/Tosca_nodes_computewithattrlist
}

//
// OCCI attribute 'attr.list'
//
one sig tosca_nodes_computewithattrlist_attr_list extends Attribute {} {
    name = "attr.list"
    type = tosca/map_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_computewithattrlist
// ======================================================================

sig Tosca_nodes_computewithattrlist in core/Entity {
    attr_list : lone tosca/map,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_softwarecomponent_logstash'
//
// ======================================================================

one sig tosca_nodes_softwarecomponent_logstash extends Mixin {} {
    term = "tosca_nodes_softwarecomponent_logstash"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Logstash is a tool for receiving, processing and outputting logs. All kinds of logs. System logs, webserver logs, error logs, application logs, and just about anything you can throw at it."
    depends = tosca/tosca_nodes_softwarecomponent + tosca/tosca_capabilities_endpoint
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_softwarecomponent_logstash
}

// ======================================================================
// Signature for Tosca_nodes_softwarecomponent_logstash
// ======================================================================

sig Tosca_nodes_softwarecomponent_logstash in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#example_databasesubsystem'
//
// ======================================================================

one sig example_databasesubsystem extends Mixin {} {
    term = "example_databasesubsystem"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_root + tosca/tosca_capabilities_endpoint_database
    no applies
    no attributes
    no actions
    entities.Time in this/Example_databasesubsystem
}

// ======================================================================
// Signature for Example_databasesubsystem
// ======================================================================

sig Example_databasesubsystem in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_softwarecomponent_collectd'
//
// ======================================================================

one sig tosca_nodes_softwarecomponent_collectd extends Mixin {} {
    term = "tosca_nodes_softwarecomponent_collectd"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "collectd is a daemon which gathers statistics about the system it is running on."
    depends = tosca/tosca_nodes_softwarecomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_softwarecomponent_collectd
}

// ======================================================================
// Signature for Tosca_nodes_softwarecomponent_collectd
// ======================================================================

sig Tosca_nodes_softwarecomponent_collectd in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_nodewithreq'
//
// ======================================================================

one sig tosca_nodes_nodewithreq extends Mixin {} {
    term = "tosca_nodes_nodewithreq"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_softwarecomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_nodewithreq
}

// ======================================================================
// Signature for Tosca_nodes_nodewithreq
// ======================================================================

sig Tosca_nodes_nodewithreq in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_somenode2'
//
// ======================================================================

one sig tosca_nodes_somenode2 extends Mixin {} {
    term = "tosca_nodes_somenode2"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_root + tosca_capabilities_containerchild
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_somenode2
}

// ======================================================================
// Signature for Tosca_nodes_somenode2
// ======================================================================

sig Tosca_nodes_somenode2 in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_php'
//
// ======================================================================

one sig tosca_nodes_php extends Mixin {} {
    term = "tosca_nodes_php"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "PHP install through apt-get."
    depends = tosca/tosca_nodes_softwarecomponent + tosca/tosca_capabilities_root
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_php
}

// ======================================================================
// Signature for Tosca_nodes_php
// ======================================================================

sig Tosca_nodes_php in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_database_mysql'
//
// ======================================================================

one sig tosca_nodes_database_mysql extends Mixin {} {
    term = "tosca_nodes_database_mysql"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_database
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_database_mysql
}

// ======================================================================
// Signature for Tosca_nodes_database_mysql
// ======================================================================

sig Tosca_nodes_database_mysql in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#example_queuingsubsystem'
//
// ======================================================================

one sig example_queuingsubsystem extends Mixin {} {
    term = "example_queuingsubsystem"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_root + tosca/tosca_capabilities_endpoint
    no applies
    no attributes
    no actions
    entities.Time in this/Example_queuingsubsystem
}

// ======================================================================
// Signature for Example_queuingsubsystem
// ======================================================================

sig Example_queuingsubsystem in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#example_transactionsubsystem'
//
// ======================================================================

one sig example_transactionsubsystem extends Mixin {} {
    term = "example_transactionsubsystem"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_root + tosca/tosca_capabilities_endpoint
    no applies
    attributes = example_transactionsubsystem_receiver_port + example_transactionsubsystem_mq_service_ip
    no actions
    entities.Time in this/Example_transactionsubsystem
}

//
// OCCI attribute 'receiver.port'
//
one sig example_transactionsubsystem_receiver_port extends Attribute {} {
    name = "receiver.port"
    type = tosca/integer_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'mq.service.ip'
//
one sig example_transactionsubsystem_mq_service_ip extends Attribute {} {
    name = "mq.service.ip"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Example_transactionsubsystem
// ======================================================================

sig Example_transactionsubsystem in core/Entity {
    receiver_port : lone tosca/integer,
    mq_service_ip : lone tosca/string,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_abstractmysql'
//
// ======================================================================

one sig tosca_nodes_abstractmysql extends Mixin {} {
    term = "tosca_nodes_abstractmysql"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "A node that provides a mysql endpoint."
    depends = tosca/tosca_nodes_database + tosca/tosca_capabilities_endpoint_database
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_abstractmysql
}

// ======================================================================
// Signature for Tosca_nodes_abstractmysql
// ======================================================================

sig Tosca_nodes_abstractmysql in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_mysql'
//
// ======================================================================

one sig tosca_nodes_mysql extends Mixin {} {
    term = "tosca_nodes_mysql"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "A node that represent MySQL database with data on a attached volume."
    depends = tosca_nodes_abstractmysql
    no applies
    attributes = tosca_nodes_mysql_storage_path + tosca_nodes_mysql_db_user + tosca_nodes_mysql_bind_address + tosca_nodes_mysql_db_password
    no actions
    entities.Time in this/Tosca_nodes_mysql
}

//
// OCCI attribute 'storage.path'
//
one sig tosca_nodes_mysql_storage_path extends Attribute {} {
    name = "storage.path"
    type = storage_pathEnum_DataType
    mutable = True
    required = False
    default = "mountedStorage"
    no description
    multiple_values = False
}

//
// OCCI attribute 'db.user'
//
one sig tosca_nodes_mysql_db_user extends Attribute {} {
    name = "db.user"
    type = tosca/string_DataType
    mutable = True
    required = False
    default = "pass"
    description = "The user account used for database administration."
    multiple_values = False
}

//
// OCCI attribute 'bind.address'
//
one sig tosca_nodes_mysql_bind_address extends Attribute {} {
    name = "bind.address"
    type = tosca/boolean_DataType
    mutable = True
    required = False
    default = "true"
    description = "If true,the server accepts TCP/IP connections on all server host IPv4 interfaces."
    multiple_values = False
}

//
// OCCI attribute 'db.password'
//
one sig tosca_nodes_mysql_db_password extends Attribute {} {
    name = "db.password"
    type = tosca/string_DataType
    mutable = True
    required = False
    default = "pass"
    description = "The password associated with the user account for database administration."
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_mysql
// ======================================================================

sig Tosca_nodes_mysql in core/Entity {
    storage_path : lone storage_pathEnum,
    db_user : lone tosca/string,
    bind_address : lone tosca/boolean,
    db_password : lone tosca/string,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_softwarecomponent_elasticsearch'
//
// ======================================================================

one sig tosca_nodes_softwarecomponent_elasticsearch extends Mixin {} {
    term = "tosca_nodes_softwarecomponent_elasticsearch"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Elasticsearch is an open-source search engine built on top of Apache Lucene, a full-text search-engine library."
    depends = tosca/tosca_nodes_softwarecomponent + tosca/tosca_capabilities_endpoint
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_softwarecomponent_elasticsearch
}

// ======================================================================
// Signature for Tosca_nodes_softwarecomponent_elasticsearch
// ======================================================================

sig Tosca_nodes_softwarecomponent_elasticsearch in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_databasewithlistparam'
//
// ======================================================================

one sig tosca_nodes_databasewithlistparam extends Mixin {} {
    term = "tosca_nodes_databasewithlistparam"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_database
    no applies
    attributes = tosca_nodes_databasewithlistparam_list_prop
    no actions
    entities.Time in this/Tosca_nodes_databasewithlistparam
}

//
// OCCI attribute 'list.prop'
//
one sig tosca_nodes_databasewithlistparam_list_prop extends Attribute {} {
    name = "list.prop"
    type = arrayinteger_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_databasewithlistparam
// ======================================================================

sig Tosca_nodes_databasewithlistparam in core/Entity {
    list_prop : lone arrayinteger,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#example_someapp'
//
// ======================================================================

one sig example_someapp extends Mixin {} {
    term = "example_someapp"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "taken from tosca-topologies/Example18-ImplementationOfATransactionSubsytemNodeTypeUsingSubstitutionMappings"
    depends = tosca/tosca_nodes_root + tosca/tosca_capabilities_endpoint
    no applies
    no attributes
    no actions
    entities.Time in this/Example_someapp
}

// ======================================================================
// Signature for Example_someapp
// ======================================================================

sig Example_someapp in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_nodecellar'
//
// ======================================================================

one sig tosca_nodes_nodecellar extends Mixin {} {
    term = "tosca_nodes_nodecellar"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "The TOSCA Nodecellar Node Type represents a Nodecellar Application."
    depends = tosca/tosca_nodes_webapplication
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_nodecellar
}

// ======================================================================
// Signature for Tosca_nodes_nodecellar
// ======================================================================

sig Tosca_nodes_nodecellar in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_nodewithcap'
//
// ======================================================================

one sig tosca_nodes_nodewithcap extends Mixin {} {
    term = "tosca_nodes_nodewithcap"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_root + tosca_capabilities_somecap
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_nodewithcap
}

// ======================================================================
// Signature for Tosca_nodes_nodewithcap
// ======================================================================

sig Tosca_nodes_nodewithcap in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_apache'
//
// ======================================================================

one sig tosca_nodes_apache extends Mixin {} {
    term = "tosca_nodes_apache"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "The TOSCA Apache Node Type represents an apache component that can be managed and run by a TOSCA Compute Node Type."
    depends = tosca/tosca_nodes_webserver + tosca/tosca_capabilities_container
    no applies
    attributes = tosca_nodes_apache_document_root
    no actions
    entities.Time in this/Tosca_nodes_apache
}

//
// OCCI attribute 'document.root'
//
one sig tosca_nodes_apache_document_root extends Attribute {} {
    name = "document.root"
    type = tosca/string_DataType
    mutable = True
    required = False
    default = "var/www"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_apache
// ======================================================================

sig Tosca_nodes_apache in core/Entity {
    document_root : lone tosca/string,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#rsyslog'
//
// ======================================================================

one sig rsyslog extends Mixin {} {
    term = "rsyslog"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "RSYSLOG is the Rocket-fast SYStem for LOG processing."
    depends = tosca/tosca_nodes_softwarecomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Rsyslog
}

// ======================================================================
// Signature for Rsyslog
// ======================================================================

sig Rsyslog in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_wordpress'
//
// ======================================================================

one sig tosca_nodes_wordpress extends Mixin {} {
    term = "tosca_nodes_wordpress"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "The TOSCA Wordpress Node Type represents a Wordpress CMS."
    depends = tosca/tosca_nodes_webapplication
    no applies
    attributes = tosca_nodes_wordpress_zip_url
    no actions
    entities.Time in this/Tosca_nodes_wordpress
}

//
// OCCI attribute 'zip.url'
//
one sig tosca_nodes_wordpress_zip_url extends Attribute {} {
    name = "zip.url"
    type = tosca/string_DataType
    mutable = True
    required = False
    default = "https://wordpress.org/latest.zip"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_wordpress
// ======================================================================

sig Tosca_nodes_wordpress in core/Entity {
    zip_url : lone tosca/string,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_network_port'
//
// ======================================================================

one sig tosca_nodes_network_port extends Mixin {} {
    term = "tosca_nodes_network_port"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_root
    applies = infrastructure/network
    attributes = tosca_nodes_network_port_ip_range_end + tosca_nodes_network_port_ip_range_start + tosca_nodes_network_port_ip_address + tosca_nodes_network_port_is_default + tosca_nodes_network_port_order
    no actions
    entities.Time in this/Tosca_nodes_network_port
}

//
// OCCI attribute 'ip.range.end'
//
one sig tosca_nodes_network_port_ip_range_end extends Attribute {} {
    name = "ip.range.end"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ip.range.start'
//
one sig tosca_nodes_network_port_ip_range_start extends Attribute {} {
    name = "ip.range.start"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'ip.address'
//
one sig tosca_nodes_network_port_ip_address extends Attribute {} {
    name = "ip.address"
    type = tosca/string_DataType
    mutable = True
    required = False
    no default
    no description
    multiple_values = False
}

//
// OCCI attribute 'is.default'
//
one sig tosca_nodes_network_port_is_default extends Attribute {} {
    name = "is.default"
    type = tosca/boolean_DataType
    mutable = True
    required = False
    default = "false"
    no description
    multiple_values = False
}

//
// OCCI attribute 'order'
//
one sig tosca_nodes_network_port_order extends Attribute {} {
    name = "order"
    type = tosca/integerMinZero_DataType
    mutable = True
    required = True
    default = "0"
    no description
    multiple_values = False
}

// ======================================================================
// Signature for Tosca_nodes_network_port
// ======================================================================

sig Tosca_nodes_network_port in infrastructure/Network {
    ip_range_end : lone tosca/string,
    ip_range_start : lone tosca/string,
    ip_address : lone tosca/string,
    is_default : lone tosca/boolean,
    order : one tosca/integerMinZero,
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_computewithcapwithattr'
//
// ======================================================================

one sig tosca_nodes_computewithcapwithattr extends Mixin {} {
    term = "tosca_nodes_computewithcapwithattr"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Compute node type with capability with an attribute of type list"
    depends = tosca/tosca_nodes_compute + tosca_capabilities_indigo_endpoint
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_computewithcapwithattr
}

// ======================================================================
// Signature for Tosca_nodes_computewithcapwithattr
// ======================================================================

sig Tosca_nodes_computewithcapwithattr in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_softwarecomponent_rsyslog'
//
// ======================================================================

one sig tosca_nodes_softwarecomponent_rsyslog extends Mixin {} {
    term = "tosca_nodes_softwarecomponent_rsyslog"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "RSYSLOG is the Rocket-fast SYStem for LOG processing."
    depends = tosca/tosca_nodes_softwarecomponent
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_softwarecomponent_rsyslog
}

// ======================================================================
// Signature for Tosca_nodes_softwarecomponent_rsyslog
// ======================================================================

sig Tosca_nodes_softwarecomponent_rsyslog in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_hacompute'
//
// ======================================================================

one sig tosca_nodes_hacompute extends Mixin {} {
    term = "tosca_nodes_hacompute"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_compute + tosca_capabilities_ha
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_hacompute
}

// ======================================================================
// Signature for Tosca_nodes_hacompute
// ======================================================================

sig Tosca_nodes_hacompute in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_somenode'
//
// ======================================================================

one sig tosca_nodes_somenode extends Mixin {} {
    term = "tosca_nodes_somenode"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "A node with a capiblity and a parent capability defined in an imported file"
    depends = tosca/tosca_nodes_root + tosca_capabilities_somechildcap
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_somenode
}

// ======================================================================
// Signature for Tosca_nodes_somenode
// ======================================================================

sig Tosca_nodes_somenode in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_nodes_dbms_mysql'
//
// ======================================================================

one sig tosca_nodes_dbms_mysql extends Mixin {} {
    term = "tosca_nodes_dbms_mysql"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_nodes_dbms
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_nodes_dbms_mysql
}

// ======================================================================
// Signature for Tosca_nodes_dbms_mysql
// ======================================================================

sig Tosca_nodes_dbms_mysql in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#mycompany_mytypes_myscalingpolicy'
//
// ======================================================================

one sig mycompany_mytypes_myscalingpolicy extends Mixin {} {
    term = "mycompany_mytypes_myscalingpolicy"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    no depends
    no applies
    no attributes
    no actions
    entities.Time in this/Mycompany_mytypes_myscalingpolicy
}

// ======================================================================
// Signature for Mycompany_mytypes_myscalingpolicy
// ======================================================================

sig Mycompany_mytypes_myscalingpolicy in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_relationships_nodecellarhostedonnodejs'
//
// ======================================================================

one sig tosca_relationships_nodecellarhostedonnodejs extends Mixin {} {
    term = "tosca_relationships_nodecellarhostedonnodejs"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Relationship use to describe that the website is deployed on the target nodejs server."
    depends = tosca/tosca_relationships_hostedon
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_relationships_nodecellarhostedonnodejs
}

// ======================================================================
// Signature for Tosca_relationships_nodecellarhostedonnodejs
// ======================================================================

sig Tosca_relationships_nodecellarhostedonnodejs in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_relationships_ha'
//
// ======================================================================

one sig tosca_relationships_ha extends Mixin {} {
    term = "tosca_relationships_ha"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_relationships_root
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_relationships_ha
}

// ======================================================================
// Signature for Tosca_relationships_ha
// ======================================================================

sig Tosca_relationships_ha in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#myattachesto'
//
// ======================================================================

one sig myattachesto extends Mixin {} {
    term = "myattachesto"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "taken from tosca-topologies/BlockStorage4"
    depends = tosca/tosca_relationships_attachesto
    no applies
    no attributes
    no actions
    entities.Time in this/Myattachesto
}

// ======================================================================
// Signature for Myattachesto
// ======================================================================

sig Myattachesto in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_relationships_nodejsconnecttomongo'
//
// ======================================================================

one sig tosca_relationships_nodejsconnecttomongo extends Mixin {} {
    term = "tosca_relationships_nodejsconnecttomongo"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    title = "Relationship use to connect nodejs with a mongodb databse"
    depends = tosca/tosca_relationships_connectsto
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_relationships_nodejsconnecttomongo
}

// ======================================================================
// Signature for Tosca_relationships_nodejsconnecttomongo
// ======================================================================

sig Tosca_relationships_nodejsconnecttomongo in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_relationships_network_linksto'
//
// ======================================================================

one sig tosca_relationships_network_linksto extends Mixin {} {
    term = "tosca_relationships_network_linksto"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_relationships_dependson
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_relationships_network_linksto
}

// ======================================================================
// Signature for Tosca_relationships_network_linksto
// ======================================================================

sig Tosca_relationships_network_linksto in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#test_relation_connects'
//
// ======================================================================

one sig test_relation_connects extends Mixin {} {
    term = "test_relation_connects"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    no depends
    no applies
    no attributes
    no actions
    entities.Time in this/Test_relation_connects
}

// ======================================================================
// Signature for Test_relation_connects
// ======================================================================

sig Test_relation_connects in core/Entity {
}

// ======================================================================
//
// OCCI mixin 'http://schemas.ogf.org/tosca/extended#tosca_relationships_network_bindsto'
//
// ======================================================================

one sig tosca_relationships_network_bindsto extends Mixin {} {
    term = "tosca_relationships_network_bindsto"
    scheme = "http://schemas.ogf.org/tosca/extended#"
    no title
    depends = tosca/tosca_relationships_dependson
    no applies
    no attributes
    no actions
    entities.Time in this/Tosca_relationships_network_bindsto
}

// ======================================================================
// Signature for Tosca_relationships_network_bindsto
// ======================================================================

sig Tosca_relationships_network_bindsto in core/Entity {
}

//
// OCCI data type arrayCredential
//
one sig arrayCredential_DataType extends DataType {} {
    name = "arrayCredential"
}

let arrayCredential=String

//
// OCCI data type arrayPortSpec
//
one sig arrayPortSpec_DataType extends DataType {} {
    name = "arrayPortSpec"
}

let arrayPortSpec=String

//
// OCCI data type arrayversion
//
one sig arrayversion_DataType extends DataType {} {
    name = "arrayversion"
}

let arrayversion=String

//
// OCCI data type ip_versionEnum
//
one sig ip_versionEnum_DataType extends DataType {} {
    name = "ip_versionEnum"
}

let ip_versionEnum=String

//
// OCCI data type storage_pathEnum
//
one sig storage_pathEnum_DataType extends DataType {} {
    name = "storage_pathEnum"
}

let storage_pathEnum=String

//
// OCCI data type arrayinteger
//
one sig arrayinteger_DataType extends DataType {} {
    name = "arrayinteger"
}

let arrayinteger=String

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

