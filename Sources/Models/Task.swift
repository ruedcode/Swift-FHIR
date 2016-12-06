//
//  Task.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Task) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A task to be performed.
*/
open class Task: DomainResource {
	override open class var resourceType: String {
		get { return "Task" }
	}
	
	/// Task Creation Date.
	public var authoredOn: DateTime?
	
	/// Request fulfilled by this task.
	public var basedOn: [Reference]?
	
	/// E.g. "Specimen collected", "IV prepped".
	public var businessStatus: CodeableConcept?
	
	/// Task Type.
	public var code: CodeableConcept?
	
	/// Healthcare event during which this task originated.
	public var context: Reference?
	
	/// Formal definition of task.
	public var definitionReference: Reference?
	
	/// Formal definition of task.
	public var definitionUri: URL?
	
	/// Human-readable explanation of task.
	public var description_fhir: FHIRString?
	
	/// Start and end time of execution.
	public var executionPeriod: Period?
	
	/// What task is acting on.
	public var focus: Reference?
	
	/// Beneficiary of the Task.
	public var for_fhir: Reference?
	
	/// Requisition or grouper id.
	public var groupIdentifier: Identifier?
	
	/// Task Instance Identifier.
	public var identifier: [Identifier]?
	
	/// Information used to perform task.
	public var input: [TaskInput]?
	
	/// Indicates the "level" of actionability associated with the Task.  I.e. Is this a proposed task, a planned task,
	/// an actionable task, etc.
	public var intent: RequestIntent?
	
	/// Task Last Modified Date.
	public var lastModified: DateTime?
	
	/// Comments made about the task.
	public var note: [Annotation]?
	
	/// Information produced as part of task.
	public var output: [TaskOutput]?
	
	/// Task Owner.
	public var owner: Reference?
	
	/// Composite task.
	public var partOf: [Reference]?
	
	/// requester | dispatcher | scheduler | performer | monitor | manager | acquirer | reviewer.
	public var performerType: [CodeableConcept]?
	
	/// Indicates how quickly the Task should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// Why task is needed.
	public var reason: CodeableConcept?
	
	/// Key events in history of the Task.
	public var relevantHistory: [Reference]?
	
	/// Who is asking for task to be done.
	public var requester: TaskRequester?
	
	/// Constraints on fulfillment tasks.
	public var restriction: TaskRestriction?
	
	/// The current status of the task.
	public var status: TaskStatus?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: RequestIntent, status: TaskStatus) {
		self.init()
		self.intent = intent
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["authoredOn"] {
			presentKeys.insert("authoredOn")
			if let val = exist as? String {
				self.authoredOn = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "authoredOn", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["basedOn"] {
			presentKeys.insert("basedOn")
			if let val = exist as? [FHIRJSON] {
				do {
					self.basedOn = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basedOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["businessStatus"] {
			presentKeys.insert("businessStatus")
			if let val = exist as? FHIRJSON {
				do {
					self.businessStatus = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "businessStatus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "businessStatus", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["definitionReference"] {
			presentKeys.insert("definitionReference")
			if let val = exist as? FHIRJSON {
				do {
					self.definitionReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "definitionReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "definitionReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["definitionUri"] {
			presentKeys.insert("definitionUri")
			if let val = exist as? String {
				self.definitionUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "definitionUri", wants: String.self, has: type(of: exist)))
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
		if let exist = json["executionPeriod"] {
			presentKeys.insert("executionPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.executionPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "executionPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "executionPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["focus"] {
			presentKeys.insert("focus")
			if let val = exist as? FHIRJSON {
				do {
					self.focus = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "focus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "focus", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["for"] {
			presentKeys.insert("for")
			if let val = exist as? FHIRJSON {
				do {
					self.for_fhir = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "for"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "for", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["groupIdentifier"] {
			presentKeys.insert("groupIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.groupIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "groupIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "groupIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["input"] {
			presentKeys.insert("input")
			if let val = exist as? [FHIRJSON] {
				do {
					self.input = try TaskInput.instantiate(fromArray: val, owner: self) as? [TaskInput]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "input"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "input", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["intent"] {
			presentKeys.insert("intent")
			if let val = exist as? String {
				if let enumval = RequestIntent(rawValue: val) {
					self.intent = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "intent", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "intent", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		if let exist = json["lastModified"] {
			presentKeys.insert("lastModified")
			if let val = exist as? String {
				self.lastModified = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastModified", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["output"] {
			presentKeys.insert("output")
			if let val = exist as? [FHIRJSON] {
				do {
					self.output = try TaskOutput.instantiate(fromArray: val, owner: self) as? [TaskOutput]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "output"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "output", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["owner"] {
			presentKeys.insert("owner")
			if let val = exist as? FHIRJSON {
				do {
					self.owner = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "owner"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "owner", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["partOf"] {
			presentKeys.insert("partOf")
			if let val = exist as? [FHIRJSON] {
				do {
					self.partOf = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "partOf"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "partOf", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["performerType"] {
			presentKeys.insert("performerType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.performerType = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performerType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performerType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? String {
				if let enumval = RequestPriority(rawValue: val) {
					self.priority = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "priority", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relevantHistory"] {
			presentKeys.insert("relevantHistory")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relevantHistory = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relevantHistory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relevantHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["requester"] {
			presentKeys.insert("requester")
			if let val = exist as? FHIRJSON {
				do {
					self.requester = try TaskRequester(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requester"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requester", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["restriction"] {
			presentKeys.insert("restriction")
			if let val = exist as? FHIRJSON {
				do {
					self.restriction = try TaskRestriction(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "restriction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "restriction", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = TaskStatus(rawValue: val) {
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
		if let exist = json["statusReason"] {
			presentKeys.insert("statusReason")
			if let val = exist as? FHIRJSON {
				do {
					self.statusReason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "statusReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "statusReason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let authoredOn = self.authoredOn {
			json["authoredOn"] = authoredOn.asJSON()
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON(errors: &errors) }
		}
		if let businessStatus = self.businessStatus {
			json["businessStatus"] = businessStatus.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let definitionReference = self.definitionReference {
			json["definitionReference"] = definitionReference.asJSON(errors: &errors)
		}
		if let definitionUri = self.definitionUri {
			json["definitionUri"] = definitionUri.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let executionPeriod = self.executionPeriod {
			json["executionPeriod"] = executionPeriod.asJSON(errors: &errors)
		}
		if let focus = self.focus {
			json["focus"] = focus.asJSON(errors: &errors)
		}
		if let for_fhir = self.for_fhir {
			json["for"] = for_fhir.asJSON(errors: &errors)
		}
		if let groupIdentifier = self.groupIdentifier {
			json["groupIdentifier"] = groupIdentifier.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let input = self.input {
			json["input"] = input.map() { $0.asJSON(errors: &errors) }
		}
		if let intent = self.intent {
			json["intent"] = intent.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		if let lastModified = self.lastModified {
			json["lastModified"] = lastModified.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let output = self.output {
			json["output"] = output.map() { $0.asJSON(errors: &errors) }
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON(errors: &errors)
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.map() { $0.asJSON(errors: &errors) }
		}
		if let performerType = self.performerType {
			json["performerType"] = performerType.map() { $0.asJSON(errors: &errors) }
		}
		if let priority = self.priority {
			json["priority"] = priority.rawValue
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		if let relevantHistory = self.relevantHistory {
			json["relevantHistory"] = relevantHistory.map() { $0.asJSON(errors: &errors) }
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON(errors: &errors)
		}
		if let restriction = self.restriction {
			json["restriction"] = restriction.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let statusReason = self.statusReason {
			json["statusReason"] = statusReason.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Information used to perform task.

Additional information that may be needed in the execution of the task.
*/
open class TaskInput: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskInput" }
	}
	
	/// Label for the input.
	public var type: CodeableConcept?
	
	/// Content to use in performing the task.
	public var valueAddress: Address?
	
	/// Content to use in performing the task.
	public var valueAge: Age?
	
	/// Content to use in performing the task.
	public var valueAnnotation: Annotation?
	
	/// Content to use in performing the task.
	public var valueAttachment: Attachment?
	
	/// Content to use in performing the task.
	public var valueBase64Binary: Base64Binary?
	
	/// Content to use in performing the task.
	public var valueBoolean: Bool?
	
	/// Content to use in performing the task.
	public var valueCode: FHIRString?
	
	/// Content to use in performing the task.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Content to use in performing the task.
	public var valueCoding: Coding?
	
	/// Content to use in performing the task.
	public var valueContactPoint: ContactPoint?
	
	/// Content to use in performing the task.
	public var valueCount: Count?
	
	/// Content to use in performing the task.
	public var valueDate: FHIRDate?
	
	/// Content to use in performing the task.
	public var valueDateTime: DateTime?
	
	/// Content to use in performing the task.
	public var valueDecimal: NSDecimalNumber?
	
	/// Content to use in performing the task.
	public var valueDistance: Distance?
	
	/// Content to use in performing the task.
	public var valueDuration: Duration?
	
	/// Content to use in performing the task.
	public var valueHumanName: HumanName?
	
	/// Content to use in performing the task.
	public var valueId: FHIRString?
	
	/// Content to use in performing the task.
	public var valueIdentifier: Identifier?
	
	/// Content to use in performing the task.
	public var valueInstant: Instant?
	
	/// Content to use in performing the task.
	public var valueInteger: Int?
	
	/// Content to use in performing the task.
	public var valueMarkdown: FHIRString?
	
	/// Content to use in performing the task.
	public var valueMeta: Meta?
	
	/// Content to use in performing the task.
	public var valueMoney: Money?
	
	/// Content to use in performing the task.
	public var valueOid: FHIRString?
	
	/// Content to use in performing the task.
	public var valuePeriod: Period?
	
	/// Content to use in performing the task.
	public var valuePositiveInt: UInt?
	
	/// Content to use in performing the task.
	public var valueQuantity: Quantity?
	
	/// Content to use in performing the task.
	public var valueRange: Range?
	
	/// Content to use in performing the task.
	public var valueRatio: Ratio?
	
	/// Content to use in performing the task.
	public var valueReference: Reference?
	
	/// Content to use in performing the task.
	public var valueSampledData: SampledData?
	
	/// Content to use in performing the task.
	public var valueSignature: Signature?
	
	/// Content to use in performing the task.
	public var valueString: FHIRString?
	
	/// Content to use in performing the task.
	public var valueTime: FHIRTime?
	
	/// Content to use in performing the task.
	public var valueTiming: Timing?
	
	/// Content to use in performing the task.
	public var valueUnsignedInt: UInt?
	
	/// Content to use in performing the task.
	public var valueUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, value: Any) {
		self.init()
		self.type = type
		if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else if let value = value as? Bool {
			self.valueBoolean = value
		}
		else if let value = value as? FHIRString {
			self.valueCode = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? NSDecimalNumber {
			self.valueDecimal = value
		}
		else if let value = value as? FHIRString {
			self.valueId = value
		}
		else if let value = value as? Instant {
			self.valueInstant = value
		}
		else if let value = value as? Int {
			self.valueInteger = value
		}
		else if let value = value as? FHIRString {
			self.valueMarkdown = value
		}
		else if let value = value as? FHIRString {
			self.valueOid = value
		}
		else if let value = value as? UInt {
			self.valuePositiveInt = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? UInt {
			self.valueUnsignedInt = value
		}
		else if let value = value as? URL {
			self.valueUri = value
		}
		else if let value = value as? Address {
			self.valueAddress = value
		}
		else if let value = value as? Age {
			self.valueAge = value
		}
		else if let value = value as? Annotation {
			self.valueAnnotation = value
		}
		else if let value = value as? Attachment {
			self.valueAttachment = value
		}
		else if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? ContactPoint {
			self.valueContactPoint = value
		}
		else if let value = value as? Count {
			self.valueCount = value
		}
		else if let value = value as? Distance {
			self.valueDistance = value
		}
		else if let value = value as? Duration {
			self.valueDuration = value
		}
		else if let value = value as? HumanName {
			self.valueHumanName = value
		}
		else if let value = value as? Identifier {
			self.valueIdentifier = value
		}
		else if let value = value as? Money {
			self.valueMoney = value
		}
		else if let value = value as? Period {
			self.valuePeriod = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Range {
			self.valueRange = value
		}
		else if let value = value as? Ratio {
			self.valueRatio = value
		}
		else if let value = value as? Reference {
			self.valueReference = value
		}
		else if let value = value as? SampledData {
			self.valueSampledData = value
		}
		else if let value = value as? Signature {
			self.valueSignature = value
		}
		else if let value = value as? Timing {
			self.valueTiming = value
		}
		else if let value = value as? Meta {
			self.valueMeta = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["valueAddress"] {
			presentKeys.insert("valueAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAge"] {
			presentKeys.insert("valueAge")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAnnotation"] {
			presentKeys.insert("valueAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAttachment"] {
			presentKeys.insert("valueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBase64Binary"] {
			presentKeys.insert("valueBase64Binary")
			if let val = exist as? String {
				self.valueBase64Binary = Base64Binary(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCode"] {
			presentKeys.insert("valueCode")
			if let val = exist as? String {
				self.valueCode = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueContactPoint"] {
			presentKeys.insert("valueContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.valueContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCount"] {
			presentKeys.insert("valueCount")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDate"] {
			presentKeys.insert("valueDate")
			if let val = exist as? String {
				self.valueDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDecimal"] {
			presentKeys.insert("valueDecimal")
			if let val = exist as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDistance"] {
			presentKeys.insert("valueDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDuration"] {
			presentKeys.insert("valueDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueHumanName"] {
			presentKeys.insert("valueHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.valueHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueId"] {
			presentKeys.insert("valueId")
			if let val = exist as? String {
				self.valueId = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueIdentifier"] {
			presentKeys.insert("valueIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.valueIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInstant"] {
			presentKeys.insert("valueInstant")
			if let val = exist as? String {
				self.valueInstant = Instant(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInteger"] {
			presentKeys.insert("valueInteger")
			if let val = exist as? Int {
				self.valueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMarkdown"] {
			presentKeys.insert("valueMarkdown")
			if let val = exist as? String {
				self.valueMarkdown = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMeta"] {
			presentKeys.insert("valueMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMoney"] {
			presentKeys.insert("valueMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueOid"] {
			presentKeys.insert("valueOid")
			if let val = exist as? String {
				self.valueOid = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePositiveInt"] {
			presentKeys.insert("valuePositiveInt")
			if let val = exist as? UInt {
				self.valuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRatio"] {
			presentKeys.insert("valueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueReference"] {
			presentKeys.insert("valueReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSampledData"] {
			presentKeys.insert("valueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSignature"] {
			presentKeys.insert("valueSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTiming"] {
			presentKeys.insert("valueTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.valueTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUnsignedInt"] {
			presentKeys.insert("valueUnsignedInt")
			if let val = exist as? UInt {
				self.valueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUri"] {
			presentKeys.insert("valueUri")
			if let val = exist as? String {
				self.valueUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON(errors: &errors)
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON(errors: &errors)
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON(errors: &errors)
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON(errors: &errors)
		}
		if let valueBase64Binary = self.valueBase64Binary {
			json["valueBase64Binary"] = valueBase64Binary.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON(errors: &errors)
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON(errors: &errors)
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON(errors: &errors)
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueDistance = self.valueDistance {
			json["valueDistance"] = valueDistance.asJSON(errors: &errors)
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON(errors: &errors)
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON(errors: &errors)
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON(errors: &errors)
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueMarkdown = self.valueMarkdown {
			json["valueMarkdown"] = valueMarkdown.asJSON()
		}
		if let valueMeta = self.valueMeta {
			json["valueMeta"] = valueMeta.asJSON(errors: &errors)
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON(errors: &errors)
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON(errors: &errors)
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON(errors: &errors)
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON(errors: &errors)
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON(errors: &errors)
		}
		if let valueUnsignedInt = self.valueUnsignedInt {
			json["valueUnsignedInt"] = valueUnsignedInt.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		return json
	}
}


/**
Information produced as part of task.

Outputs produced by the Task.
*/
open class TaskOutput: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskOutput" }
	}
	
	/// Label for output.
	public var type: CodeableConcept?
	
	/// Result of output.
	public var valueAddress: Address?
	
	/// Result of output.
	public var valueAge: Age?
	
	/// Result of output.
	public var valueAnnotation: Annotation?
	
	/// Result of output.
	public var valueAttachment: Attachment?
	
	/// Result of output.
	public var valueBase64Binary: Base64Binary?
	
	/// Result of output.
	public var valueBoolean: Bool?
	
	/// Result of output.
	public var valueCode: FHIRString?
	
	/// Result of output.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Result of output.
	public var valueCoding: Coding?
	
	/// Result of output.
	public var valueContactPoint: ContactPoint?
	
	/// Result of output.
	public var valueCount: Count?
	
	/// Result of output.
	public var valueDate: FHIRDate?
	
	/// Result of output.
	public var valueDateTime: DateTime?
	
	/// Result of output.
	public var valueDecimal: NSDecimalNumber?
	
	/// Result of output.
	public var valueDistance: Distance?
	
	/// Result of output.
	public var valueDuration: Duration?
	
	/// Result of output.
	public var valueHumanName: HumanName?
	
	/// Result of output.
	public var valueId: FHIRString?
	
	/// Result of output.
	public var valueIdentifier: Identifier?
	
	/// Result of output.
	public var valueInstant: Instant?
	
	/// Result of output.
	public var valueInteger: Int?
	
	/// Result of output.
	public var valueMarkdown: FHIRString?
	
	/// Result of output.
	public var valueMeta: Meta?
	
	/// Result of output.
	public var valueMoney: Money?
	
	/// Result of output.
	public var valueOid: FHIRString?
	
	/// Result of output.
	public var valuePeriod: Period?
	
	/// Result of output.
	public var valuePositiveInt: UInt?
	
	/// Result of output.
	public var valueQuantity: Quantity?
	
	/// Result of output.
	public var valueRange: Range?
	
	/// Result of output.
	public var valueRatio: Ratio?
	
	/// Result of output.
	public var valueReference: Reference?
	
	/// Result of output.
	public var valueSampledData: SampledData?
	
	/// Result of output.
	public var valueSignature: Signature?
	
	/// Result of output.
	public var valueString: FHIRString?
	
	/// Result of output.
	public var valueTime: FHIRTime?
	
	/// Result of output.
	public var valueTiming: Timing?
	
	/// Result of output.
	public var valueUnsignedInt: UInt?
	
	/// Result of output.
	public var valueUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, value: Any) {
		self.init()
		self.type = type
		if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else if let value = value as? Bool {
			self.valueBoolean = value
		}
		else if let value = value as? FHIRString {
			self.valueCode = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? NSDecimalNumber {
			self.valueDecimal = value
		}
		else if let value = value as? FHIRString {
			self.valueId = value
		}
		else if let value = value as? Instant {
			self.valueInstant = value
		}
		else if let value = value as? Int {
			self.valueInteger = value
		}
		else if let value = value as? FHIRString {
			self.valueMarkdown = value
		}
		else if let value = value as? FHIRString {
			self.valueOid = value
		}
		else if let value = value as? UInt {
			self.valuePositiveInt = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? UInt {
			self.valueUnsignedInt = value
		}
		else if let value = value as? URL {
			self.valueUri = value
		}
		else if let value = value as? Address {
			self.valueAddress = value
		}
		else if let value = value as? Age {
			self.valueAge = value
		}
		else if let value = value as? Annotation {
			self.valueAnnotation = value
		}
		else if let value = value as? Attachment {
			self.valueAttachment = value
		}
		else if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? ContactPoint {
			self.valueContactPoint = value
		}
		else if let value = value as? Count {
			self.valueCount = value
		}
		else if let value = value as? Distance {
			self.valueDistance = value
		}
		else if let value = value as? Duration {
			self.valueDuration = value
		}
		else if let value = value as? HumanName {
			self.valueHumanName = value
		}
		else if let value = value as? Identifier {
			self.valueIdentifier = value
		}
		else if let value = value as? Money {
			self.valueMoney = value
		}
		else if let value = value as? Period {
			self.valuePeriod = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Range {
			self.valueRange = value
		}
		else if let value = value as? Ratio {
			self.valueRatio = value
		}
		else if let value = value as? Reference {
			self.valueReference = value
		}
		else if let value = value as? SampledData {
			self.valueSampledData = value
		}
		else if let value = value as? Signature {
			self.valueSignature = value
		}
		else if let value = value as? Timing {
			self.valueTiming = value
		}
		else if let value = value as? Meta {
			self.valueMeta = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["valueAddress"] {
			presentKeys.insert("valueAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAge"] {
			presentKeys.insert("valueAge")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAnnotation"] {
			presentKeys.insert("valueAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAttachment"] {
			presentKeys.insert("valueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBase64Binary"] {
			presentKeys.insert("valueBase64Binary")
			if let val = exist as? String {
				self.valueBase64Binary = Base64Binary(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCode"] {
			presentKeys.insert("valueCode")
			if let val = exist as? String {
				self.valueCode = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueContactPoint"] {
			presentKeys.insert("valueContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.valueContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCount"] {
			presentKeys.insert("valueCount")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDate"] {
			presentKeys.insert("valueDate")
			if let val = exist as? String {
				self.valueDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDecimal"] {
			presentKeys.insert("valueDecimal")
			if let val = exist as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDistance"] {
			presentKeys.insert("valueDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDuration"] {
			presentKeys.insert("valueDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueHumanName"] {
			presentKeys.insert("valueHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.valueHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueId"] {
			presentKeys.insert("valueId")
			if let val = exist as? String {
				self.valueId = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueIdentifier"] {
			presentKeys.insert("valueIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.valueIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInstant"] {
			presentKeys.insert("valueInstant")
			if let val = exist as? String {
				self.valueInstant = Instant(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInteger"] {
			presentKeys.insert("valueInteger")
			if let val = exist as? Int {
				self.valueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMarkdown"] {
			presentKeys.insert("valueMarkdown")
			if let val = exist as? String {
				self.valueMarkdown = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMeta"] {
			presentKeys.insert("valueMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMoney"] {
			presentKeys.insert("valueMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueOid"] {
			presentKeys.insert("valueOid")
			if let val = exist as? String {
				self.valueOid = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePositiveInt"] {
			presentKeys.insert("valuePositiveInt")
			if let val = exist as? UInt {
				self.valuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRatio"] {
			presentKeys.insert("valueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueReference"] {
			presentKeys.insert("valueReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSampledData"] {
			presentKeys.insert("valueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSignature"] {
			presentKeys.insert("valueSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTiming"] {
			presentKeys.insert("valueTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.valueTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUnsignedInt"] {
			presentKeys.insert("valueUnsignedInt")
			if let val = exist as? UInt {
				self.valueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUri"] {
			presentKeys.insert("valueUri")
			if let val = exist as? String {
				self.valueUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON(errors: &errors)
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON(errors: &errors)
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON(errors: &errors)
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON(errors: &errors)
		}
		if let valueBase64Binary = self.valueBase64Binary {
			json["valueBase64Binary"] = valueBase64Binary.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON(errors: &errors)
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON(errors: &errors)
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON(errors: &errors)
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueDistance = self.valueDistance {
			json["valueDistance"] = valueDistance.asJSON(errors: &errors)
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON(errors: &errors)
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON(errors: &errors)
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON(errors: &errors)
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueMarkdown = self.valueMarkdown {
			json["valueMarkdown"] = valueMarkdown.asJSON()
		}
		if let valueMeta = self.valueMeta {
			json["valueMeta"] = valueMeta.asJSON(errors: &errors)
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON(errors: &errors)
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON(errors: &errors)
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON(errors: &errors)
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON(errors: &errors)
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON(errors: &errors)
		}
		if let valueUnsignedInt = self.valueUnsignedInt {
			json["valueUnsignedInt"] = valueUnsignedInt.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		return json
	}
}


/**
Who is asking for task to be done.

The creator of the task.
*/
open class TaskRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskRequester" }
	}
	
	/// Individual asking for task.
	public var agent: Reference?
	
	/// Organization individual is acting for.
	public var onBehalfOf: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: Reference) {
		self.init()
		self.agent = agent
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["agent"] {
			presentKeys.insert("agent")
			if let val = exist as? FHIRJSON {
				do {
					self.agent = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "agent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "agent", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		if let exist = json["onBehalfOf"] {
			presentKeys.insert("onBehalfOf")
			if let val = exist as? FHIRJSON {
				do {
					self.onBehalfOf = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onBehalfOf"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onBehalfOf", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let agent = self.agent {
			json["agent"] = agent.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		if let onBehalfOf = self.onBehalfOf {
			json["onBehalfOf"] = onBehalfOf.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Constraints on fulfillment tasks.

If the Task.focus is a request resource and the task is seeking fulfillment (i.e is asking for the request to be
actioned), this element identifies any limitations on what parts of the referenced request should be actioned.
*/
open class TaskRestriction: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskRestriction" }
	}
	
	/// Over what time-period is fulfillment sought.
	public var period: Period?
	
	/// For whom is fulfillment sought?.
	public var recipient: [Reference]?
	
	/// How many times to repeat.
	public var repetitions: UInt?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["recipient"] {
			presentKeys.insert("recipient")
			if let val = exist as? [FHIRJSON] {
				do {
					self.recipient = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "recipient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "recipient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["repetitions"] {
			presentKeys.insert("repetitions")
			if let val = exist as? UInt {
				self.repetitions = val
			}
			else {
				errors.append(FHIRValidationError(key: "repetitions", wants: UInt.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON(errors: &errors) }
		}
		if let repetitions = self.repetitions {
			json["repetitions"] = repetitions.asJSON()
		}
		
		return json
	}
}
