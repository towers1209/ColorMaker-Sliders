//
//  ViewController.swift
//  ColorMaker-Sliders
//
//  Created by Loreto E. Torres on 5/5/15.
//  Copyright (c) 2015 towers1209. All rights reserved.
//
//  The basic concept is adapted from the exercise app ColorMaker that uses three toggle 
//  switches for turning on or off the RGB color components.
//
//  So instead of simply a choice of 0 or 1 for the r, g, b color components, floating point
//  values are returned by the value property of each slider.  
//
//  Each floating point value is then converted to a CGFloat type using the following pattern:
//      let f: Float = 0.5
//      let cgf: CGFloat = CGFloat(f)

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func changeColorComponent(sender: AnyObject) {
        
        redValue.text = "\(self.redSlider.value)"
        greenValue.text = "\(self.greenSlider.value)"
        blueValue.text = "\(self.blueSlider.value)"
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
    }

}

