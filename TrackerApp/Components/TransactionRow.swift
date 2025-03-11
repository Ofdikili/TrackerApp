//
//  TransactionRow.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 17.02.2025.
//

import SwiftUI
import SwiftUIFontIcon			

struct TransactionRow: View {
    let transaction: TransactionModel
    var body: some View {	
        HStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.iconColor.opacity(0.1))
                .frame(width: 44,height: 44)
                .overlay{
                    FontIcon.text(.awesome5Solid(code:.icons),fontsize: 24,color: Color.textColor)
                }
            VStack(alignment: .leading) {
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                Text(transaction.dataParsed,format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Text(transaction.signedAmount,format: .currency(code: "USD"))

        }.padding(.horizontal,8)
        
    }
}

#Preview(traits:.sizeThatFitsLayout){
    var transaction = MockTransactionService.transactionData
    TransactionRow(transaction: transaction)
}
