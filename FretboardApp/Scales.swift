//
//  Scales.swift
//  FretboardApp
//
//  Created by Jordan Sookikian on 3/15/16.
//  Copyright © 2016 Jordan Sookikian. All rights reserved.
//

import Foundation



public class Scales {
    
    private let music = Music()
    
    private func generateMajorScale(root: String, offset: Int) -> [Note] {
        var noteNdx = music.noteIndex[root]!
        var scale = [Note]()
        
        while noteNdx < (89 - 11 - offset) {
            let Tonic = music.Notes[noteNdx + music.Degrees["I"]! + offset]
            let Supertonic = music.Notes[noteNdx + music.Degrees["II"]! + offset]
            let Mediant = music.Notes[noteNdx + music.Degrees["III"]! + offset]
            let Subdominant = music.Notes[noteNdx + music.Degrees["IV"]! + offset]
            let Dominant = music.Notes[noteNdx + music.Degrees["V"]! + offset]
            let Submediant = music.Notes[noteNdx + music.Degrees["VI"]! + offset]
            let Leading = music.Notes[noteNdx + music.Degrees["VII"]! + offset]
            
            scale.append(Tonic)
            scale.append(Supertonic)
            scale.append(Mediant)
            scale.append(Subdominant)
            scale.append(Dominant)
            scale.append(Submediant)
            scale.append(Leading)
            noteNdx += 12
        }
        
        return scale
    }
    
    private func generatePentatonicScale(root: String, offset: Int) -> [Note] {
        var noteNdx = music.noteIndex[root]!
        var scale = [Note]()
        
        while noteNdx < (89 - 11 - offset) {
            let Tonic = music.Notes[noteNdx + music.Degrees["I"]! + offset]
            let Supertonic = music.Notes[noteNdx + music.Degrees["II"]! + offset]
            let Mediant = music.Notes[noteNdx + music.Degrees["III"]! + offset]
            let Dominant = music.Notes[noteNdx + music.Degrees["V"]! + offset]
            let Submediant = music.Notes[noteNdx + music.Degrees["VI"]! + offset]
            
            scale.append(Tonic)
            scale.append(Supertonic)
            scale.append(Mediant)
            scale.append(Dominant)
            scale.append(Submediant)
            noteNdx += 12
        }
        
        return scale
    }
    
    public func MajorPentatonicScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["I"]!)
    }
    
    public func MinorPentatonicScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["III"]! + music.Accidentals["♭"]!)
    }
    
    public func IonianScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["I"]!)
    }
    
    public func DorianScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["II"]!)
    }
    
    public func PhrygianScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["III"]!)
    }
    
    public func LydianScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["IV"]!)
    }
    
    public func MixolydianScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["V"]!)
    }
    
    
    public func AeolianScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["VI"]!)
    }
    
    
    func LocrianScale(root: String) -> [Note] {
        return generateMajorScale(root, offset: music.Degrees["VII"]!)
    }
    
}