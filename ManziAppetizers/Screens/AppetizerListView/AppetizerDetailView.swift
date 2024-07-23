//
//  AppetizerDetailView.swift
//  ManziAppetizers
//
//  Created by Christian Manzaraz on 23/07/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    
    var body: some View {
        VStack {
            Image(.asianFlankSteak)
                .resizable()
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
            }
            
            HStack (spacing: 40) {
                VStack (spacing: 5) {
                    Text("Calories")
                        .bold()
                        .font(.caption)
                        
                    Text("\(appetizer.calories)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                VStack (spacing: 5) {
                    Text("Cabrs")
                        .bold()
                        .font(.caption)
                        
                    Text("\(appetizer.carbs) ")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                VStack (spacing: 5) {
                    Text("Protein")
                        .bold()
                        .font(.caption)
                        
                    Text("\(appetizer.protein)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                
            }

            Spacer()

            Button {
                print("Tapped")
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundStyle(.white)
                    .background(Color.brandPrimary)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.bottom, 30)
            
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(Button {
            print("Dismiss8")
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundStyle(.black)
            }
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}
