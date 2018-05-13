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

2. In Alloy analyzer, open a file with `.als` extension from the folder `fclouds-framework`. This file is the formal specification in Alloy of a certain cloud domain, _e.g._ `docker.als`, `infrastructure.als`, `vmware.als`, etc.

3. In the Execute sub-menu, you may find all the predefined `Run` and `Check` commands.

* `Run` commands find instances that conform to the specification.
    * If an instance is found, the property is true. Else, it isn't.

* `Check` commands find a counterexample of a certain property.
    * If a counterexample is found, the property is false. Else, it is true in a given scope.

## Example

In this section, we present a full example of how to use **fclouds**.

1. Open `platform.als` in Alloy analyzer.

2. We want to verify that the specification is consistent, i.e., it does not contain contradictory constraints. For this, in the Execute sub-menu, we launch the `Run Consistency for 10` command by clicking on it.

3. In the panel on the right, we obtain `Instance found. Predicate is consistent.` This means that there are instances that combine up to 10 objects of each type and that may satisfy the `platform` specification. The Alloy analyzer can display instances in graphical form, or in textual form, or as an expanding tree.

4. Now, we want to verify that retrieving a component (using GET HTTP method) does not affect the configuration. This means we want to verify the safety property on the retrieval of a component. For this, in the Execute sub-menu, we launch the `Check RetrieveResourceIsSafe for 10` command by clicking on it.

5. In the panel on the right, we obtain `No counterexample found. Assertion may be valid.` This means that within the scope 10, i.e., for 10 objects of each type, the safety of component retrieval holds.




