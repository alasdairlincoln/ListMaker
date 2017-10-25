//
//  Lister.swift
//  ListMaker
//
//  Created by Alasdair Lincoln on 25/10/2017.
//  Copyright © 2017 Alasdair Lincoln. All rights reserved.
//

import Foundation

public class Lister {
    
    var items:[String]
    
    init() {
        //Empties list when intialised
        self.items = []
    }
    
    public func add(item: String){
        //adds an item to the list
        self.items.append(item)
    }
    
    public func getItem(atIndex: Int) -> String {
        //returns an item from the list
        return self.items[atIndex]
    }
    
    public var count:Int {
        //counts the items in the list
        get {
            return self.items.count
        }
    }
}
