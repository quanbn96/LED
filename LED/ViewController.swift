//
//  ViewController.swift
//  LED
//
//  Created by Quan on 6/20/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var textfield: UITextField!
    var n: Int!
    var _margin: CGFloat = 62
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textfield.delegate = self

    }
    
    
    @IBAction func action_draw(sender: AnyObject) {
        n = Int(textfield.text!)
        drawRowOfBall()
    }
    
    func drawRowOfBall() {
        for indexHang in 0..<n {
            for indexCot in 0..<n {
                let image = UIImage(named: "green")
                let ball = UIImageView(image: image)
                ball.center = CGPointMake(_margin + CGFloat(indexHang) * spaceBetweenBallRow(),_margin + CGFloat(indexCot) * spaceBetweenBallCol())
                self.view.addSubview(ball)
            }
            
        }
    }
    
    func spaceBetweenBallRow() -> CGFloat {
        let space = (self.view.bounds.size.width - 2 * _margin)/CGFloat(n - 1)
        return space
    }
    
    func spaceBetweenBallCol() -> CGFloat {
        let space = (self.view.bounds.size.height - 2 * _margin)/CGFloat(n - 1)
        return space
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

}