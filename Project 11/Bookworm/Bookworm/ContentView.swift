//
//  ContentView.swift
//  Bookworm
//
//  Created by Reema on 19/08/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//  How to combine Core Data and SwiftUI

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Student.entity(), sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
            VStack {
                List {
                    ForEach(students, id: \.id) { student in
                        Text(student.name ?? "Unknown")
                    }
                }
                Button("Add") {
                    let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                    let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]

                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!
                    
                    let student = Student(context: self.moc)
                    student.id = UUID()
                    student.name = "\(chosenFirstName) \(chosenLastName)"
                    
                    try? self.moc.save()
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
