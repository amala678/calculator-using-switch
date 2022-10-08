//
//  ViewController.swift
//  switchCalculator
//
//  Created by APPLE on 08/10/22.
//

import UIKit


class ViewController: UIViewController {
    
    
    var numberonscreen:Double=0
    var previousnumber:Double=0
    var performmathop=false
    var operation = 0
    
    
    
    
    @IBOutlet weak var calclabel: UILabel!
    
    
    @IBAction func operatorbtn(_ sender: UIButton) {
        if calclabel.text != "" {
            
            switch sender.tag{
            case 15:
                
                     switch operation{
                     case 11:
                         calclabel.text = String(previousnumber+numberonscreen)
                     case 12:
                         calclabel.text = String(previousnumber-numberonscreen)
                     case 13:
                         calclabel.text = String(previousnumber/numberonscreen)
                     default:
                         calclabel.text = String(previousnumber*numberonscreen)
                     
                 }
            case 16:
                calclabel.text=""
                previousnumber=0
                numberonscreen=0
                operation=0
            default:
                    previousnumber=Double(calclabel.text!)!
                
                    switch sender.tag{
                    case 11:
                        calclabel.text = "+"
                    case 12:
                        calclabel.text = "-"
                    case 13:
                        calclabel.text = "/"
                    default:
                        calclabel.text = "*"
                    
                    }
                    operation=sender.tag
                    performmathop=true
        
            }
        
                
      }
        
    }
    
    
    @IBAction func operandbtn(_ sender: UIButton) {
        switch performmathop{
        case true:
            calclabel.text=String(sender.tag-1)
            numberonscreen=Double(calclabel.text!)!
            performmathop=false
        default:
            calclabel.text = calclabel.text! + String(sender.tag-1)
            numberonscreen=Double(calclabel.text!)!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

