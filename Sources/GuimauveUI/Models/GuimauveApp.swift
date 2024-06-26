//
//  GuimauveApp.swift
//  
//
//  Created by Nathan Fallet on 28/01/2022.
//

import Foundation

public protocol GuimauveApp {
    
    var displayName: String { get }
    var description: String { get }
    var icon: String { get }
    var url: String { get }
    
}