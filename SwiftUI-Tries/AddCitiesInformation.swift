//
//  AddCitiesInformation.swift
//  SwiftUI-Tries
//
//  Created by Aaqib Raza on 19/01/2024.
//

import SwiftUI

struct AddCitiesInformation: View {
    @State private var cityTextInput: String = ""
    @State private var provinceTextInput: String = ""
    @State private var descriptionTextInput: String = ""
    @State private var isHoveredCityName: Bool = false
    @State private var isHoveredProvinceName: Bool = false
    @State private var isHoveredDescription: Bool = false
    var body: some View {
        
        VStack{
            
            TextField("City Name", text: $cityTextInput)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(isHoveredCityName ? Color.blue : Color.gray, lineWidth: 1)
                )
                .gesture(
                TapGesture()
                    .onEnded{ _ in
                        isHoveredCityName = true
                        isHoveredDescription = false
                        isHoveredProvinceName = false
                    }
                )
                .padding()
                       
            
            TextField("Province", text: $provinceTextInput)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(isHoveredProvinceName ? Color.blue : Color.gray, lineWidth: 1)
                            )
                            .gesture(
                            TapGesture()
                                .onEnded{ _ in
                                    isHoveredProvinceName = true
                                    isHoveredCityName = false
                                    isHoveredDescription = false
                                }
                            )
                            .padding()
            
            TextField("Description", text: $descriptionTextInput)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(isHoveredDescription ? Color.blue : Color.gray, lineWidth: 1)
                            )
                            .gesture(
                            TapGesture()
                                .onEnded{ _ in
                                    isHoveredProvinceName = false
                                    isHoveredCityName = false
                                    isHoveredDescription = true
                                }
                            )
                            .padding()
            
            Button(action: {
                        // Action to perform when the button is tapped
                        print("Button tapped!")
                    }) {
                        Text("Tap me")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
            
            
            Spacer()
                      
            
        }.navigationBarTitle(Text("Add City").font(.system(size: 22)).fontWeight(.bold), displayMode: .inline)
    }
}

#Preview {
    AddCitiesInformation()
}
