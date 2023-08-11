//
//  PageView.swift
//  Assignment
//
//  Created by Uma Jagdish Patil on 11/08/23.
//

import SwiftUI

struct PageView: View {
var employees: [Employee]
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            List {
                ForEach(employees) { employee in
                    EmployeeRow(employee: employee)
                }
            }.searchable(text: $searchText)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(employees: ModelData().employees)
    }
}
