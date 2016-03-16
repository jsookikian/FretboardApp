//
//  Music.swift
//  FretboardApp
//
//  Created by Jordan Sookikian on 3/15/16.
//  Copyright © 2016 Jordan Sookikian. All rights reserved.
//

import Foundation


public struct Music {
    public let noteIndex: [String: Int] = [
        "A": 0,
        "A♯/B♭": 1,
        "B": 2,
        "C": 3,
        "C♯/D♭":4,
        "D":5,
        "D♯/E♭": 6,
        "E": 7,
        "F":8,
        "F♯/G♭": 9,
        "G": 10,
        "G♯/A♭": 11
    ]
    
    public let Degrees: [String: Int] = ["I": 0, "II": 2, "III": 4, "IV": 5, "V": 7, "VI": 9, "VII": 11]
    
    public let Accidentals: [String: Int] = ["♭": -1, "♯": +1, "𝄫": -2, "𝄪": +2]
    
    public let Intervals: [String: Int] = [
        "m2": 1,
        "M2": 2,
        "m3": 3,
        "M3": 4,
        "P4": 5,
        "A4": 6,
        "d5": 6,
        "P5": 7,
        "A5": 8,
        "m6": 8,
        "M6": 9,
        "d7": 9,
        "m7": 10,
        "M7": 11,
        "A7": 12,
        "P8": 12,
    ]
    
    public let Notes: [Note] = [
        Note(name: "A", octave: 0, frequency: 27.50),
        Note(name: "A♯/B♭", octave: 0, frequency: 29.14),
        Note(name: "B", octave: 0, frequency: 30.87),
        
        Note(name: "C", octave: 1, frequency: 32.70),
        Note(name: "C♯/D♭",octave: 1, frequency: 34.65),
        Note(name: "D", octave: 1, frequency: 36.71),
        Note(name: "D♯/E♭", octave: 1, frequency: 38.89),
        Note(name: "E", octave: 1, frequency: 41.20),
        Note(name: "F", octave: 1, frequency: 43.65),
        Note(name: "F♯/G♭", octave: 1, frequency: 46.25),
        Note(name: "G", octave: 1, frequency: 49.00),
        Note(name: "G♯/A♭", octave: 1, frequency: 51.91),
        Note(name: "A", octave: 1, frequency: 55.00),
        Note(name: "A♯/B♭", octave: 1, frequency: 58.27),
        Note(name: "B", octave: 1, frequency: 61.74),
        
        Note(name: "C", octave: 2, frequency: 65.41),
        Note(name: "C♯/D♭", octave: 2, frequency: 69.30),
        Note(name: "D", octave: 2, frequency: 73.42),
        Note(name: "D♯/E♭", octave: 2, frequency: 77.48),
        Note(name: "E", octave: 2, frequency: 82.41),
        Note(name: "F", octave: 2, frequency: 87.31),
        Note(name: "F♯/G♭", octave: 2, frequency: 92.50),
        Note(name: "G", octave: 2, frequency: 98.00),
        Note(name: "G♯/A♭", octave: 2, frequency: 103.83),
        Note(name: "A", octave: 2, frequency: 110.00),
        Note(name: "A♯/B♭", octave: 2, frequency: 116.54),
        Note(name: "B", octave: 2, frequency: 123.47),
        
        Note(name: "C", octave: 3, frequency: 130.81),
        Note(name: "C♯/D♭", octave: 3, frequency: 138.59),
        Note(name: "D", octave: 3, frequency: 146.83),
        Note(name: "D♯/E♭", octave: 3, frequency: 155.56),
        Note(name: "E", octave: 3, frequency: 164.81),
        Note(name: "F", octave: 3, frequency: 174.61),
        Note(name: "F♯/G♭", octave: 3, frequency: 185.00),
        Note(name: "G", octave: 3, frequency: 196.00),
        Note(name: "G♯/A♭", octave: 3, frequency: 207.65),
        Note(name: "A", octave: 3, frequency: 220.00),
        Note(name: "A♯/B♭", octave: 3, frequency: 233.08),
        Note(name: "B", octave: 3, frequency: 246.94),
        
        Note(name: "C", octave: 4, frequency: 261.61),
        Note(name: "C♯/D♭", octave: 4, frequency: 277.18),
        Note(name: "D", octave: 4, frequency: 293.66),
        Note(name: "D♯/E♭", octave: 4, frequency: 311.13),
        Note(name: "E", octave: 4, frequency: 329.63),
        Note(name: "F", octave: 4, frequency: 349.23),
        Note(name: "F♯/G♭", octave: 4, frequency: 369.99),
        Note(name: "G", octave: 4, frequency: 392.00),
        Note(name: "G♯/A♭", octave: 4, frequency: 415.30),
        Note(name: "A", octave: 4, frequency: 440.00),
        Note(name: "A♯/B♭", octave: 4, frequency: 466.16),
        Note(name: "B", octave: 4, frequency: 493.88),
        
        Note(name: "C", octave: 5, frequency: 523.25),
        Note(name: "C♯/D♭", octave: 5, frequency: 554.37),
        Note(name: "D", octave: 5, frequency: 587.33),
        Note(name: "D♯/E♭", octave: 5, frequency: 622.25),
        Note(name: "E", octave: 5, frequency: 659.25),
        Note(name: "F", octave: 5, frequency: 698.46),
        Note(name: "F♯/G♭", octave: 5, frequency: 739.99),
        Note(name: "G", octave: 5, frequency: 783.99),
        Note(name: "G♯/A♭", octave: 5, frequency: 830.61),
        Note(name: "A", octave: 5, frequency: 880.00),
        Note(name: "A♯/B♭", octave: 5, frequency: 932.33),
        Note(name: "B", octave: 5, frequency: 987.77),
        
        Note(name: "C", octave: 6, frequency: 1046.50),
        Note(name: "C♯/D♭", octave: 6, frequency: 1108.73),
        Note(name: "D", octave: 6, frequency: 1108.73),
        Note(name: "D♯/E♭", octave: 6, frequency: 1244.51),
        Note(name: "E", octave: 6, frequency: 1318.51),
        Note(name: "F", octave: 6, frequency: 1396.91),
        Note(name: "F♯/G♭", octave: 6, frequency: 1479.98),
        Note(name: "G", octave: 6, frequency: 1567.98),
        Note(name: "G♯/A♭", octave: 6, frequency: 1661.22),
        Note(name: "A", octave: 6, frequency: 1760.00),
        Note(name: "A♯/B♭", octave: 6, frequency: 1864.66),
        Note(name: "B", octave: 6, frequency: 1975.53),
        
        Note(name: "C", octave: 7, frequency: 2093.00),
        Note(name: "C♯/D♭", octave: 7, frequency: 2217.46),
        Note(name: "D", octave: 7, frequency: 2349.32),
        Note(name: "D♯/E♭", octave: 7, frequency: 2389.02),
        Note(name: "E", octave: 7, frequency: 2637.02),
        Note(name: "F", octave: 7, frequency: 2793.83),
        Note(name: "F♯/G♭", octave: 7, frequency: 2959.96),
        Note(name: "G", octave: 7, frequency: 3135.96),
        Note(name: "G♯/A♭", octave: 7, frequency: 3322.44),
        Note(name: "A", octave: 7, frequency: 320.00),
        Note(name: "A♯/B♭", octave: 7, frequency: 3729.31),
        Note(name: "B", octave: 7, frequency: 3951.07),
        
        Note(name: "C", octave: 8, frequency: 4186.01)
    ]



}