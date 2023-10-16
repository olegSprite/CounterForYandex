import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak private var button: UIButton!
    @IBOutlet weak private var lable: UILabel!
    @IBOutlet weak private var clearButton: UIButton!
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var minesButton: UIButton!
    @IBOutlet weak private var historyTextView: UITextView!
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func takeTime() -> String {
        let calendar = Calendar.current
        let date = Date()
        let curentTime = calendar.dateComponents([.month, .day, .hour, .minute, .second,], from: date)
        
        if let day = curentTime.day, let mounth = curentTime.month, let hour = curentTime.hour, let minute = curentTime.minute, let second = curentTime.second {
            
            return "[\(day).\(mounth) \(hour):\(minute):\(second)]"
        }
        
        return "Дата не определенна"
    }
    
    
    @IBAction private func buttonTap(_ sender: Any) {
        
        counter += 1
        lable.text = "Значение счётчика: \(counter)"
        
    }
    
    @IBAction private func clearCount(_ sender: Any) {
        
        counter = 0
        lable.text = "Значение счётчика: \(counter)"
        let time = takeTime()
        historyTextView.text += "\n\n\(time): значение сброшено"
        
    }
    
    @IBAction private func plusButtonTap(_ sender: Any) {
        
        counter += 1
        lable.text = "Значение счётчика: \(counter)"
        let time = takeTime()
        historyTextView.text += "\n\n\(time): значение изменено на +1"
        
    }
    @IBAction private func minesButtonTap(_ sender: Any) {
        
        counter -= 1
        if counter < 0 {
            counter = 0
            lable.text = "Значение счётчика: \(counter)"
            let time = takeTime()
            historyTextView.text += "\n\n\(time): попытка уменьшить значение счётчика ниже 0"
        } else {
            lable.text = "Значение счётчика: \(counter)"
            let time = takeTime()
            historyTextView.text += "\n\n\(time): значение изменено на -1" }
        
    }
}

