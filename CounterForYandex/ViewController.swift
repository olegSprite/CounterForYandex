//
//  ViewController.swift
//  CounterForYandex
//
//  Created by Олег Спиридонов on 15.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minesButton: UIButton!
    @IBOutlet weak var historyLable: UITextView!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonTap(_ sender: Any) {
       
        counter += 1
        lable.text = "Значение счётчика: \(counter)"
        
    }
    
    @IBAction func clearCount(_ sender: Any) {
        
        counter = 0
        lable.text = "Значение счётчика: \(counter)"
    
    }
    
    @IBAction func plusButtonTap(_ sender: Any) {
        
        counter += 1
        lable.text = "Значение счётчика: \(counter)"
        
    }
    @IBAction func minesButtonTap(_ sender: Any) {
        
        counter -= 1
        if counter < 0 {
            counter = 0
        }
        lable.text = "Значение счётчика: \(counter)"
        
    }
}

