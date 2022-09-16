//
//  ViewController.swift
//  Right on target
//
//  Created by ALEKSEY SUSLOV on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    var number: Int = 0 // загаданное число
    var round: Int = 1  // раунд
    var points: Int = 0 // сумма очков за раунд

    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        // генерируем случайное число
        number = Int.random(in: 1...50)
        
        // устанавливаем загаданное число в метку
        label.text = String(self.number)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    @IBAction func checkNumber() {
        let chooseNumber = Int(slider.value)
        
        if number == chooseNumber {
            points += 50
        } else if number > chooseNumber {
            points += 50 - number + chooseNumber
        } else {
            points += 50 - chooseNumber + number
        }
        
        round += 1
        number = Int.random(in: 1...50)
        
        if round == 6 {
            let alert = UIAlertController(title: "Игра окончена",
                                          message: "Вы заработали \(points) очков",
                                          preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Начать заново",
                                            style: .default,
                                            handler: nil)
            alert.addAction(alertAction)
            
            present(alert, animated: true)
            round = 0
            points = 0
            number = 0
        }
        
        label.text = String(number)
    }
    
}

