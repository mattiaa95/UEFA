//
//  UEFAUITestsLaunchTests.swift
//  UEFAUITests
//
//  Created by Mattia La Spina on 21/4/22.
//

import XCTest

class UEFAUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
    
    func testUCL() throws {
        let app = XCUIApplication()
        app.launch()
        app.staticTexts["UCL"].tap()
        let attachment = XCTAttachment(screenshot: app.screenshot())
        app.buttons["Back"].tap()
        add(attachment)
    }
    
    func testUEL() throws {
        let app = XCUIApplication()
        app.launch()
        app.staticTexts["UEL"].tap()
        let attachment = XCTAttachment(screenshot: app.screenshot())
        app.buttons["Back"].tap()
        add(attachment)
    }
}
