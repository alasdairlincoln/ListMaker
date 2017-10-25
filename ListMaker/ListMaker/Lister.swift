//
//  Lister.swift
//  ListMaker
//
//  Created by Alasdair Lincoln on 25/10/2017.
//  Copyright © 2017 Alasdair Lincoln. All rights reserved.
//

import Foundation

enum ListError: Error {
    case emptyString
    case duplicateItem
    case outOfRange(index: Int)
}

public class Lister {
    
    var items:[String]
    
    public static let sharedInstance = Lister()
    
    private init() {
        //Empties list when intialised
        self.items = []
    }
    /**
     Adds an item to the list
     ```
     let lister = Lister()
     lister.add(item: "itemName")
     ```
     - Parameter item: The item to be added to the list
     - Returns: None
     - Throws: Nothing yet
    
    */
    public func add(item: String){
        //adds an item to the list
        self.items.append(item)
    }
    
    /**
     Returns an item from the specified place
     ```
     let lister = Lister()
     let item = lister.getItem(atIndex: 2)
     ```
     - Parameter atIndex: The index of the item to be returned
     - Returns: The item
     - Throws: Nothing yet
     */
    public func getItem(atIndex: Int) -> String {
        return self.items[atIndex]
    }
    
    /**
     Counts how many items are in the list
     ```
     let lister = Lister()
     lister.count
     ```
     - Parameter nothing: Does not need a parameter
     - Returns: The number of items in the list
     - Throws: Nothing yet
     */
    public var count:Int {
        get {
            return self.items.count
        }
    }
    
    public func clearList() {
        self.items.removeAll()
    }
    
    public func insert(newElement:String, at:Int) throws {
        //TODO: needs implementing
    }
    
    public func remove(at: Int) throws {
        //TODO: needs implementing
    }
    
    public func moveItem(fromIndex: Int, toIndex: Int) throws {
        //TODO: needs implementing
    }
    
}
