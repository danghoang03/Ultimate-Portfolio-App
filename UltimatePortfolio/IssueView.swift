//
//  IssueView.swift
//  UltimatePortfolio
//
//  Created by Hoàng Minh Hải Đăng on 19/10/25.
//

import SwiftUI
import CoreData

struct IssueView: View {
    @ObservedObject var issue: Issue
    
    var body: some View {
        Text("Issue View")
    }
}

#Preview {
    IssueView(issue: .example)
}
