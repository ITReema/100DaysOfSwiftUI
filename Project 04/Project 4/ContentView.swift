//
//  ContentView.swift
//  Project 4
//
//  Created by Reema on 01/07/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Text("BetterRest")
                .font(.largeTitle)
                .fontWeight(.black)
            Text("Go to bed by \(formattedBedtime)")
                .font(.title)
                .foregroundColor(afterBedtime ? .red : .green)
            Form {
                Section(header: Text("When do you want to wake up?")) {
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                        .datePickerStyle(WheelDatePickerStyle())
                }
                
                Section(header: Text("Desired amount of sleep")) {
                    Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                        Text("\(sleepAmount, specifier: "%g") hours")
                    }
                    .accessibility(value: Text("\(sleepAmount, specifier: "%g") hours"))
                }
                
                Section(header: Text("Daily coffee intake")) {
                    Stepper(value: $coffeeAmount, in: 0...20) {
                        if coffeeAmount == 1 {
                            Text("1 cup")
                        } else {
                            Text("\(coffeeAmount) cups")
                        }
                    }
                    .accessibility(value: Text("\(coffeeAmount) \(coffeeAmount == 1 ? "cup" : "cups")"))
                
                }
            }
            
        }
    }
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date()
    }
    
    private var bedtime: Date {
        let model = SleepCalculator()
        
        do {
            let prediction = try model.prediction(wake: timeInSeconds(wakeUp), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            return wakeUp - prediction.actualSleep
            
        } catch {
            return Date()
        }
    }
    
    private var formattedBedtime: String {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
        return formatter.string(from: bedtime)
    }
    
    private var afterBedtime: Bool {
        if timeInSeconds(wakeUp) < timeInSeconds(bedtime) {
            return timeInSeconds(bedtime) < timeInSeconds(Date())
        } else {
            return (timeInSeconds(Date()) > timeInSeconds(bedtime)) && (timeInSeconds(Date()) < timeInSeconds(wakeUp))
        }
    }
    
    private func timeInSeconds(_ date: Date) -> Double {
        let components = Calendar.current.dateComponents([.hour, .minute], from: date)
        let hour = (components.hour ?? 0) * 60 * 60
        let minute = (components.minute ?? 0) * 60
        
        return Double(hour + minute)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
