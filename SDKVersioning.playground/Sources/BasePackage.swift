//
//  BasePackage.swift
//  
//
//  Created by Jason Dees on 2025/4/23.
//

public protocol BasePackage {
    
}
extension BasePackage{
    public static var name: String {
        get {
            String(describing: self)
        }
    }
}
