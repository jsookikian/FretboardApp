//
//  ViewController.swift
//  FretboardApp
//
//  Created by Jordan Sookikian on 3/15/16.
//  Copyright © 2016 Jordan Sookikian. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    @IBOutlet weak var chordPicker: UIPickerView!
    
    let pickerDataSource = ["A", "A♯/B♭", "B", "C", "C♯/D♭",
        "D",
        "D♯/E♭",
        "E",
        "F",
        "F♯/G♭",
        "G",
        "G♯/A♭"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.chordPicker.dataSource = self
        self.chordPicker.delegate = self
    }

    let scale = Scales()
    let chord = Chords()
    
    @IBOutlet weak var chordDisplay: UILabel!

    @IBOutlet weak var ChordNames: UILabel!
    
    

  
    
    
    func outPutChord(root: String) {
        let newChord = chord.GetPositionOneChord(root)
        chordDisplay.text! = ""
        for note in newChord {
            chordDisplay.text! += note + " "
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        outPutChord(pickerDataSource[row])
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
}

