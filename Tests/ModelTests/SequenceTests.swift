//
//  SequenceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 on 2016-11-04.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SequenceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Sequence {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Sequence {
		return try SwiftFHIR.Sequence(json: json)
	}
	
	func testSequence1() {
		do {
			let instance = try runSequence1()
			try runSequence1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw")
		}
	}
	
	@discardableResult
	func runSequence1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Sequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NC_000007.14")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 55227980)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 55227970)
		XCTAssertEqual(inst.repository?[0].name, "ga4gh")
		XCTAssertEqual(inst.repository?[0].url?.absoluteString, "https://www.googleapis.com/genomics/v1beta2")
		XCTAssertEqual(inst.repository?[0].variantId, "A1A2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "DNA")
		XCTAssertEqual(inst.variant?[0].end, 55227977)
		XCTAssertEqual(inst.variant?[0].observedAllele, "T")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "A")
		XCTAssertEqual(inst.variant?[0].start, 55227976)
		
		return inst
	}
}