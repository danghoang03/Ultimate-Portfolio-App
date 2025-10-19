//
//  NoIssueView.swift
//  UltimatePortfolio
//
//  Created by Hoàng Minh Hải Đăng on 19/10/25.
//

import SwiftUI

struct NoIssueView: View {
    @Environment(DataController.self) var dataController
    
    var body: some View {
        Text("No Issue Selected")
            .font(.title)
            .foregroundStyle(.secondary)
        
        Button("New Issue") {
            
        }
    }
}

#Preview {
    NoIssueView()
}
