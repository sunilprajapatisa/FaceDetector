//
//  FaceDetectorTests.swift
//  FaceDetectorTests
//
//  Created by Sunil Prajapati on 24/08/20.
//  Copyright © 2020 Sunil Prajapati. All rights reserved.
//

import XCTest
@testable import FaceDetector

class FaceDetectorTests: XCTestCase {

    
    override func setUp() {
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testFaceDetection() {
        let bundle = Bundle(for: type(of: self))
        let path = bundle.path(forResource: "face1", ofType: "jpg")!
        let xmlData = NSData(contentsOfFile: path)
        let face = UIImage(data: xmlData! as Data)
        XCTAssertEqual(face!.hasFace, true)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
