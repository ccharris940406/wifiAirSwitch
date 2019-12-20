//
//  socketConnection.swift
//  airSwitch
//
//  Created by Carlos Harris on 12/16/19.
//  Copyright © 2019 Carlos Harris. All rights reserved.
//

import Foundation
import Network

class switchConnection{
    var networkConnection: NWConnection?
    var endpoint: NWEndpoint?
    
    
    init(host: String, port :UInt16) {
        self.endpoint = NWEndpoint.hostPort(host: NWEndpoint.Host(host), port:
            NWEndpoint.Port(rawValue: port)!)
        networkConnection = NWConnection(to: self.endpoint!, using: NWParameters.tcp)
        print("Created connection \(String(describing: self.networkConnection?.endpoint))")
    }
    
    func setState(data: String){
        
    }
    
    func getState(){
        
    }
    
    func sendSomeThing(){
        var test:String
        test = "airSwitch"
        networkConnection?.start(queue: DispatchQueue(label: "test"))
        networkConnection?.send(content: test.data(using: .ascii), isComplete: true,completion: .idempotent)
    }
    
    func closeConnection(){
        networkConnection?.cancel()
    }
    
}
