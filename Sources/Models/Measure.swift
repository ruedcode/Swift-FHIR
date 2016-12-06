//
//  Measure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Measure) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A quality measure definition.

The Measure resource provides the definition of a quality measure.
*/
open class Measure: DomainResource {
	override open class var resourceType: String {
		get { return "Measure" }
	}
	
	/// When measure approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Clinical recommendation.
	public var clinicalRecommendationStatement: FHIRString?
	
	/// If this is a composite measure, the scoring method used to combine the component measures to determine the
	/// composite score.
	public var compositeScoring: CompositeMeasureScoring?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// A natural language definition of the measure.
	public var definition: FHIRString?
	
	/// Natural language description of the measure.
	public var description_fhir: FHIRString?
	
	/// Disclaimer for the measure.
	public var disclaimer: FHIRString?
	
	/// The effective date range for the measure.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Population criteria group.
	public var group: [MeasureGroup]?
	
	/// The guidance for the measure.
	public var guidance: FHIRString?
	
	/// Additional identifier for the measure.
	public var identifier: [Identifier]?
	
	/// Improvement notation for the measure, e.g. higher score indicates better quality.
	public var improvementNotation: FHIRString?
	
	/// Intended jurisdiction for measure (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Last review date for the measure.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the measure.
	public var library: [Reference]?
	
	/// Name for this measure (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this measure is defined.
	public var purpose: FHIRString?
	
	/// How is rate aggregation performed for this measure.
	public var rateAggregation: FHIRString?
	
	/// Why does this measure exist.
	public var rationale: FHIRString?
	
	/// Related artifacts for the measure.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// How is risk adjustment applied for this measure.
	public var riskAdjustment: FHIRString?
	
	/// The measure scoring type, e.g. proportion, CV.
	public var scoring: MeasureScoring?
	
	/// The measure set, e.g. Preventive Care and Screening.
	public var set: FHIRString?
	
	/// The status of this measure. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Supplemental data.
	public var supplementalData: [MeasureSupplementalData]?
	
	/// Name for this measure (Human friendly).
	public var title: FHIRString?
	
	/// Descriptional topics for the measure.
	public var topic: [CodeableConcept]?
	
	/// The measure type, e.g. process, outcome.
	public var type: [MeasureType]?
	
	/// Logical uri to reference this measure (globally unique).
	public var url: URL?
	
	/// Describes the clinical usage of the measure.
	public var usage: FHIRString?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the measure.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["approvalDate"] {
			presentKeys.insert("approvalDate")
			if let val = exist as? String {
				self.approvalDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "approvalDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["clinicalRecommendationStatement"] {
			presentKeys.insert("clinicalRecommendationStatement")
			if let val = exist as? String {
				self.clinicalRecommendationStatement = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "clinicalRecommendationStatement", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["compositeScoring"] {
			presentKeys.insert("compositeScoring")
			if let val = exist as? String {
				if let enumval = CompositeMeasureScoring(rawValue: val) {
					self.compositeScoring = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "compositeScoring", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "compositeScoring", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contributor"] {
			presentKeys.insert("contributor")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contributor = try Contributor.instantiate(fromArray: val, owner: self) as? [Contributor]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contributor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contributor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? String {
				self.definition = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["disclaimer"] {
			presentKeys.insert("disclaimer")
			if let val = exist as? String {
				self.disclaimer = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "disclaimer", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectivePeriod"] {
			presentKeys.insert("effectivePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.effectivePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "effectivePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["group"] {
			presentKeys.insert("group")
			if let val = exist as? [FHIRJSON] {
				do {
					self.group = try MeasureGroup.instantiate(fromArray: val, owner: self) as? [MeasureGroup]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "group"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["guidance"] {
			presentKeys.insert("guidance")
			if let val = exist as? String {
				self.guidance = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "guidance", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["improvementNotation"] {
			presentKeys.insert("improvementNotation")
			if let val = exist as? String {
				self.improvementNotation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "improvementNotation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["lastReviewDate"] {
			presentKeys.insert("lastReviewDate")
			if let val = exist as? String {
				self.lastReviewDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastReviewDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["library"] {
			presentKeys.insert("library")
			if let val = exist as? [FHIRJSON] {
				do {
					self.library = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "library"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "library", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["rateAggregation"] {
			presentKeys.insert("rateAggregation")
			if let val = exist as? String {
				self.rateAggregation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "rateAggregation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["rationale"] {
			presentKeys.insert("rationale")
			if let val = exist as? String {
				self.rationale = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "rationale", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedArtifact"] {
			presentKeys.insert("relatedArtifact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatedArtifact = try RelatedArtifact.instantiate(fromArray: val, owner: self) as? [RelatedArtifact]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedArtifact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedArtifact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["riskAdjustment"] {
			presentKeys.insert("riskAdjustment")
			if let val = exist as? String {
				self.riskAdjustment = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "riskAdjustment", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["scoring"] {
			presentKeys.insert("scoring")
			if let val = exist as? String {
				if let enumval = MeasureScoring(rawValue: val) {
					self.scoring = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "scoring", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "scoring", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["set"] {
			presentKeys.insert("set")
			if let val = exist as? String {
				self.set = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "set", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = PublicationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["supplementalData"] {
			presentKeys.insert("supplementalData")
			if let val = exist as? [FHIRJSON] {
				do {
					self.supplementalData = try MeasureSupplementalData.instantiate(fromArray: val, owner: self) as? [MeasureSupplementalData]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supplementalData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supplementalData", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["topic"] {
			presentKeys.insert("topic")
			if let val = exist as? [FHIRJSON] {
				do {
					self.topic = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "topic"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "topic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [String] { var i = -1
				self.type = val.map() { i += 1
					if let enumval = MeasureType(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "type.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["usage"] {
			presentKeys.insert("usage")
			if let val = exist as? String {
				self.usage = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "usage", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let approvalDate = self.approvalDate {
			json["approvalDate"] = approvalDate.asJSON()
		}
		if let clinicalRecommendationStatement = self.clinicalRecommendationStatement {
			json["clinicalRecommendationStatement"] = clinicalRecommendationStatement.asJSON()
		}
		if let compositeScoring = self.compositeScoring {
			json["compositeScoring"] = compositeScoring.rawValue
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let contributor = self.contributor {
			json["contributor"] = contributor.map() { $0.asJSON(errors: &errors) }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let disclaimer = self.disclaimer {
			json["disclaimer"] = disclaimer.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON(errors: &errors)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON(errors: &errors) }
		}
		if let guidance = self.guidance {
			json["guidance"] = guidance.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let improvementNotation = self.improvementNotation {
			json["improvementNotation"] = improvementNotation.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let lastReviewDate = self.lastReviewDate {
			json["lastReviewDate"] = lastReviewDate.asJSON()
		}
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let rateAggregation = self.rateAggregation {
			json["rateAggregation"] = rateAggregation.asJSON()
		}
		if let rationale = self.rationale {
			json["rationale"] = rationale.asJSON()
		}
		if let relatedArtifact = self.relatedArtifact {
			json["relatedArtifact"] = relatedArtifact.map() { $0.asJSON(errors: &errors) }
		}
		if let riskAdjustment = self.riskAdjustment {
			json["riskAdjustment"] = riskAdjustment.asJSON()
		}
		if let scoring = self.scoring {
			json["scoring"] = scoring.rawValue
		}
		if let set = self.set {
			json["set"] = set.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let supplementalData = self.supplementalData {
			json["supplementalData"] = supplementalData.map() { $0.asJSON(errors: &errors) }
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.map() { $0.rawValue }
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
Population criteria group.

A group of population criteria for the measure.
*/
open class MeasureGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroup" }
	}
	
	/// Summary description.
	public var description_fhir: FHIRString?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: FHIRString?
	
	/// Population criteria.
	public var population: [MeasureGroupPopulation]?
	
	/// Stratifier criteria for the measure.
	public var stratifier: [MeasureGroupStratifier]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["population"] {
			presentKeys.insert("population")
			if let val = exist as? [FHIRJSON] {
				do {
					self.population = try MeasureGroupPopulation.instantiate(fromArray: val, owner: self) as? [MeasureGroupPopulation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "population"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "population", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["stratifier"] {
			presentKeys.insert("stratifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.stratifier = try MeasureGroupStratifier.instantiate(fromArray: val, owner: self) as? [MeasureGroupStratifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "stratifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "stratifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let population = self.population {
			json["population"] = population.map() { $0.asJSON(errors: &errors) }
		}
		if let stratifier = self.stratifier {
			json["stratifier"] = stratifier.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Population criteria.

A population criteria for the measure.
*/
open class MeasureGroupPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroupPopulation" }
	}
	
	/// The name of a valid referenced CQL expression (may be namespaced) that defines this population criteria.
	public var criteria: FHIRString?
	
	/// The human readable description of this population criteria.
	public var description_fhir: FHIRString?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: FHIRString?
	
	/// The type of population criteria.
	public var type: MeasurePopulationType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(criteria: FHIRString, identifier: Identifier, type: MeasurePopulationType) {
		self.init()
		self.criteria = criteria
		self.identifier = identifier
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["criteria"] {
			presentKeys.insert("criteria")
			if let val = exist as? String {
				self.criteria = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "criteria", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = MeasurePopulationType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return json
	}
}


/**
Stratifier criteria for the measure.

The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a
referenced library, or a valid FHIR Resource Path.
*/
open class MeasureGroupStratifier: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroupStratifier" }
	}
	
	/// Stratifier criteria.
	public var criteria: FHIRString?
	
	/// The identifier for the stratifier used to coordinate the reported data back to this stratifier.
	public var identifier: Identifier?
	
	/// Path to the stratifier.
	public var path: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["criteria"] {
			presentKeys.insert("criteria")
			if let val = exist as? String {
				self.criteria = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "criteria", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		
		return json
	}
}


/**
Supplemental data.

The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within a
referenced library, or a valid FHIR Resource Path.
*/
open class MeasureSupplementalData: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureSupplementalData" }
	}
	
	/// Supplemental data criteria.
	public var criteria: FHIRString?
	
	/// Identifier, unique within the measure.
	public var identifier: Identifier?
	
	/// Path to the supplemental data element.
	public var path: FHIRString?
	
	/// An indicator of the intended usage for the supplemental data element. Supplemental data indicates the data is
	/// additional information requested to augment the measure information. Risk adjustment factor indicates the data
	/// is additional information used to calculate risk adjustment factors when applying a risk model to the measure
	/// calculation.
	public var usage: [MeasureDataUsage]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["criteria"] {
			presentKeys.insert("criteria")
			if let val = exist as? String {
				self.criteria = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "criteria", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["usage"] {
			presentKeys.insert("usage")
			if let val = exist as? [String] { var i = -1
				self.usage = val.map() { i += 1
					if let enumval = MeasureDataUsage(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "usage.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "usage", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let usage = self.usage {
			json["usage"] = usage.map() { $0.rawValue }
		}
		
		return json
	}
}
