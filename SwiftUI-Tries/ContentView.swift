//
//  ContentView.swift
//  SwiftUI-Tries
//
//  Created by Aaqib Raza on 16/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            List{
                
                
                ForEach(MockData.cities, id: \.self){ weather in
                    
                    
                    
                    
                    NavigationLink(
                        destination: CitiesDetailScreen(weather: weather)){
                            
                            listItemView(weather: weather)
                                .listRowInsets(EdgeInsets(top: 18, leading: 12, bottom: 18, trailing: 12))
                        }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Listing UI")
            
            
            .navigationBarItems(trailing: Button(action: {
            }){
                
                NavigationLink(
                    destination:AddCitiesInformation()){
                        
                        Image(systemName: "plus")
                            .resizable()
                            .padding(6)
                            .frame(width: 24, height: 24)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                        
                    }
                
                
                
                
                
                
                
            })
            //            .toolbar {
            //                 ToolbarItem(placement: .navigationBarTrailing) {
            //                     Menu(content: {
            //                         Text("Menu Item 1")
            //                         Text("Menu Item 2")
            //                          Text("Menu Item 3")
            //                     }, label: {Image(systemName: "info")})
            //                  }
            //              }
        }
    }
}

#Preview {
    ContentView()
}

struct listItemView: View {
    let weather: Weather
    var body: some View {
        HStack {
            
            AsyncImage(url: URL(string: weather.imageURL)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 180, height: 100)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(8.0)
            
            
            
            
            VStack{
                Text(weather.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 8)
                
                Text("78° Temperature")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
            }
            
            
            
        }.frame(maxWidth: .infinity,maxHeight: 200)
            .background(.blue)
            .cornerRadius(8.0)
    }
}
