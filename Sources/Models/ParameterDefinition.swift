//
//  ParameterDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ParameterDefinition) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Definition of a parameter to a module.

The parameters to the module. This collection specifies both the input and output parameters. Input parameters are
provided by the caller as part of the $evaluate operation. Output parameters are included in the GuidanceResponse.
*/
open class ParameterDefinition: Element {
	override open class var resourceType: String {
		get { return "ParameterDefinition" }
	}
	
	/// A brief description of the parameter.
	public var documentation: FHIRString?
	
	/// Maximum cardinality (a number of *).
	public var max: FHIRString?
	
	/// Minimum cardinality.
	public var min: Int?
	
	/// Parameter name.
	public var name: FHIRString?
	
	/// The profile of the parameter, any.
	public var profile: Reference?
	
	/// Type for the parameter.
	public var type: FHIRString?
	
	/// Whether the parameter is input or output for the module.
	public var use: OperationParameterUse?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: FHIRString, use: OperationParameterUse) {
		self.init()
		self.type = type
		self.use = use
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["max"] {
			presentKeys.insert("max")
			if let val = exist as? String {
				self.max = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "max", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["min"] {
			presentKeys.insert("min")
			if let val = exist as? Int {
				self.min = val
			}
			else {
				errors.append(FHIRValidationError(key: "min", wants: Int.self, has: type(of: exist)))
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
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? String {
				if let enumval = OperationParameterUse(rawValue: val) {
					self.use = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "use", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "use"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let use = self.use {
			json["use"] = use.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "use"))
		}
		
		return json
	}
}
