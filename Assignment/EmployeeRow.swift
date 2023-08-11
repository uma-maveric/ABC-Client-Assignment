//
//  EmployeeRow.swift
//  Assignment
//
//  Created by Uma Jagdish Patil on 11/08/23.
//

import SwiftUI

struct EmployeeRow: View {
    var employee: Employee
    var body: some View {
        HStack {
            employee.image
                .resizable()
                .frame(width: 80,height: 80)
            VStack(alignment: .leading) {
                Text(employee.name).bold()
                Text(employee.email)
                Text(employee.hireDate)
            }
        }
    }
}

struct EmployeeRow_Previews: PreviewProvider {
    static var employees = ModelData().employees
    static var previews: some View {
        Group {
            EmployeeRow(employee: employees[0])
            EmployeeRow(employee: employees[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
