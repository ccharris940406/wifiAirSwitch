//
//  socketConnection.swift
//  airSwitch
//
//  Created by Carlos Harris on 12/16/19.
//  Copyright © 2019 Carlos Harris. All rights reserved.
//

import Foundation

class socketConnection{
    var host: String
    var port: Int
    var socketId: Int = 0
    
    init(host: String, port: Int) {
        self.host = host
        self.port = port
        self.cretateSocket()
    }
    
    func cretateSocket(){
        self.socketId = Int(socket(PF_INET, SOCK_STREAM, 0))
    }
    
    func setState(data: String){
        
    }
    
    func getState(){
        
    }
    
}
