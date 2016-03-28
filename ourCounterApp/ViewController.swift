//
//  ViewController.swift
//  ourCounterApp
//
//  Created by benjaminlo on 2015/11/10.
//  Copyright © 2015年 BAD Games (Benjamin Lo). All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    // print every combination of ABC
    @IBOutlet weak  var _comboTextView: UITextView!
    @IBOutlet       var _outputLabel: UILabel!
                    var _currentCount = 0
    
    let combinationsArray: [String] = ["A", "B", "C"]
    var outputCombinationsArray = Array<String>()
    
    /**
     * Initialization
     */
    override func viewDidLoad()
    {
        super.viewDidLoad()
        printCombinations()
    }
    
    
    /**
     * Print every combination of ABC
     */
    func printCombinations()
    {
        var str: String = ""
        for letter in combinationsArray {
            for nextLetter in combinationsArray {
                for nextNextLetter in combinationsArray {
                    str += (letter + nextLetter + nextNextLetter + "\n")
                }
            }
        }
        _comboTextView.text = str
    }

    
    /**
     * Memory warning
     */
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    /**
     * Start counting
     */
    @IBAction func addOneButton(sender: UIButton)
    {
        _currentCount++
        _outputLabel.text = "クリック回数は：\(_currentCount)"
        _outputLabel.textColor = UIColor.redColor()
    }
}

