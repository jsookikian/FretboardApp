//
//  Chords.swift
//  FretboardApp
//
//  Created by Jordan Sookikian on 3/15/16.
//  Copyright © 2016 Jordan Sookikian. All rights reserved.
//

import Foundation

public class Chords {
    
    private let music = Music()
    //Dictionary containing the corresponding position one shape for each root note
    private let positionOneShape: [String: String] =
        ["C":"C",
        "C♯": "A",
        "B♭": "A",
        "C♯/D♭": "A",
        "A♯/B♭": "A",
        "A": "A",
        "B": "A",
        "D♯": "A",
        "E♭": "A",
        "D♯/E♭": "A",
        "G": "G",
        "E": "E",
        "F": "E",
        "F♯": "E",
        "G♭": "E",
        "F♯/G♭": "E",
        "G♯": "E",
        "A♭": "E",
        "G♯/A♭": "E",
        "D": "D"
    ]
    
    public let chordShapes: [String: Int] = ["C": 0, "A": 1, "G": 2, "E": 3, "D": 4]
    
    //Number of strings for each chord shape
    private let numStringsForShape: [Int: Int] = [
        0: 5, 1: 5, 2: 6, 3: 6, 4: 4
    ]

    private func getPositionOneShape(root: String) -> Int {
       
        return chordShapes[positionOneShape[root]!]!
    }
    
    
    public func MajorTriad(root: String) -> [String] {
        let rootIndex = music.noteIndex[root]!
        let M3 = music.Intervals["M3"]!
        let m3 = music.Intervals["m2"]!
        var triad = [String]()
        triad.append(music.Notes[rootIndex].name)
        triad.append(music.Notes[rootIndex + M3].name)
        triad.append(music.Notes[rootIndex + M3 + m3].name)
        
        return triad
    }
    
    private func DShapeChord(triad: [String]) -> [String] {
        let rootNote = triad[0]
        let M3 = triad[1]
        let P5 = triad[2]
        
        var chord = [String]()
        chord.append(rootNote)
        chord.append(P5)
        chord.append(rootNote)
        chord.append(M3)
        
        return chord
    }
    
    private func EShapeChord(triad: [String]) -> [String] {
        let rootNote = triad[0]
        let M3 = triad[1]
        let P5 = triad[2]
        
        var chord = [String]()
        chord.append(rootNote)
        chord.append(P5)
        chord.append(rootNote)
        chord.append(M3)
        chord.append(P5)
        chord.append(rootNote)
        
        return chord
    }
    
    private func GShapeChord(triad: [String]) -> [String] {
        let rootNote = triad[0]
        let M3 = triad[1]
        let P5 = triad[2]
        
        var chord = [String]()
        chord.append(rootNote)
        chord.append(M3)
        chord.append(P5)
        chord.append(rootNote)
        chord.append(P5)
        chord.append(rootNote)
        
        return chord
    }
    
    private func AShapeChord(triad: [String]) -> [String] {
        let rootNote = triad[0]
        let M3 = triad[1]
        let P5 = triad[2]
        
        var chord = [String]()
        chord.append(rootNote)
        chord.append(P5)
        chord.append(rootNote)
        chord.append(M3)
        chord.append(P5)
        
        return chord
    }
    
    private func CShapeChord(triad: [String]) -> [String] {
        let rootNote = triad[0]
        let M3 = triad[1]
        let P5 = triad[2]
        
        var chord = [String]()

        chord.append(rootNote)
        chord.append(M3)
        chord.append(P5)
        chord.append(rootNote)
        chord.append(M3)
        
        return chord
    }
    
    public func GetPositionOneChord(root: String) -> [String] {
        let triad = MajorTriad(root)
        let shape = getPositionOneShape(root)
        //let numStrings = numStringsForShape[shape]!
        var chord: [String]
        
        if shape == 4 {
            chord = DShapeChord(triad)
        }
        else if shape == 3 {
            chord = EShapeChord(triad)
        }
        else if shape == 2 {
            chord = GShapeChord(triad)
        }
        else if shape == 1 {
            chord = AShapeChord(triad)
        }
        else {
            chord = CShapeChord(triad)
        }
 
        
        
        return chord
        
    }
    
    
    
    
    
    
    
}