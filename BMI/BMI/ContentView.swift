//
//  ContentView.swift
//  BMI
//
//  Created by Jamal Al-kandari on 15/08/2022.
//

import SwiftUI

struct ContentView: View { // contant view -->
 
    @State var height : Double = 0
    @State var weight : Double = 0
    @State var result : String = ""
    
    let grlayer = CAGradientLayer()
  



    var body: some View { // body -->
       
        ZStack{ // Zstack -->
            
           Color(#colorLiteral(red: 0.04302322119, green: 0.06334771216, blue: 0.1963565052, alpha: 1))
                .ignoresSafeArea()
            
            VStack{ // Vstack -->
                
               
                
                
                VStack{ // Slider stack -->
                    
                    Text("Height\n\(height, specifier: "%0.00f")\t cm")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                    Slider(value: $height, in: 0...300, step: 1.0)
                        .padding()
                    
                }
                .background(Color.white.opacity(0.05))
                .cornerRadius(20)
                .padding()
                // Slider stack <--
                
              
              
                
                VStack{ // Slider stack -->
                    
                    Text("Weight\n\(weight, specifier: "%.0f")\t kg")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                    Slider(value: $weight, in: 1...300, step: 1.0)
                        .padding()
                    
                }
                .background(Color.white.opacity(0.05))
                .cornerRadius(20)
                .padding()
                // Slider stack <--
                
                
                HStack{ // Hstack Button -->
                     
                    Button("Calculate") {
                        calculate(number1: Int(weight), number2: Int(height))
        
                        
                    }
                    .padding()
                    .font(.system(size: 30))
                        .background(Color.red.opacity(0.4))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    Button  {
                        height = 0
                        weight = 0
                        result = ""
                    } label: {
                            Text("Reset")
                            .padding()
                            .font(.system(size: 30))
                                .background(Color.red.opacity(0.4))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                    }

                    
                   
                    
                    
                } // Hstack Button -->
                
                Text("\(result)")
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                
                
                
            } // Vstack <--
            
        }
        // Zstack <--
        
        
        
    } // body <--
    
    
    func calculate (number1 : Int, number2 : Int) { // func -->
        let bmi = (weight  / height  / height ) * 10000

        if (bmi > 25)
        {
            result = "Your bmi is \(bmi) therefore you are overweight"
        }
        else if (bmi >= 18.5 && bmi < 25)
        {
            result = "Your bmi is \(bmi) therefore you are of normal weight"
        }
        else
        {
            result = "Your bmi is \(bmi) therefore you are underweight"
        }
        
     } // func <--
    
    
} // contant view <--

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        ContentView()
    }
}
