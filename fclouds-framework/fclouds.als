/*******************************************************************************
 * Copyright (c) 2015-2016 Inria
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *   - Philippe Merle <philippe.merle@inria.fr>
 *   - Stéphanie Challita <stephanie.challita@inria.fr>
*******************************************************************************/

// ======================================================================
//
// This module is the translation of the Ecore metamodel for OCCI into an Alloy specification.
//
// ======================================================================

module OCCI

open util/boolean // for Bool, True and False signs.
open util/ordering [Time]
//open util/ordering [Configuration]

// Base sig for enumerations.
abstract sig EnumBase {}

// Signature for representing time instants.
sig Time {}

// ======================================================================
//
// Various OCCI string constants.
//
// ======================================================================

let OCCI_SCHEME="http://schemas.ogf.org/occi/core#"
//let OCCI_ENTITY_TERM="entity"
let OCCI_RESOURCE_TERM="resource"
let OCCI_LINK_TERM="link"

// ======================================================================
//
// In OCCI metamodel:
//
//	datatype URI : 'java.lang.String' { serializable };
//
// ======================================================================

let URI=String

// ======================================================================
//
// In OCCI metamodel:
//
//	abstract class Category
//	{
//		attribute term : String[1];
//		attribute scheme : URI[1];
//		attribute title : String[?];
//		property attributes : Attribute[*] { ordered composes };
//		invariant IdentityUnique: Category.allInstances()->isUnique(scheme + term);
//		invariant SchemeEndsWithSharp: scheme.substring(scheme.size(),scheme.size()) = '#';
//		invariant AttributesNameUnique: attributes->isUnique(name);
//	}
//
// ======================================================================

abstract sig Category {
	term : one String,
	scheme : one URI,
	title : lone String,
	attributes : set Attribute
} {
	// OCL invariant IdentityUnique: Category.allInstances()->isUnique(scheme + term);
	no disj c1, c2 : Category | sameIdentity[c1, c2]

	// The scheme of each Category instance must end with a sharp.
	// OCL invariant SchemeEndsWithSharp: scheme.substring(scheme.size(),scheme.size()) = '#';
	// WARNING: No translation in Alloy because no string manipulation operations.

	// OCL invariant AttributesNameUnique: attributes->isUnique(name);
	no disj a1, a2 : attributes | a1.name = a2.name
	// WARNING: Previous constraint has a strong impact on analysis execution time.
}

pred sameIdentity[c1: Category, c2 : Category]
{
  c1.term = c2.term and c1.scheme = c2.scheme
}

// Not used currently.
//
// pred sameCategories[categories : set Category] {
//	one categories.scheme and one categories.term
// }

// Equivalence predicate between two categories.
pred isoCategory[c1, c2 : Category]
{
  c1.term = c2.term
  c1.scheme = c2.scheme
  c1.title = c2.title
  c1.attributes = c2.attributes
}

// ======================================================================
//
// In OCCI metamodel:
//
//	class Attribute
//	{
//		attribute name : String[1];
//		attribute mutable : Boolean[?];
//		attribute required : Boolean[?];
//		attribute default : String[?];
//		attribute description : String[?];
//		property type : ecore::EDataType[?];
//		attribute multiple_values : Boolean[?] = 'false';
//	}
//
// ======================================================================

sig Attribute {
	name : one String,
	mutable : lone Bool,
	required : lone Bool,
	default : lone String,
	description : lone String,
	type : lone DataType,
	multiple_values : lone Bool
} {
	// Each attribute is owned by only one category, i.e. class Category { property attributes : Attribute[*] { composes }; }
	one ~(Category<:attributes)[this]
}

// Following fact is equivalent to constraint "one ~(Category<:attributes)[this]"
// fact AllAttributesBelongToOneCategory
// {
//	all a: Attribute | one c: Category | a in c.attributes
// }

// ======================================================================
//
// Mapping for ecore::EDataType
//
// ======================================================================

abstract sig DataType {
	name: one String
} {
}

// ======================================================================
//
// In OCCI metamodel:
//
//	class Kind extends Category
//	{
//		property parent : Kind[?];
//		property actions : Action[*] { ordered composes };
//		property entities : Entity[*] { ordered derived readonly }
//		{
//			initial: Entity.allInstances()->select(kind = self);
//		}
//		invariant ActionTermUnicity: actions->isUnique(term);
//		invariant CorrectScheme: scheme = self.oclContainer().oclAsType(Extension).scheme;
//		invariant NoCyclicInheritance: parent->closure(parent)->excludes(self);
//		invariant EntityKindIsRootParent: self->closure(parent)->exists(k | k.term = 'entity' and k.scheme = 'http://schemas.ogf.org/occi/core#' and k.parent = null);
//		invariant AttributesNameNotAlreadyDefinedInParent: attributes.name->excludesAll(parent->closure(parent).attributes.name);
//	}
//
// ======================================================================

sig Kind extends Category {
	parent: lone Kind,
	actions: set Action,
	entities: set Entity -> Time
} {
	// Kind.entities = Entity.kind
	entities.Time = ~(Entity<:kind)[this]

	// OCL invariant ActionTermUnicity: actions->isUnique(term);
	no disj a1, a2 : actions | a1.@term = a2.@term

	// OCL invariant CorrectScheme: scheme = self.oclContainer().oclAsType(Extension).scheme;
	scheme = ~(Extension<:kinds)[this].scheme

	// A Kind instance must not inherit from itself directly or transitively.
	// OCL invariant NoCyclicInheritance: parent->closure(parent)->excludes(self);
	no p : this.^@parent | p = this  // OR p.sameIdentity[this]

	// Each Kind instance must inherit from the Entity kind instance directly or transitively.
	// The Entity kind instance is the root of the hierarchy of Kind instances.
	// OCL invariant EntityKindIsRootParent: self->closure(parent)->exists(k | k.term = 'entity' and k.scheme = 'http://schemas.ogf.org/occi/core#' and k.parent = null);
	one k : this.*@parent | k.isEntityKind

	// Kind cannot overload an attribute inherited from its parent directly or transitively.
	// OCL invariant AttributesNameNotAlreadyDefinedInParent: attributes.name->excludesAll(parent->closure(parent).attributes.name);
	no attributes.name & this.^@parent.@attributes.name

	// Make sure that entities can not have same id.
	all t : Time | no disj e1, e2 : entities.t | e1.id = e2.id
}

pred Kind.isEntityKind[]
{
	//this.term = OCCI_ENTITY_TERM
	this.scheme = OCCI_SCHEME
	no this.parent
}

// Equivalence predicate between two kinds.
pred isoKind[k1, k2 : Kind]
{
  isoCategory[k1, k2]
  k1.parent = k2.parent
  k1.actions = k2.actions
  // Next line is commented as k1 and k2 could have different entities.
  // k1.entities = k2.entities
}

// ======================================================================
//
// In OCCI metamodel:
//
//	class Action extends Category
//	{
//		invariant CorrectScheme: let category = oclContainer().oclAsType(Category) in scheme = category.scheme.substring(1,category.scheme.size()-1) + '/' + category.term + '/action#';
//	}
//
// ======================================================================

sig Action extends Category {
} {
	// each action is owned by one kind or one mixin.
	one ~(Kind<:actions + Mixin<:actions)[this]

	// The scheme of an Action instance must be the concatenation of both scheme and term of its category plus the suffix /action#.
	// OCL invariant CorrectScheme: let category = oclContainer().oclAsType(Category) in scheme = category.scheme.substring(1,category.scheme.size()-1) + '/' + category.term + '/action#';
       	// WARNING: No translation in Alloy because no string manipulation operations.

	//  TODO?: no a : Action - this | a.sameIdentity[this]
}

// ======================================================================
//
// In OCCI metamodel:
//
//	class Mixin extends Category
//	{
//		property actions : Action[*] { ordered composes };
//		property depends : Mixin[*] { ordered };
//		property applies : Kind[*] { ordered };
//		property entities : Entity[*] { ordered derived readonly }
//		{
//			initial: Entity.allInstances()->select(mixins->includes(self));
//		}
//		invariant ActionTermUnicity: actions->isUnique(term);
//		invariant CorrectScheme: let ownerScheme = self.oclContainer().oclAsType(Extension).scheme in scheme.substring(1,ownerScheme.size()-1) = ownerScheme.substring(1,ownerScheme.size()-1);
//		invariant NoCyclicInheritance: depends->closure(depends)->excludes(self);
//		invariant AttributesNameNotAlreadyDefinedInDepends: attributes.name->excludesAll(depends->closure(depends).attributes.name);
//	}
//
// ======================================================================

sig Mixin extends Category {
	actions : set Action,
	depends : set Mixin,
	applies : set Kind,
	entities : set Entity -> Time
} {
	// Mixin.entities = Entity.mixins
//	entities.Time= ~(Entity<:mixins.Time)[this]
all t : Time | entities.t = ~(Entity<:mixins.t)[this]

	// OCL invariant ActionTermUnicity: actions->isUnique(term);
	no disj a1, a2 : actions | a1.@term = a2.@term

	// OCL invariant CorrectScheme: let ownerScheme = self.oclContainer().oclAsType(Extension).scheme in scheme.substring(1,ownerScheme.size()-1) = ownerScheme.substring(1,ownerScheme.size()-1);
       	// WARNING: No translation in Alloy because no string manipulation operations.

	// A Mixin instance must not inherit from itself directly or transitively.
	// OCL invariant NoCyclicInheritance: depends->closure(depends)->excludes(self);
	no d : this.^@depends | d = this // OR d.sameIdentity[this]

	// OCL invariant AttributesNameNotAlreadyDefinedInDepends: attributes.name->excludesAll(depends->closure(depends).attributes.name);
	no attributes.name & this.^@depends.@attributes.name

	// Make sure that entities can not have same id.
	all t : Time | no disj e1, e2 : entities.t | e1.id = e2.id

	//  TODO?: all e : entities | (applies + entity) in e.kind.*parent
	//  TODO?: no disj k1, k2 : applies | k1.sameIdentity[k2] 
       //Stephanie: Kind of the mixin is identified by its term and scheme, not its id
}

// ======================================================================
//
// In OCCI metamodel:
//
//	abstract class Entity
//	{
//		attribute id : URI[1];
//		property kind : Kind[1];
//		property mixins : Mixin[*] { ordered };
//		property attributes : AttributeState[*] { ordered composes };
//		invariant IdUnique: Entity.allInstances()->isUnique(id);
//		invariant AttributesNameUnique: attributes->isUnique(name);
//		invariant KindCompatibleWithOneAppliesOfEachMixin: mixins->forAll(m | m.applies->notEmpty() implies m.applies->exists(k | kind->closure(parent)->includes(k)));
//	}
//
// ======================================================================

abstract sig Entity {
	id : one URI,
	kind : one Kind,
	mixins : set Mixin -> Time,
	attributes : set AttributeState ->Time
} {
	// OCL invariant IdUnique: Entity.allInstances()->isUnique(id);
	no disj e1, e2 : Entity | e1.@id = e2.@id

	// WARNING: This constraint is too constraining for dynamic semantics where two entities can have the same id
       //Stephanie: If we associate id to Time, we could add this constraint, since 2 entities cannot have the same id only at a time t.

	// OCL invariant AttributesNameUnique: attributes->isUnique(name);
	no disj a1, a2 : attributes.Time | a1.name = a2.name

	// OCL invariant KindCompatibleWithOneAppliesOfEachMixin: mixins->forAll(m | m.applies->notEmpty() implies m.applies->exists(k | kind->closure(parent)->includes(k)));
	// TODO: Check if following is a correct translation of the previous OCL invariant.
       all m : mixins.Time | some m.applies implies some m.applies & kind.*parent

	// TODO?:  no disj m1, m2 : mixins | m1.sameIdentity[m2]
}

// TODO: Where is it used?
  //Stephanie: To check if an entity has a kind. But it is obviously true since an entity has always a kind.
pred Entity.hasKind[k : Kind]
{
 	k in this.kind.*parent
}

//
// Equivalence predicate between two Entity atoms.
//
pred isoEntity[e1 : Entity, e2 : Entity]
{
  e1.id = e2.id // same id
   e1.kind =e2.kind // same kind
  e1.mixins = e2.mixins // same mixins
    e1.attributes = e2.attributes // same attributes
}

// ======================================================================
//
// In OCCI metamodel:
//
//	class AttributeState
//	{
//		attribute name : String[1];
//		attribute value : String[1];
//	}
//
// ======================================================================

sig AttributeState {
	name : one String,
	value : one String
} {
	// Each attribute state is owned by only one entity, i.e. class Category { property attributes : AttributeState[*] { composes }; }
	one ~(Entity<:attributes.Time)[this]
}

// ======================================================================
//
// In OCCI metamodel:
//
//	class Resource extends Entity
//	{
//		property links#source : Link[*] { ordered composes };
//		invariant ResourceKindIsInParent: kind->closure(parent)->exists(k | k.term = 'resource' and k.scheme = 'http://schemas.ogf.org/occi/core#');
//	}
//
// ======================================================================

sig Resource extends Entity {
	links : set Link -> Time
} {
	// Each resource is owned by only one configuration, i.e. class Configuration { property resources : Resource[*] { ordered composes }; };
	one configuration
// Stephanie proposes: fact AllResourcesBelongToOneConfiguration{all r: Resource | one c:Configuration| r in c.resources}

	// The kind of a Resource instance must inherit from the resource kind instance directly or transitively.
	// OCL invariant ResourceKindIsInParent: kind->closure(parent)->exists(k | k.term = 'resource' and k.scheme = 'http://schemas.ogf.org/occi/core#');
	one k : kind.*parent | k.term = OCCI_RESOURCE_TERM and k.(Category<:scheme) = OCCI_SCHEME and k.parent.isEntityKind

	// Make sure that links can not have same id.
all t : Time |	no disj l1, l2 : links.t | l1.@id = l2.@id
}

//
// Equivalence predicate between two Resource atoms.
//
pred isoResource[r1 : Resource, r2 : Resource]
{
	isoEntity[r1, r2] // same entities
	r1.links= r2.links // same links
}

// ======================================================================
//
// In OCCI metamodel:
//
//	class Link extends Entity
//	{
//		property source#links : Resource[1];
//		property target : Resource[1];
//		invariant LinkKindIsInParent: kind->closure(parent)->exists(k | k.term = 'link' and k.scheme = 'http://schemas.ogf.org/occi/core#');
//	}
//
// ======================================================================

sig Link extends Entity {
	source : Resource /*one*/ -> Time,  
	target : Resource /*one*/ -> Time    
} {
	// property links#source : Link[*] { composes };
	// property source#links : Resource[1];
       all t : Time | source.t = ~(Resource<:links.t)[this]

       // Added to force sourced link to have a target
       // Avoid sourced link without target
       one source implies one target

	// The kind of a Link instance must inherit from the link kind instance directly or transitively.
	// OCL  invariant LinkKindIsInParent: kind->closure(parent)->exists(k | k.term = 'link' and k.scheme = 'http://schemas.ogf.org/occi/core#');
	one k : kind.*parent | k.term = OCCI_LINK_TERM and k.(Category<:scheme) = OCCI_SCHEME and k.parent.isEntityKind
}

// Equivalence predicate between two Link atoms.
pred isoLink[l1 : Link, l2 : Link]
{
	isoEntity[l1, l2] // same entities
	l1.source= l2.source // same source
	l1.target= l2.target // same target
}

// ======================================================================
//
// In OCCI metamodel:
//
//	class Extension
//	{
//		attribute name : String[1];
//		attribute scheme : URI[1];
//		property import : Extension[*] { ordered };
//		property kinds : Kind[*] { ordered composes }
//		{
//			key term;
//		}
//		property mixins : Mixin[*] { ordered composes }
//		{
//			key term;
//		}
//		property types : ecore::EDataType[*] { ordered composes };
//		invariant SchemeUnique: Extension.allInstances()->isUnique(scheme);
//		invariant KindsSchemeValid: kinds->forAll(k | k.scheme = self.scheme);
//		invariant MixinsSchemeValid: mixins->forAll(m | m.scheme.substring(1,scheme.size()-1) = scheme.substring(1,scheme.size()-1));
//		invariant TermUnicity: kinds.term->intersection(mixins.term)->isEmpty();
//		invariant KindParentLocalOrImported: kinds->forAll(parent <> null implies let parentExtension = parent.oclContainer() in parentExtension = self or import->includes(parentExtension));
//		invariant MixinDependsLocalOrImported: mixins.depends->forAll(let extension = oclContainer() in extension = self or import->includes(extension));
//		invariant MixinAppliesLocalOrImported: mixins.applies->forAll(let extension = oclContainer() in extension = self or import->includes(extension));
//	}
//
// ======================================================================

sig Extension {
	name : one String,
	scheme : one URI,
	import : set Extension,
	kinds : set Kind,
	mixins : set Mixin,
	types : set DataType
} {
	// property kinds : Kind[*] { composes }
	let e=kinds.extension | some e implies e = this
	// WARNING: is it really required?

	// property mixins : Mixin[*] { composes }
	let e=mixins.extension | some e implies e = this
	// WARNING: is it really required?

	// property types : ecore::EDataType[*] { ordered composes }
	let e=types.extension | some e implies e = this
	// WARNING: is it really required?

	// OCL invariant SchemeUnique: Extension.allInstances()->isUnique(scheme);
	no disj e1, e2 : Extension | e1.@scheme = e2.@scheme

	// The scheme of all kinds must be equal to the scheme of the owning Extension instance.
	// OCL invariant KindsSchemeValid: kinds->forAll(k | k.scheme = self.scheme);
	all k : kinds | k.@scheme = scheme

	// The scheme of all mixins must start with the scheme of the owning Extension instance.
	// OCL invariant MixinsSchemeValid: mixins->forAll(m | m.scheme.substring(1,scheme.size()-1) = scheme.substring(1,scheme.size()-1));
       	// WARNING: No translation in Alloy because no string manipulation operations.

	// The intersection of term in Kind and term in Mixin is empty.
	// OCL invariant TermUnicity: kinds.term->intersection(mixins.term)->isEmpty();
	no kinds.term & mixins.term

	// The parent of all the kinds of an extension must be defined or imported by this extension.
	// OCL invariant KindParentLocalOrImported: kinds->forAll(parent <> null implies let parentExtension = parent.oclContainer() in parentExtension = self or import->includes(parentExtension));
	all k : kinds.parent | localOrImported[k.extension]

	// All the depends of all the mixins of an extension must be defined or imported by this extension.
	// OCL invariant MixinDependsLocalOrImported: mixins.depends->forAll(let extension = oclContainer() in extension = self or import->includes(extension));
	all m : mixins.depends | localOrImported[m.extension]

	// OCL invariant MixinAppliesLocalOrImported: mixins.applies->forAll(let extension = oclContainer() in extension = self or import->includes(extension));
	all m : mixins.applies | localOrImported[m.extension]

       // WARNING: Not defined in OCCI.ecore!!!
	this not in import
}

pred Extension.localOrImported[extension : Extension] {
	extension in (this + this.import)
}

fun Kind.extension[] : Extension
{
  ~(Extension<:kinds)[this]
}

fun Mixin.extension[] : Extension
{
  ~(Extension<:mixins)[this]
}

fun DataType.extension[] : Extension
{
  ~(Extension<:types)[this]
}


// ======================================================================
//
// In OCCI metamodel:
//
//	class Configuration
//	{
//		property use : Extension[*] { ordered };
//		property resources : Resource[*] { ordered composes };
//		invariant AllResourcesKindsInUse: use->includesAll(resources.kind.oclContainer());
//		invariant AllResourcesMixinsInUse: use->includesAll(resources.mixins.oclContainer());
//		invariant AllResourcesLinksKindsInUse: use->includesAll(resources.links.kind.oclContainer());
//		invariant AllResourcesLinksMixinsInUse: use->includesAll(resources.links.mixins.oclContainer());
//		invariant AllResourcesLinksTargetsInConfiguration: resources.links.target->forAll(r | r.oclContainer() = self);
//	}
//
// ======================================================================

sig Configuration {
	use : set Extension,
	resources : set Resource -> Time,
	mixins : set Mixin -> Time
} {
	// property resources : Resource[*] { composes };
all t : Time | let c=resources.t.configuration | some c implies c = this
       // WARNING: is it required?

	// The kind of all resources of a configuration must be defined by an extension that is explicitly used by this configuration.
	// OCL invariant AllResourcesKindsInUse: use->includesAll(resources.kind.oclContainer());
all t : Time | resources.t.kind.extension in use

	// All the mixins of all resources of a configuration must be defined by an extension that is explicitly used by this configuration.
	// OCL invariant AllResourcesMixinsInUse: use->includesAll(resources.mixins.oclContainer());
all t : Time | resources.t.mixins.t.extension in use

	// The kind of all links of all resources of a configuration must be defined by an extension that is explicitly used by this configuration.
	// OCL invariant AllResourcesLinksKindsInUse: use->includesAll(resources.links.kind.oclContainer());
all t : Time | resources.t.links.t.kind.extension in use

	// The mixins of all links of all resources of a configuration must be defined by an extension that is explicitly used by this configuration.
	// OCL invariant AllResourcesLinksMixinsInUse: use->includesAll(resources.links.mixins.oclContainer());
all t : Time | resources.t.links.t.mixins.t.extension in use

	// The target of all links of all resources of a configuration must be defined by an extension that is explicitly used by this configuration.	
	// OCL invariant AllResourcesLinksTargetsInConfiguration: resources.links.target->forAll(r | r.oclContainer() = self);
all t : Time | let c=resources.t.links.t.target.t.configuration | some c implies c = this
}

fun Resource.configuration[] : Configuration
{
	~(Configuration<:resources.Time)[this]
}

fun Configuration.findUserMixin[mixinScheme, mixinTerm : String, t : Time] : lone Mixin
{ { m : this.mixins.t | m.scheme= mixinScheme and m.term= mixinTerm } }

// ======================================================================
//
// State Machine adding
//

sig StateMachine {
	category: one (Kind + Mixin),
	attribute: one Attribute,
	states: set State,
	transitions: set Transition
}{

  // Only one State Machine for one kind or mixin. 
  no disj SM1, SM2 : StateMachine | SM1.@category = SM2.@category

  // No state shared between State Machines. 
  no disj SM1, SM2 : StateMachine | some SM1.@states & SM2.@states

  // The attribute in the State Machine is in the attributes of its category.
  attribute in category.attributes

  // There is only one initial state.
  one state : states| state.isInitial = True

  // There is at least one final state.
  some state : states | state.isFinal = True

  // All actions are present in the State Machine.
  all action : category.(Kind<:actions + Mixin<:actions) | action in transitions.event

  // Transition target is a state in the State Machine.
  transitions.target in states

  // Transition sourcet is a state in the State Machine.
  transitions.source in states

  // All states are present in the State Machine. 
  all state: State | state in states
} 

sig State {
	name: one String,
	entities: set Entity,
	exit: one State,
	description: one String,
	isInitial: one Bool,
	isFinal: one Bool
}{

  // Each state is owned by one State Machine. 
  one ~(StateMachine<:states)[this]

}

sig Transition {
	event: one Action,
	condition: one State,
	action: one Action,
	source: one State,
	target: one State
}{
  // No transition shared between State Machines.
  no disj SM1, SM2 : StateMachine | some SM1.transitions & SM2.transitions


  // Each transition owned by one State Machine.
  one ~(StateMachine<:transitions)[this]


  // Events are actions of the State Machine category
  all SM : StateMachine | event in SM.category.(Kind<:actions + Mixin<:actions)
}
// ======================================================================
//
// Check consistency, i.e., there is at least one instance of this model.
//
run Consistency {} for 10 
//
// Instances containing the entity kind only.
//
run TheEntityKind { one k : Kind | k.isEntityKind } for 0 but exactly 1 Kind, exactly 1 Extension
//
// Instances containing one category only.
//
run OneCategory {} for 0 but exactly 1 Category

//
// Instances containing one date type only.
//
run OneDataType {} for 0 but exactly 1 DataType

//
// Instances containing one kind only.
//
run OneKind {} for 0 but exactly 1 Kind, exactly 1 Extension

//
// Instances containing one mixin only.
//
run OneMixin {} for 0 but exactly 1 Mixin

//
// Instances containing one extension only.
//
run OneExtension {} for 0 but exactly 1 Extension

//
// Instances containing one configuration only.
//
run OneConfiguration {} for 0 but exactly 1 Configuration

//
// Instances containing one configuration and one extension.
//
run OneConfigurationOneExtension {} for 0 but exactly 1 Configuration, exactly 1 Extension

//
// Instances containing one mixin with some actions.
//
run OneMixinWithActions { some m : Mixin  | some m.actions }

//
// Instances containing some configurations with extensions.
//
run SomeConfigurationWithUse { some c : Configuration | some c.use }

//
// Instances containing one state machine only.
//
run OneStateMachine {} for 0 but exactly 1 StateMachine

// ======================================================================
// End of the static specification.
// ======================================================================

// ======================================================================
// Start of the dynamic specification.
// ======================================================================
//
// Get all the categories, i.e., the kinds and the mixins in a configuration.
//
pred GetAllCategories[config : Configuration, categories : set Category, t, t' : Time]
{
  // preconditions
  categories = config.use.(Extension<:kinds + Extension<:mixins) + config.mixins.t
  // postconditions
  // As it is a get then the state must not be changed.
  config.resources.t' = config.resources.t
  config.mixins.t' = config.mixins.t
}

run GetAllCategories
{
  one config : Configuration, categories : Category, t : Time |
  	GetAllCategories[config, categories, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time

assert GetAllCategoriesIsSafe
{
  all config : Configuration, categories : Category, t, t' : Time |
  	GetAllCategories[config, categories, t, t'] implies
  	config.resources.t = config.resources.t' and config.mixins.t = config.mixins.t'
}
check GetAllCategoriesIsSafe for 10

assert GetAllCategoriesIsIdempotent
{
  all config : Configuration, categories : Category, t :Time |
  	GetAllCategories[config, categories, t, t.next]
	and GetAllCategories[config, categories, t.next, t.next.next]  
	implies
 	config.resources.(t.next) = config.resources.(t.next.next) 
	and config.mixins.(t.next) = config.mixins.(t.next.next)
}
check GetAllCategoriesIsIdempotent for 10

assert GetAllCategoriesOnConfigurationWithoutExtensionsAndUserMixinsReturnsNoCategory
{
  all config : Configuration, categories : Category, t, t' : Time |
 	 no config.use and no config.mixins.t and GetAllCategories[config, categories, t, t'] implies no categories
}
check GetAllCategoriesOnConfigurationWithoutExtensionsAndUserMixinsReturnsNoCategory for 10

assert GetAllCategoriesOnConfigurationWithoutExtensionsReturnsUserMixins
{
  all config : Configuration, categories : Category, t, t' : Time |
 	 no config.use and GetAllCategories[config, categories, t, t'] implies categories = config.mixins.t
}
check GetAllCategoriesOnConfigurationWithoutExtensionsReturnsUserMixins for 10

assert GetAllCategoriesOnConfigurationWithoutUserMixinsReturnsAllExtensionsKindsAndMixins
{
  all config : Configuration, categories : Category, t, t' : Time |
  	no config.mixins.t and GetAllCategories[config, categories, t, t'] implies categories = config.use.kinds + config.use.mixins
}
check GetAllCategoriesOnConfigurationWithoutUserMixinsReturnsAllExtensionsKindsAndMixins for 10

// ======================================================================
//
// Create resource.
//
// Ajouter liste des attributes (nom, valeur), liste de links
pred CreateResource[config : Configuration, resourceId : URI, resourceKind : Kind, resourceMixins : set Mixin, resourceAttributes : set AttributeState, t, t' : Time]
{
  // preconditions at instant t
     //  no resource with the same id
     no resource : config.resources.t | resource.id = resourceId
     // an extension contains kind
     resourceKind in config.use.kinds
     // each mixin is contained by an extension 
     resourceMixins in config.use.mixins
  // postconditions at instant t'
    // one resource with these id, kind, and mixins
    one resource : Resource {
      resource.id = resourceId
      resource.kind = resourceKind
      resource.mixins.t' = resourceMixins
      resource.attributes.t' = resourceAttributes
      config.resources.t' = config.resources.t + resource
    }
    // mixins unchanged
    config.mixins.t' = config.mixins.t  
}

run CreateResource
{
  one config : Configuration | one resourceId : URI, kind : Kind, mixins : Mixin, attributes : AttributeState, t : Time | 
	CreateResource[config, resourceId, kind, mixins, attributes, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time

assert CreateResourceIsIdempotent
{
    all config : Configuration, resourceId : URI, kind : Kind, mixins : Mixin, attributes : AttributeState, t : Time |
	CreateResource [config, resourceId, kind, mixins, attributes, t, t.next] and 
	CreateResource [config, resourceId, kind, mixins, attributes, t.next, t.next.next]
     implies config.resources.(t.next).links.(t.next) = 
     config.resources.(t.next.next).links.(t.next.next)
    
}
check CreateResourceIsIdempotent for 10

assert CreateResourceImpliesResourceAddedToKind
{
   all config : Configuration, resourceId: URI, kind : Kind, mixins : Mixin, attributes : AttributeState, t : Time {
      CreateResource[config, resourceId, kind, mixins, attributes, t, t.next] => resourceId in config.resources.(t.next).id and kind in config.resources.(t.next).@kind
  }
}
check CreateResourceImpliesResourceAddedToKind for 10
// ======================================================================
//
// Retrieve resource.
//
pred RetrieveResource[config : Configuration, resourceId : URI, t, t' : Time]
{
  // preconditions at instant t
    // resource is returned
   one resource : config.resources.t { resource.id = resourceId }
    
  // postconditions at instant t'
   one resource : config.resources.t' {
	 resource.id = resourceId
	 resource.mixins.t' = resource.mixins.t
 	 resource.attributes.t' = resource.attributes.t
	 resource.links.t' = resource.links.t
    }
    // resources unchanged
    config.resources.t' = config.resources.t
    // mixins unchanged
    config.mixins.t' = config.mixins.t
}

run RetrieveResource
{
  one config : Configuration, resourceId : URI, t : Time |
    RetrieveResource[config, resourceId, t, t.next]
} for 3 but exactly 1 Configuration,  exactly 2 Time


assert RetrieveResourceIsSafe
{
  all config : Configuration, resourceId : URI, t : Time |
    RetrieveResource[config, resourceId, t, t.next] implies
    config.resources.(t.next) = config.resources.t 
    and config.mixins.(t.next) = config.mixins.t
    and one resource : config.resources.(t.next) {
      resource.id = resourceId
      resource.attributes.(t.next)= resource.attributes.t
	   resource.links.(t.next) = resource.links.t
     }
}
check RetrieveResourceIsSafe for 10

assert RetrieveResourceIsIdempotent
{
  all config : Configuration, resourceId : URI, t : Time |
    RetrieveResource[config, resourceId, t, t.next] 
	and RetrieveResource[config, resourceId, t.next, t.next.next]  
	implies
	config.resources.(t.next.next) = config.resources.(t.next) 
    and config.mixins.(t.next.next) = config.mixins.(t.next)
    and one resource : config.resources.(t.next) {
      resource.id = resourceId 
      resource.attributes.(t.next.next) = resource.attributes.(t.next)
	  resource.links.(t.next.next) = resource.links.(t.next)
    }
}
check RetrieveResourceIsIdempotent for 10

assert CreateResourceAndRetrieveResourceAreSequential
{
  all config : Configuration, resourceId : URI, resourceKind : Kind, resourceMixins : set Mixin, resourceAttributes : set AttributeState, t : Time, t' : t.next, t'' : t'.next  |
    CreateResource[config, resourceId, resourceKind, resourceMixins, resourceAttributes, t, t'] and RetrieveResource[config, resourceId, t', t'']
    implies one resource : config.resources.(t.next) {
    resource.id = resourceId and resource.kind = resourceKind and resource.mixins.t'' = resourceMixins
   }
}
check CreateResourceAndRetrieveResourceAreSequential for 10 //but exactly 1 Configuration, exactly 2 Resource, exactly 3 Time
// ======================================================================
//
// Update an attribute of a resource.
//
pred UpdateResource[config : Configuration, resourceId : URI, attribute1: AttributeState, attribute2: AttributeState, t, t' : Time]
{
  // preconditions at instant t
     // attribute1 is different from attribute2
     attribute1 != attribute2
     //  one resource with this id and this attribute
     one resource: config.resources.t | resource.id = resourceId && resource.attributes.t = attribute1
  // postconditions at instant t'
    // update resource with this id and this attribute
    one resource : config.resources.t {
      resource.attributes.t' = resource.attributes.t ++ attribute2
    }
    // use unchanged
    config.resources.t' = config.resources.t
    // mixins unchanged
    config.mixins.t' = config.mixins.t  
}
run UpdateResource
{
one config : Configuration, resourceId : URI, attribute1: AttributeState, attribute2: AttributeState, t : Time |
    UpdateResource[config, resourceId, attribute1, attribute2, t, t.next]
}for 3 but exactly 1 Configuration, exactly 2 Time

assert UpdateResourceIsIdempotent
{
 all config : Configuration, resourceId : URI, attribute1: AttributeState, attribute2: AttributeState, t : Time |
   UpdateResource [config, resourceId, attribute1, attribute2, t, t.next] implies
   UpdateResource [config, resourceId, attribute1, attribute2, t.next, t.next.next]  
}
check UpdateResourceIsIdempotent for 10
// ======================================================================
//
// Delete resource.
//
pred DeleteResource[config : Configuration, resourceId : URI, t, t' : Time]
{
  // preconditions at instant t
     //  one resource with this id
     one resource : config.resources.t | resource.id = resourceId
  // postconditions at instant t'
    // remove resource with this id
    one resource : config.resources.t {
      resource.id = resourceId
      config.resources.t' = config.resources.t - resource
    }
    // mixins unchanged
    config.mixins.t' = config.mixins.t  
}

run DeleteResource
{
  one config : Configuration, resourceId : URI, t : Time |
    DeleteResource[config, resourceId, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time

assert DeleteResourceIsIdempotent 
{ 
all config : Configuration, resourceId : URI, t : Time |
   DeleteResource [config, resourceId, t, t.next] 
	and DeleteResource [config, resourceId, t.next, t.next.next]  
	implies
	config.resources.(t.next.next) = config.resources.(t.next)
}
check DeleteResourceIsIdempotent for 10


assert DeleteResourceImpliesResourceRemovedFromConfiguration
{
  all config : Configuration, resourceId: URI, t, t': Time {
      DeleteResource[config, resourceId, t, t'] => resourceId not in config.resources.t'.id 
  }
}
check DeleteResourceImpliesResourceRemovedFromConfiguration for 10


assert CreateResourceAndDeleteResourceAreReversible
{
  all config: Configuration, resourceId: URI, resourceKind : Kind, resourceMixins: Mixin, resourceAttributes : AttributeState, t: Time, t': t.next {
      CreateResource[config, resourceId, resourceKind, resourceMixins, resourceAttributes, t, t'] implies DeleteResource[config, resourceId, t', t] 
 }
}
check CreateResourceAndDeleteResourceAreReversible for 10


/*If the resource already exists with the same id, it will be lost
pred createResource [c: Configuration, k: Kind, r : Resource, t, t': Time]
{
  // preconditions
  r not in c.resources.t
  r not in k.entities.t
 // k not in c.use.kinds
// ???    core/resource in kind.*parent
  // postconditions
  r.kind= k
 // isoKind[k, k']
  k.entities.t' = k.entities.t + r
 // k' in c'.use.kinds
  c.resources.t' = c.resources.t + r
  c.use.t' = c.use.t
}

run createResourceIsConsistent
{
  some c : Configuration, k : Kind, resource : Resource, t, t': Time {
    createResource[c, k, resource, t, t']
  }
} for 5


fun Configuration.findKind[s, te : String, t:Time] : Kind
{ { k : this.use.t.kinds | k.scheme= s and k.term= te } }

pred createResource2[c: Configuration, s, te : String, r : Resource, t, t': Time]
{
  // preconditions
  r not in c.resources.t
  r not in c.findKind[s,te,t].entities.t
// ???    core/resource in kind.*parent
  // postconditions
  r.kind= c.findKind[s,te,t']
  c.findKind[s,te,t'].entities.t' = c.findKind[s,te,t].entities.t + r
  c.resources.t' = c.resources.t + r
  c.use.t' = c.use.t - c.findKind[s,te,t].extension + c.findKind[s,te,t'].extension
}

run createResource2IsConsistent
{
  one c: Configuration, s, te : String, r : Resource, t, t': Time {
      no c.resources
      createResource2[c, s, te, r, t, t']
  }
} for 3 but exactly 2 Configuration, 1 Resource, 2 Kind, 2 Extension, 0 Action, 0 Mixin, 0 AttributeState, 0 Attribute, 0 DataType

assert createResource2ImpliesResourceAddedToKind
{
  all c : Configuration, s, te : String, r : Resource, t, t': Time {
      createResource2[c, s, te, r, t, t'] => r in c.resources.t' and r in c.findKind[s,te,t'].entities.t'
  }
}
check createResource2ImpliesResourceAddedToKind for 10
*/
// ======================================================================
//
// Create link.
//
pred CreateLink[config : Configuration, linkId : URI, linkKind : Kind, linkSource : Resource, linkTarget : Resource, linkAttributes : set AttributeState, t, t' : Time]
{
  // preconditions at instant t
     //  no link with the same id
     no link : config.resources.t.links.t {
	link.id = linkId 
	link.source.t = linkSource
	link.target.t = linkTarget
   }
     // an extension contains kind
     linkKind in config.use.kinds
	// a source is contained in the resources
	linkSource in config.resources.t
	// a target is contained in the resources
	linkTarget in config.resources.t
     // link does have a source neither a target
   
  // postconditions at instant t'
    // one link with these id, kind, source, target and attributes
    one link : Link {
      link.id = linkId
      link.kind = linkKind
      link.source.t' = linkSource
      link.target.t' = linkTarget
      link.attributes.t' = linkAttributes
      linkSource.links.t' = linkSource.links.t + link
    }
    // resource unchanged
    config.resources.t' = config.resources.t 
    // mixins unchanged
    config.mixins.t' = config.mixins.t  
}

run CreateLink
{
  one config : Configuration, linkId : URI, linkKind: Kind, source: Resource | one target: Resource, attributes : AttributeState, t : Time |
    CreateLink[config, linkId, linkKind, source, target, attributes, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time

assert CreateLinkIsIdempotent
 {
   all config : Configuration, linkId : URI, linkKind : Kind, source: Resource, target: Resource, attributes : AttributeState, t : Time |
     CreateLink[config, linkId, linkKind, source, target, attributes, t, t.next] and
	 CreateLink[config, linkId, linkKind, source, target, attributes, t.next, t.next.next] 
	 implies
     config.resources.(t.next).links.(t.next) = config.resources.(t.next.next).links.(t.next.next)
}
check CreateLinkIsIdempotent for 10

assert CreateLinkImpliesLinkAddedToKind
{
   all config : Configuration, linkId : URI, linkKind : Kind, source : Resource, target : Resource, attributes : AttributeState, t, t': Time {
      CreateLink[config, linkId, linkKind, source, target, attributes, t, t'] => linkId in config.resources.t'.links.t'.id && linkKind in config.use.kinds
  }
}
check CreateLinkImpliesLinkAddedToKind for 10


/* Using findKind[] predicate, instead of giving the Kind in parameters
pred CreateLink [c: Configuration, s, te : String, l: Link, t, t': Time]
{
 // preconditions
  l not in c.resources.t.links.t
  l not in c.findKind[s,te,t].entities.t
// ???    core/resource in kind.*parent
  // postconditions
  l.kind= c.findKind[s,te,t']
  c.findKind[s,te,t'].entities.t' = c.findKind[s,te,t].entities.t + l
  c.resources.t'.links.t' = c.resources.t.links.t + l
 c.use.t' = c.use.t - c.findKind[s,te,t].extension + c.findKind[s,te,t'].extension}
*/
// ======================================================================
//
// Retrieve link.
//
pred RetrieveLink[config : Configuration, linkId : URI, t, t' : Time]
{
  // preconditions at instant t
    // resource is returned
   one link : config.resources.t.links.t { link.id = linkId }
    
  // postconditions at instant t'
   one link : config.resources.t.links.t' {
	 link.id = linkId
	 link.source.t' = link.source.t
 	 link.target.t' = link.target.t
    }
    // resources unchanged
    config.resources.t' = config.resources.t
    // mixins unchanged
    config.mixins.t' = config.mixins.t
}

run RetrieveLink
{
  one config : Configuration, linkId : URI, t : Time |
    RetrieveLink[config, linkId, t, t.next]
} for 3 but exactly 1 Configuration,  exactly 2 Time


assert RetrieveLinkIsSafe
{
  all config : Configuration, linkId : URI, t : Time |
    RetrieveLink[config, linkId, t, t.next] implies
    config.resources.(t.next) = config.resources.t 
    and config.mixins.(t.next) = config.mixins.t
    and one link : config.resources.t.links.(t.next) {
      link.id = linkId
      link.source.(t.next) = link.source.t
      and link.target.(t.next) =  link.target.t
     }
}
check RetrieveLinkIsSafe for 10

assert RetrieveLinkIsIdempotent
{
  all config : Configuration, linkId : URI, t : Time |
    RetrieveLink[config, linkId, t, t.next] and RetrieveLink[config, linkId, t.next, t.next.next] 
	implies
    config.resources.(t.next) = config.resources.(t.next.next) 
    and config.mixins.(t.next) = config.mixins.(t.next.next)
    and one link : config.resources.(t.next).links.(t.next) {
    	link.id = linkId
	    link.source.(t.next.next) = link.source.(t.next)
    	and link.target.(t.next.next) =  link.target.(t.next)
    }
}
check RetrieveLinkIsIdempotent for 10

assert CreateLinkAndRetrieveLinkAreSequential
{
  all config : Configuration, linkId : URI, linkKind : Kind, linkSource : Resource, linkTarget : Resource, linkAttributes : set AttributeState, t : Time, t' : t.next, t'' : t'.next  |
    CreateLink[config, linkId, linkKind, linkSource, linkTarget, linkAttributes, t, t'] and RetrieveLink[config, linkId, t', t'']
    implies one link : config.resources.t.links.t'' {  
      link.id = linkId 
      and link.kind = linkKind 
      and link.source.t'' = linkSource
      and link.target.t'' = linkTarget
    }
}
check CreateLinkAndRetrieveLinkAreSequential for 10
// ======================================================================
//
// Delete link.
//
pred DeleteLink[config : Configuration, linkId : URI, t, t' : Time]
{
  // preconditions at instant t
     // one link with this id
    one link : config.resources.t.links.t | link.id = linkId
  // postconditions at instant t'
    // remove link with this id
    one link : config.resources.t.links.t {
      link.id = linkId
      link.source.t.links.t' = link.source.t.links.t - link
      no link.source.t'
      no link.target.t'
    }
    // resource unchanged
    config.resources.t' = config.resources.t 
    // mixins unchanged
    config.mixins.t' = config.mixins.t  
}

run DeleteLink
{
  one config : Configuration, linkId : URI, t : Time |
    DeleteLink[config, linkId, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time, exactly 1 Link

assert DeleteLinkIsIdempotent
{all config : Configuration, linkId : URI, t : Time |
    DeleteLink[config, linkId, t, t.next] and  DeleteLink[config, linkId, t.next, t.next.next] implies
      config.resources.(t.next).links.(t.next) = config.resources.(t.next.next).links.(t.next.next)
}
check DeleteLinkIsIdempotent for 10

assert DeleteLinkImpliesLinkRemovedFromConfiguration
{
  all config : Configuration, linkId: URI, t, t': Time {
      DeleteLink[config, linkId, t, t'] => linkId not in config.resources.t'.links.t'.id 
  }
}
check DeleteLinkImpliesLinkRemovedFromConfiguration for 10

assert CreateLinkAndDeleteLinkAreReversible
{
  all config : Configuration, linkId : URI,  linkKind: Kind, source: Resource, target: Resource, attributes : AttributeState, t : Time |
      CreateLink[config, linkId, linkKind, source, target, attributes, t, t.next] and DeleteLink[config, linkId, t.next, t.next.next] 
		implies 
		no link : config.resources.t.links.(t.next.next) {
			   link.id = linkId
		}
}
check CreateLinkAndDeleteLinkAreReversible for 10
// ======================================================================
//
// Update an attribute of a link.
//
pred UpdateLink [config : Configuration, linkId : URI, attribute1 : AttributeState,
 attribute2 : AttributeState, t, t' : Time]{
 // preconditions at instant t
     // attribute1 is different from attribute2
     attribute1 != attribute2 
     // one link with this id and this attribute
     one link : config.resources.t.links.t | link.id = linkId && link.attributes.t = attribute1
  // postconditions at instant t'
    // link with this id
     one link : config.resources.t.links.t {
       link.attributes.t' = link.attributes.t ++ attribute2
    }
    // resource unchanged
    config.resources.t' = config.resources.t 
    // mixins unchanged
    config.mixins.t' = config.mixins.t  
}

run UpdateLink
{
one config : Configuration, linkId : URI, attribute1: AttributeState, attribute2: AttributeState, t : Time |
    UpdateLink[config, linkId, attribute1, attribute2, t, t.next]
}for 3 but exactly 1 Configuration, exactly 2 Time

assert UpdateLinkIsIdempotent
{
 all config : Configuration, linkId : URI, attribute1 : AttributeState,
 attribute2 : AttributeState, t : Time |
   UpdateLink [config, linkId, attribute1, attribute2, t, t.next] implies
   UpdateLink [config, linkId, attribute1, attribute2, t.next, t.next.next]  
}
check UpdateLinkIsIdempotent for 10
// ======================================================================
//
// Create mixin.
//
pred AddUserMixin[config : Configuration, mixinScheme : String, mixinTerm: String, t, t' : Time]
{
  // preconditions
    no config.findUserMixin[mixinScheme, mixinTerm, t] 
  // postconditions
    one m : Mixin {
	 m.scheme = mixinScheme 
	 m.term = mixinTerm 
	 config.mixins.t' = config.mixins.t + m 
    }
    config.resources.t' = config.resources.t  
}

run AddUserMixin
{
  one config : Configuration, mixinScheme, mixinTerm : String, t : Time |
    AddUserMixin[config, mixinScheme, mixinTerm, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time

assert AddUserMixinDoesNotModifyConfigurationExtensionsAndResources
{
  all config : Configuration, mixinScheme, mixinTerm : String, t, t' : Time |
    AddUserMixin[config, mixinScheme, mixinTerm, t, t'] implies
    config.resources.t = config.resources.t'
}
check AddUserMixinDoesNotModifyConfigurationExtensionsAndResources for 10

assert AddUserMixinCanNotAddAlreadyExistingMixin
{
  all config : Configuration, mixinScheme, mixinTerm : String, t, t' : Time |
    one config.findUserMixin[mixinScheme, mixinTerm, t] implies not AddUserMixin[config, mixinScheme, mixinTerm, t, t']
}
check AddUserMixinCanNotAddAlreadyExistingMixin for 10

assert AddUserMixinDoesTheWork
{
  all config : Configuration, mixinScheme, mixinTerm : String, t, t' : Time |
    AddUserMixin[config, mixinScheme, mixinTerm, t, t'] implies one config.findUserMixin[mixinScheme, mixinTerm, t']
}
check AddUserMixinDoesTheWork for 10
// ======================================================================
//
// Delete mixin.
//
pred RemoveUserMixin[config : Configuration, mixinScheme : String, mixinTerm: String, t, t' : Time]
{
  // preconditions
  one config.findUserMixin[mixinScheme, mixinTerm, t]
  // postconditions
  one m : Mixin {
	m.scheme = mixinScheme
	m.term = mixinTerm
	config.mixins.t' = config.mixins.t - m
  }
  config.resources.t' = config.resources.t
}

run RemoveUserMixin
{
  one config : Configuration, mixinScheme, mixinTerm : String, t : Time |
    RemoveUserMixin[config, mixinScheme, mixinTerm, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time

assert RemoveUserMixinDoesNotModifyConfigurationExtensionsAndResources
{
  all config : Configuration, mixinScheme, mixinTerm : String, t, t' : Time |
    RemoveUserMixin[config, mixinScheme, mixinTerm, t, t'] implies
    config.resources.t = config.resources.t'
}
check RemoveUserMixinDoesNotModifyConfigurationExtensionsAndResources for 10

assert RemoveUserMixinCanNotRemoveNotExistingMixin
{
  all config : Configuration, mixinScheme, mixinTerm : String, t, t' : Time |
    no config.findUserMixin[mixinScheme, mixinTerm, t] implies not RemoveUserMixin[config, mixinScheme, mixinTerm, t, t']
}
check RemoveUserMixinCanNotRemoveNotExistingMixin for 10

assert RemoveUserMixinDoesTheWork
{
  all config : Configuration, mixinScheme, mixinTerm : String, t, t' : Time |
    RemoveUserMixin[config, mixinScheme, mixinTerm, t, t'] implies no config.findUserMixin[mixinScheme, mixinTerm, t']
}
check RemoveUserMixinDoesTheWork for 10

check AddUserMixinAndRemoveUserMixinAreReversibleOperations_v1
{
  all config : Configuration, mixinScheme, mixinTerm : String, t, t' : Time |
    AddUserMixin[config, mixinScheme, mixinTerm, t, t'] <=> RemoveUserMixin[config, mixinScheme, mixinTerm, t', t]
} for 10

assert AddUserMixinAndRemoveUserMixinAreReversibleOperations_v2
{
  all config : Configuration, mixinScheme, mixinTerm : String, t, t', t'' : Time |
      ( AddUserMixin[config, mixinScheme, mixinTerm, t, t'] and RemoveUserMixin[config, mixinScheme, mixinTerm, t', t''] implies config.mixins.t = config.mixins.t'' )
    and
      ( RemoveUserMixin[config, mixinScheme, mixinTerm, t, t'] and AddUserMixin[config, mixinScheme, mixinTerm, t', t''] implies config.mixins.t = config.mixins.t'' )
}
check AddUserMixinAndRemoveUserMixinAreReversibleOperations_v2 for 10
// ======================================================================
//
// Associate mixin To resource.
//
pred AssociateMixinToResource [config: Configuration, resourceId: URI, mixinTerm: String, mixinScheme : one URI, t, t' : Time]
{
   no resource : config.resources.t | 
		resource.id = resourceId
	and one mixin : resource.mixins.t | mixin.term = mixinTerm and  mixin.scheme = mixinScheme
  // preconditions at instant t
    // one resource with this id
    one resource : config.resources.t { 
	  resource.id = resourceId
     // one mixin in extension with these term and scheme
       one mixin :  Extension.mixins {
         mixin.term = mixinTerm
         mixin.scheme = mixinScheme
  // postconditions at instant t'
     // associate mixin to resource
       resource.mixins.t' =  resource.mixins.t + mixin
      }
    }
    // attributes unchanged
    config.resources.t'.attributes.t' = config.resources.t.attributes.t
}

run AssociateMixinToResource
{
  one config: Configuration, resourceId : URI, mixinTerm: String | one mixinScheme : URI, t : Time |
    AssociateMixinToResource [config, resourceId, mixinTerm, mixinScheme, t, t.next] 

} for 3 but exactly 1 Entity, exactly 2 Time

assert AssociateMixinToResourceIsIdempotent
{
 all config:Configuration, resourceId : URI, mixinTerm: String, mixinScheme: URI, t : Time |
   AssociateMixinToResource [config, resourceId, mixinTerm, mixinScheme, t, t.next]
	and AssociateMixinToResource [config, resourceId, mixinTerm, mixinScheme, t.next, t.next.next]
	implies
   config.resources.(t.next.next) = config.resources.(t.next)
   and config.mixins.(t.next.next) = config.mixins.(t.next)
	and one resource : config.resources.(t.next.next) {
		resource.id = resourceId
		resource.mixins.(t.next.next) = resource.mixins.(t.next)
	}
}
check AssociateMixinToResourceIsIdempotent for 10
// ======================================================================
//
// Dissociate mixin From resource.
//
pred DissociateMixinFromResource [config : Configuration, resourceId : URI, mixinTerm : String, mixinScheme : URI,  t, t' : Time]
{
  // preconditions at instant t
	// one resource with this id
    one resource : config.resources.t { 
 	  resource.id = resourceId
    // one mixin with this term and scheme applied to a resource
       one mixin :  resource.mixins.t {
         mixin.term = mixinTerm
         mixin.scheme = mixinScheme
  // postconditions at instant t'
     // dissociate mixin from resource
       resource.mixins.t' =  resource.mixins.t - mixin
      }
    }
      // attributes unchanged
   config.resources.t'.attributes.t' =  config.resources.t.attributes.t
}

run DissociateMixinFromResource
{
  one config : Configuration, resourceId : URI, mixinTerm: String, mixinScheme: URI, t : Time |
  DissociateMixinFromResource [config, resourceId, mixinTerm, mixinScheme, t, t.next]
} for 3 but exactly 1 Configuration, 1 Resource, exactly 2 Time

assert DissociateMixinFromResourceIsIdempotent
{
 all config: Configuration, resourceId : URI, mixinTerm: String, mixinScheme: URI, t : Time |
   DissociateMixinFromResource [config, resourceId, mixinTerm, mixinScheme, t, t.next] 
	and DissociateMixinFromResource [config, resourceId, mixinTerm, mixinScheme, t.next, t.next.next] 
	implies
   config.resources.(t.next) = config.resources.(t.next.next)
   and config.mixins.(t.next) = config.mixins.(t.next.next)

}
check DissociateMixinFromResourceIsIdempotent for 10

assert AssociateMixinToResourceAndDissociateMixinFromResourceAreReversible
{
 all config: Configuration, resourceId : URI, mixinTerm: String, mixinScheme: URI, t: Time{
    AssociateMixinToResource [config, resourceId, mixinTerm, mixinScheme, t, t.next] 
	and DissociateMixinFromResource [config, resourceId, mixinTerm, mixinScheme, t.next, t.next.next] 
	implies
		one resource : config.resources.(t.next.next) {
			resource.id = resourceId
			resource.mixins.(t.next.next) =  resource.mixins.t
			no mixin : resource.mixins.(t.next.next) | mixin.term = mixinTerm
		}
	}
}
check AssociateMixinToResourceAndDissociateMixinFromResourceAreReversible for 10
// ======================================================================
//
// Retrieve collection.
//
pred RetrieveCollection [config : Configuration, scheme : URI, term : String, entities : set Entity, t, t' : Time]
{
  // preconditions
   // one Extension with this scheme
   one extension: config.use {
     scheme = extension.@scheme
   // one kind with this scheme
     one k : Kind {
   	   k = extension.kinds
  // postconditions
   // entities with this kind
   	   entities = k.@entities.t'
 	  }
   }
   // As it is a retrieve then the state must not be changed.
   config.resources.t' = config.resources.t
   config.mixins.t' = config.mixins.t
}

run RetrieveCollection
{
  one config : Configuration, scheme : URI, term : String, entities : Entity, t : Time |
   RetrieveCollection[config, scheme, term, entities, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time

assert RetrieveCollectionIsSafe
{
  all config : Configuration, scheme : URI, term : String, entities : Entity, t : Time  |
   RetrieveCollection[config, scheme, term, entities, t, t.next] implies
   config.resources.t = config.resources.(t.next)
   and config.mixins.t = config.mixins.(t.next)
}
check RetrieveCollectionIsSafe for 10

assert RetrieveCollectionOnConfigurationWithoutExtensionsAndUserMixinsReturnsNoCategory
{
  all config : Configuration, categories : Category, t, t' : Time |
    no config.use and no config.mixins.t and GetAllCategories[config, categories, t, t'] implies no categories
}
check RetrieveCollectionOnConfigurationWithoutExtensionsAndUserMixinsReturnsNoCategory for 10

assert RetrieveCollectionOnConfigurationWithoutExtensionsReturnsUserMixins
{
  all config : Configuration, categories : Category, t, t' : Time |
    no config.use and GetAllCategories[config, categories, t, t'] implies categories = config.mixins.t
}
check RetrieveCollectionOnConfigurationWithoutExtensionsReturnsUserMixins for 10

assert RetrieveCollectionOnConfigurationWithoutUserMixinsReturnsAllExtensionsKindsAndMixins
{
  all config : Configuration, categories : Category, t, t' : Time |
    no config.mixins.t and GetAllCategories[config, categories, t, t'] implies categories = config.use.kinds + config.use.mixins
}
check RetrieveCollectionOnConfigurationWithoutUserMixinsReturnsAllExtensionsKindsAndMixins for 10

// ======================================================================
//
// Launch an action on a resource or link.
//
pred ExecuteAction [config : Configuration, action: Action, resource : Resource,
 SM : StateMachine, t, t' : Time]
{
 // preconditions
 // action is an event of the SM transitions
 action in SM.transitions.event
 // the condition of a transition of a SM is a state of this SM
 SM.transitions.condition in SM.states
 // the entities of a state are entities of the resource kind
 SM.states.entities in resource.kind.entities.t
 // the exit state is contained in the states of the SM
 one exit : State | exit = SM.states<:exit
 // postconditions
 // the source a state at t' was the target state at t
 SM.transitions.source = SM.transitions.target
}

run  ExecuteAction
{
  one config : Configuration, action : Action, resource : Resource,
  SM : StateMachine, t: Time |
   ExecuteAction[config, action, resource, SM, t, t.next]
} for 3 but exactly 1 Configuration, exactly 2 Time
 
// ======================================================================
// End of file.
// ======================================================================
