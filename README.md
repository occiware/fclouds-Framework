# Specifying Semantic Interoperability between Heterogeneous Cloud Resources with the fclouds Formal Language

With  the  advent  of  cloud  computing, different  cloud  providers with heterogeneous  services and Application Programming Interfaces (APIs) have emerged. Hence, building an interoperable multi-cloud system becomes a complex task.
Our idea is to design **fclouds** framework to achieve semantic interoperability in multi-clouds, i.e., to identify the common concepts between cloud APIs and to reason over them.
In this paper, we propose to take advantage of the Open Cloud Computing Interface (OCCI) standard and the Alloy formal specification language to define the **fclouds** language, which is a formal language for specifying heterogeneous cloud APIs. 
To do so, we formalize OCCI concepts and operational semantics, then we identify and validate five properties (_consistency, sequentiality, reversibility, idempotence and safety_) that denote their characteristics. 
To demonstrate the effectiveness of our cloud formal language, we present thirteen case studies where we formally specify infrastructure, platform, Internet of Things (IoT) and transverse cloud concerns. Thanks to the Alloy analyzer, we verify that these heterogeneous APIs uphold the properties of **fclouds** and also validate their own specific properties.
Then, thanks to formal transformation rules and equivalence properties, we draw a precise alignment between our case studies, which promotes semantic interoperability in a multi-cloud system.

## Prerequisites

You need Alloy analyzer. You may download it [here](http://alloy.csail.mit.edu/alloy/download.html).

## How To Use

1. Clone the project:
```
git clone https://github.com/occiware/fclouds-Framework.git
```

2. In Alloy analyzer, open a file with `.als` extension in the folder `fclouds-framework`. This file is the formal specification in Alloy of a certain cloud domain, _e.g._ `docker.als`, `infrastructure.als`, `vmware.als`, etc.

3. In the Execute sub-menu, you may find all the predefined `Run` and `Check` commands.

* `Run` commands find instances that conform to the specification.
    * If an instance is found, the property is true. Else, it isn't.

* `Check` commands find a counterexample of a certain property.
    * If a counterexample is found, the property is false. Else, it is true in a given scope.

## Examples
