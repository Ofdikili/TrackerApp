//
//  TransactionModel.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 16.02.2025.
//

import Foundation

struct TransactionModel : Identifiable{
    let id: Int
    let date: String
    let institution: String
    let account: String
    let merchant: String
    let amount: Double
    let categoryId: Int
    let category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    var type: TransactionType.RawValue
    
    // var dataParsed : Date = date.dateParsed()
    
    var dataParsed : Date{
        date.dateParsed()
    }
    
    var signedAmount : Double{
        return type == TransactionType.credit.rawValue ? amount : -amount 
    }
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}
