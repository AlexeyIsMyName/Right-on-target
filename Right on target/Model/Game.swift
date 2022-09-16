//
//  Game.swift
//  Right on target
//
//  Created by ALEKSEY SUSLOV on 17.09.2022.
//

import Foundation

protocol GameProtocol {
    // Количество заработанных очков
    var score: Int { get }
    
    // Загаданное значение
    var currentSecretValue: Int { get }
    
    // Проверяет, закончена ли игра
    var isGameEnded: Bool { get }
    
    // Начинает новую игру и сразу стартует первый раунд
    func restartGame()
    
    // Начинает новый раунд (обновляет загаданное число)
    func startNewRound()
    
    // Сравнивает переданное значение с загаданным и начисляет очки
    func calculateScore(with value: Int)
}
