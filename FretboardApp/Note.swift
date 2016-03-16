//
//  Note.swift
//  FretboardApp
//
//  Created by Jordan Sookikian on 3/15/16.
//  Copyright © 2016 Jordan Sookikian. All rights reserved.
//

import Foundation

public class Note: CustomStringConvertible {
    var name: String
    var octave: Int
    var frequency: Double
    
    init(name: String, octave: Int, frequency: Double) {
        self.name = name
        self.octave = octave
        self.frequency = frequency
        
    }
    
    public var description: String {
        return name + " \(octave)"
    }
    
}
