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
    
    // Функция получения текущего времени
    func takeTime() -> String {
        let calendar = Calendar.current
        let date = Date()
        let curentTime = calendar.dateComponents([.month, .day, .hour, .minute, .second,], from: date)
        
        if let day = curentTime.day, let mounth = curentTime.month, let hour = curentTime.hour, let minute = curentTime.minute, let second = curentTime.second {
            
            return "[\(day).\(mounth) \(hour):\(minute):\(second)]"
        }
        
        return "Дата не определенна"
    }
   
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
        let time = takeTime()
        historyLable.text += "\n\n\(time): значение сброшено"
    
    }
    
    @IBAction func plusButtonTap(_ sender: Any) {
        
        counter += 1
        lable.text = "Значение счётчика: \(counter)"
        let time = takeTime()
        historyLable.text += "\n\n\(time): значение изменено на +1"
        
    }
    @IBAction func minesButtonTap(_ sender: Any) {
        
        counter -= 1
        if counter < 0 {
            counter = 0
            lable.text = "Значение счётчика: \(counter)"
            let time = takeTime()
            historyLable.text += "\n\n\(time): попытка уменьшить значение счётчика ниже 0"
        } else {
            lable.text = "Значение счётчика: \(counter)"
            let time = takeTime()
            historyLable.text += "\n\n\(time): значение изменено на -1" }
        
    }
}

