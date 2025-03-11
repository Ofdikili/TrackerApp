//
//  TransactionViewModel.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 17.02.2025.
//

import Foundation
import Combine
final class TransactionViewModel: ObservableObject {
    @Published var transactions: [TransactionModel] = []
    private var cancellables = Set<AnyCancellable>()  
    
    init() {
        getTransactions()
    }
    
    func getTransactions() {
        let urlString = "https://designcode.io/data/transaction.json"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { (data, response) -> Data in
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: [TransactionModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let err):
                    print("Error: \(err.localizedDescription)")
                case .finished:
                    print("Success")
                }
            }, receiveValue: { [weak self] result in
                self?.transactions = result
            })
            .store(in: &cancellables)
    }
}
