//
//  ContentView.swift
//  Assignment
//
//  Created by Uma Jagdish Patil on 11/08/23.
//

import SwiftUI

let orginazationImages: [Image] = [Image("citi"),Image("maveric"),Image("fiinu")]

struct ContentView: View {

    @State private var currentPage = 0
    @EnvironmentObject var modeldata: ModelData
    @State private var searchText = ""
    var employees: [Employee] { modeldata.employees }
    @State var filterData: [Employee] = []
    var body: some View {
        NavigationView {
            Form {
                VStack{
                    TabView(selection: $currentPage) {
                        ForEach((0..<3), id: \.self) { index in
                            FeatureCard(orgImages: orginazationImages[index])
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 300)
                    .border(Color.gray)
                    .onChange(of: currentPage){
                        value in
                        filterData = getEmployeeDetails(index: value)
                    }
                    Spacer()
                    List {
                        ForEach(filterData) { employee in
                            EmployeeRow(employee: employee)
                        }
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Orginazations")
        }
        .onAppear(){
            filterData = getEmployeeDetails(index: 0)
        }
    }
    
    func getEmployeeDetails(index: Int) -> [Employee]{
        var filteredEmployee: [Employee] = []
        switch index {
        case 0:
            filteredEmployee = employees.filter{ emp in
                emp.orginzation == "Citi"}
        case 1:
            filteredEmployee = employees.filter{ emp in
                emp.orginzation == "Maveric"}
        case 2:
            filteredEmployee = employees.filter{ emp in
                emp.orginzation == "Fiinu"}
        default:
            filteredEmployee = employees.filter{ emp in
                emp.orginzation == "Citi"}
        }
        return filteredEmployee
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
