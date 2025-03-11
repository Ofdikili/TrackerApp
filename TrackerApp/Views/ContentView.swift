//
//  ContentView.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 16.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:10){
                    Text("Overview")
                        .font(.title2)
                        .bold(true)
                    RecentTransactionListView()
                }.padding()
                    .frame(maxWidth:.infinity)
                
            }.background(Color.background)
             .navigationBarTitleDisplayMode(.inline)
             .toolbar{
                 ToolbarItem{
                     Image(systemName: "bell.badge")
                         .renderingMode(.original)
                 }
             }
        }.navigationViewStyle(.stack)
    }
        
}

#Preview {
    let transactionListVm: TransactionViewModel = {
        let vm=TransactionViewModel()
        vm.transactions = MockTransactionService.transactions
        return vm
    }()
    ContentView().environmentObject(transactionListVm)
}

