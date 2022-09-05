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
    var round: Int = 0 // раунд
    var points: Int = 0 // сумма очков за раунд

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkNumber() {
        if round != 0 {
            let chooseNumber = Int(slider.value)
            
            if number == chooseNumber {
                points += 50
            } else if number > chooseNumber {
                points += 50 - number + chooseNumber
            } else {
                points += 50 - chooseNumber + number
            }
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
        print(round)
        
    }
}

