//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Michael  Douglas on 11/10/17.
//  Copyright © 2017 Michael Douglas. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    
    var converters: [Converter] = [Converter]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        converters = [
            Converter(label: "Fahrenheit to Celcius", inUnit: "°F", outUnit: "°C"),
            Converter(label: "Celcius to Fahrenheit", inUnit: "°C", outUnit: "°F"),
            Converter(label: "Miles to Kilometers", inUnit: "mi", outUnit: "km"),
            Converter(label: "Kilometers to Miles", inUnit: "km", outUnit: "mi")
        ]
        inputDisplay.textAlignment = NSTextAlignment.right
        outputDisplay.textAlignment = NSTextAlignment.right
         inputDisplay.text = converters[0].inUnit
        outputDisplay.text = converters[0].outUnit
    
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func converterButton(_ sender: UIButton) {
        let event = UIAlertController( title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        for converter in converters
        {
            event.addAction(UIAlertAction( title: converter.label, style: UIAlertActionStyle.default, handler: {
                (alertAction) -> Void in
                self.outputDisplay.text = converter.outUnit
                self.inputDisplay.text = converter.inUnit
                self.inputDisplay.textAlignment = NSTextAlignment.right
                self.outputDisplay.textAlignment = NSTextAlignment.right
            }))
        }
        
        event.addAction(UIAlertAction( title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        self.present(event, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
