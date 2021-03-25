//
//  ItemDetail.swift
//  iDine
//
//  Created by 李博 on 2021/3/25.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    let item: MenuItem
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage).resizable().scaledToFit()
                Text("Photo: \(item.photoCredit)").padding(4).background(Color.black).font(.caption).foregroundColor(.white).offset(x: -5, y: -5)
            }
            Text(item.description).padding()
            Spacer()
        }.navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        Button("Order This") {
            order.add(item: item)
        }.font(.headline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(Order())
        }
    }
}
