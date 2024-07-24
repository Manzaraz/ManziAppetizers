//
//  AppetizerDetailView.swift
//  ManziAppetizers
//
//  Created by Christian Manzaraz on 23/07/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
            } placeholder: {
                ZStack {
                    Image(.foodPlaceholder)
                        .resizable()
                    LoadingView()
                }
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 225)
                        
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
    
                HStack (spacing: 40) {
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                }
            }

            Spacer()

            Button {
                print("Tapped")
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
            
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, 
                        isShowingDetail: .constant(true))
}


struct NutritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack (spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
                
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
