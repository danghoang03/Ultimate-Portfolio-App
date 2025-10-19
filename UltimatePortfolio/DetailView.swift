//
//  DetailView.swift
//  UltimatePortfolio
//
//  Created by Hoàng Minh Hải Đăng on 18/10/25.
//

import SwiftUI

struct DetailView: View {
    @Environment(DataController.self) var dataController
    
    var body: some View {
        VStack {
            if let selectedIssue = dataController.selectedIssue {
                IssueView(issue: selectedIssue)
            } else {
                NoIssueView()
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView()
}
