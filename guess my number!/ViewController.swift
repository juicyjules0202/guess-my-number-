//
//  ViewController.swift
//  guess my number!
//
//  Created by dogeFatBoii on 29/10/2018.
//  Copyright © 2018 dogeFatBoii. All rights reserved.
//

import UIKit
    //variables and shitee
    var minimumGuess = 1
    var maximumGuess = 100
    var guess = 50
    var answerToRound = Int(arc4random_uniform(100)) + 1
    var guessesLeft = 7
    var originalGuesses = 7
class ViewController: UIViewController {
    //defining UI
    
    @IBOutlet weak var btnRESET: UIButton!
    @IBOutlet weak var lblGuesses: UILabel!
    @IBOutlet weak var lblMain: UILabel!
    @IBOutlet weak var lblMin: UILabel!
    @IBOutlet weak var lblMax: UILabel!
    @IBOutlet weak var lblGuess: UILabel!
    @IBOutlet weak var btnConfirmation: UIButton!
    @IBOutlet weak var sliderForNumber: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerToRound = Int(arc4random_uniform(100)) + 1
        sliderForNumber.minimumValue = Float(Int(minimumGuess))
        sliderForNumber.maximumValue = Float(Int(maximumGuess))
        lblMain.text = "Guess the number!"
        lblGuess.text = "your guess is:\(guess)"
        lblMax.text = "\(maximumGuess)"
        lblMin.text = "\(minimumGuess)"
        print(answerToRound)
        lblGuesses.text = "you have \(guessesLeft) guesses left!"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

    @IBAction func actReset(_ sender: Any) {
        minimumGuess = 1
        maximumGuess = 100
        guessesLeft = originalGuesses
        sliderForNumber.minimumValue = Float(Int(minimumGuess))
        sliderForNumber.maximumValue = Float(Int(maximumGuess))
        lblMain.text = "Dont you get bored?"
        lblGuess.text = "your guess is:\(guess)"
        lblMax.text = "\(maximumGuess)"
        lblMin.text = "\(minimumGuess)"
        print(answerToRound)
        lblGuesses.text = "you have \(guessesLeft) guesses left!"
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        guess = Int(sender.value)
        lblGuess.text = "your guess is:\(guess)"
    }
    func commonFiles() {
        if guessesLeft == 2 {
            lblMain.text = "last chance left!"
        } else if guessesLeft == 1{
            if guess == answerToRound{
                lblMain.text = "near miss bro"
            }else{
            lblMain.text = "you died apparently ;-;"
            }
        }
        guessesLeft -= 1
        sliderForNumber.minimumValue = Float(minimumGuess)
        sliderForNumber.maximumValue = Float(maximumGuess)
        lblGuesses.text = "you have \(guessesLeft) guesses left!"
    }
    @IBAction func executeGuess(_ sender: Any) {
        if minimumGuess != maximumGuess && guessesLeft != 0{
            if guess == answerToRound{
                lblMain.text = "you won in \(originalGuesses - guessesLeft + 1) guesses!"
            } else if guess < answerToRound{
                lblMain.text = "No, not yet there..."
                minimumGuess = guess + 1
            } else {
                lblMain.text = "whoa there where y' goin'"
                maximumGuess = guess - 1
            }
            commonFiles()
        }else{
            lblMain.text = "the round is over :P"
            lblGuesses.text = "press reset already"
        }
    }
    

}

