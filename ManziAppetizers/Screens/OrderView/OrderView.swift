//8
//  OrderView.swift
//  ManziAppetizers
//
//  Created by Christian Manzaraz on 22/07/2024.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order saved")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\nPlease add an appetizer.")
                }
            }
            .navigationTitle("📋 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
    
}

#Preview {
    OrderView()
}
