//
//  ViewController.swift
//  airSwitch
//
//  Created by Carlos Harris on 12/13/19.
//  Copyright © 2019 Carlos Harris. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    var state = true
    
    @IBAction func on_offControl(_ sender: UIButton) {
        
        print("the state is \(state)");
        
        if state == true {
            state = false
            sender.setTitle("Off", for: UIControl.State.normal)
            sender.backgroundColor = #colorLiteral(red: 0.8898770809, green: 0.5964024663, blue: 0.2226893902, alpha: 1)
        }
        else{
            state = true
            sender.setTitle("On", for: UIControl.State.normal)
            sender.backgroundColor = #colorLiteral(red: 0.8479966521, green: 0.8250616789, blue: 0.4791584611, alpha: 1)
        }
    }
    
    @IBAction func setConfigure(_ sender: UIButton) {
        
    }
}

