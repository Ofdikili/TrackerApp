//
//  TrackerAppApp.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 16.02.2025.
//

import SwiftUI

@main
struct TrackerAppApp: App {
    @StateObject var transactionVm = TransactionViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(transactionVm)
        }
    }
}
