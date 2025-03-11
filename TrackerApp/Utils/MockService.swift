//
//  MockService.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 17.02.2025.
//

import Foundation
class MockTransactionService{
    
    static var transactionData : TransactionModel = TransactionModel(
        id: 1,
        date: "01/02/2025",
        institution: "Bank 1",
        account: "Account 1",
        merchant: "Merchant 1",
        amount: Double.random(in: 10...500),
        categoryId: Int.random(in: 1...5),
        category: ["Food", "Transport", "Shopping", "Bills", "Entertainment"].randomElement()!,
        isPending: Bool.random(),
        isTransfer: Bool.random(),
        isExpense: Bool.random(),
        isEdited: false,
        type: Bool.random() ? TransactionType.debit.rawValue : TransactionType.credit.rawValue
    )
    
    static var transactions : [TransactionModel] = [TransactionModel](repeating: transactionData, count: 10)
}
