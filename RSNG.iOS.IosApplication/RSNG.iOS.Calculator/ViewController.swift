//
//  ViewController.swift
//  RSNG.IosApplication
//
//  Created by Nikolay Grydinin on 27.05.17.
//  Copyright © 2017 RSNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBOutlet weak var ButtonGetResult: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
 
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var ButtonPlus: UIButton!
    
    @IBOutlet weak var Button0: UIButton!
    var resultText:String = "";
    
    @IBOutlet weak var TextBoxResult: UITextField!
    
    func addNumberToResult(number: String){
        resultText += number;
        TextBoxResult.text = resultText;
    }
    
    @IBAction func OnButton1Pressed() {
        addNumberToResult(number: "1");
    }
    @IBAction func OnButton2Pressed() {
        addNumberToResult(number: "2");
        
    }
    @IBAction func OnButton3Pressed() {
        addNumberToResult(number: "3");
        
    }
    @IBAction func OnButton4Pressed() {
        addNumberToResult(number: "4");
        
    }
    @IBAction func OnButton5Pressed() {
        addNumberToResult(number: "5");
        
    }
    @IBAction func OnButton6Pressed() {
        addNumberToResult(number: "6");
    }
    @IBAction func OnButton7Pressed() {
        addNumberToResult(number: "7");
    }

    @IBAction func OnButton8Pressed() {
        addNumberToResult(number: "8");
        
    }
    @IBAction func OnButton9Pressed() {
        
        addNumberToResult(number: "9");
    }
    @IBAction func OnButton0Pressed() {
        
        addNumberToResult(number: "0");
    }
    @IBAction func OnButtonPlusPressed() {
        //ебанько
        let lastCharOfString:String = (String(resultText[resultText.index(before: resultText.endIndex)]))//resultText[resultText.endIndex]+"";//resultText.characters.last
        let plusSymbol:String = "+"
        if(lastCharOfString != plusSymbol)
        {
            addNumberToResult(number: plusSymbol);
        }
    }
    @IBAction func OnButtonGetResultPressed() {
        
        addNumberToResult(number: "=");
    }
}

