//
//  CitiesDetailScreen.swift
//  SwiftUI-Tries
//
//  Created by Aaqib Raza on 17/01/2024.
//

import SwiftUI

struct CitiesDetailScreen: View {
    let weather: Weather
    var body: some View {
        
        
        ScrollView{
            VStack{
                
                AsyncImage(url: URL(string: weather.imageURL)) { image in
                    image.resizable()
                } placeholder: {
                    
                    ProgressView()
                    
                }
                .frame(width: .infinity, height: 300)
                .cornerRadius(8.0)
                
                VStack(alignment: .leading){
                    Text(weather.title)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text(weather.subTitle)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom, 5)
                
                    Text(weather.description)
                        .font(.title3)
                        .fontWeight(.regular)
                    
                    
                    Spacer()
                }
                
               
                
            }
            .navigationBarTitle(weather.title, displayMode: .inline)
            .padding()
        }
        

        
        
  
        
        
    }
}



#Preview {
    CitiesDetailScreen(weather: MockData.sampleCity)
}
