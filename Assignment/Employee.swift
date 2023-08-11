//
//  EmployeeData.swift
//  Assignment
//
//  Created by Uma Jagdish Patil on 11/08/23.
//

import Foundation
import SwiftUI

struct Employee: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var email: String
    var hireDate: String
    var orginzation: String
    
    private var imageName: String
    
    var image: Image{
        Image(imageName)
    }
}
