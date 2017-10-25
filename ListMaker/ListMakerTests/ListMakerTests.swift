//
//  ListMakerTests.swift
//  ListMakerTests
//
//  Created by Alasdair Lincoln on 25/10/2017.
//  Copyright © 2017 Alasdair Lincoln. All rights reserved.
//

import XCTest

class ListerTests: XCTestCase {
    
    override func setUp() {
        let lister = Lister.sharedInstance
        super.setUp()
        lister.clearList()
    }
    
    func testAddItem() {
        let lister = Lister.sharedInstance
        lister.add(item: "Bread")
        let newItem:String = lister.getItem(atIndex: 0)
        XCTAssertEqual(newItem, "Bread")
    }
    
    func testGetInvalidIndex() {
        let lister = Lister.sharedInstance
        lister.add(item: "Bread")
        lister.add(item: "Butter")
        print(lister.count)
        XCTAssertEqual(lister.count, 2)
    }
    
    func testClearList() {
        let lister = Lister.sharedInstance
        lister.add(item: "Bread")
        lister.add(item: "Butter")
        print(lister.count)
        XCTAssertEqual(lister.count, 2)
        lister.clearList()
        XCTAssertEqual(lister.count, 0)
    }
}
