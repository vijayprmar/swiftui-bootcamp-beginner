//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 16/05/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate:Date = Date()
    
    var body: some View {
        DatePicker("Select Date", selection: $selectedDate)
            .padding()
            .datePickerStyle(
               // GraphicalDatePickerStyle()
                WheelDatePickerStyle()
            )
            
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
