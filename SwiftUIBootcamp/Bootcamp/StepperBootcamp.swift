//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 17/05/23.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue:Int = 0
    
    var body: some View {
        Stepper("Items:\(stepperValue)", value: $stepperValue)
            .padding(50)
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
