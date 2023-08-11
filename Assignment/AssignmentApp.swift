//
//  AssignmentApp.swift
//  Assignment
//
//  Created by Uma Jagdish Patil on 11/08/23.
//

import SwiftUI

@main
struct AssignmentApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
