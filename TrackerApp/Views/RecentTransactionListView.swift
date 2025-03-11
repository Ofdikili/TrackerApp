//
//  RecentTransactionListView.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 17.02.2025.
//

import Foundation
import SwiftUI

struct RecentTransactionListView: View {
    @EnvironmentObject private var transactionVm: TransactionViewModel
    var body: some View {
        VStack{
            HStack{
                Text("Recent Transactions")
                Spacer()
                NavigationLink{} label: {
                    HStack{
                        Text("See All")

                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(Color.textColor)
                }
            }
            .padding(.top)
            ForEach(Array(transactionVm.transactions.prefix(5).enumerated()), id: \.element){
                index,transaction in
                TransactionRow(transaction: transaction)
                Divider().opacity(index == 4 ? 0 :1)
            }
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
        .shadow(color:Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
        
        
    }
}

#Preview {
    let transactionListVm: TransactionViewModel = {
        let vm=TransactionViewModel()
        vm.transactions = MockTransactionService.transactions
        return vm
    }()
    RecentTransactionListView().environmentObject(transactionListVm)
}
