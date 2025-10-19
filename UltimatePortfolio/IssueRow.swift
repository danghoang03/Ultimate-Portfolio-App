//
//  IssueRow.swift
//  UltimatePortfolio
//
//  Created by Hoàng Minh Hải Đăng on 19/10/25.
//

import SwiftUI

struct IssueRow: View {
    @Environment(DataController.self) var dataController
    @ObservedObject var issue: Issue
    
    var body: some View {
        NavigationLink(value: issue) {
            HStack {
                Image(systemName: "exclamationmark.circle")
                    .imageScale(.large)
                    .opacity(issue.priority == 2 ? 1 : 0)
                
                VStack(alignment: .leading) {
                    Text(issue.issueTitle)
                        .font(.headline)
                        .lineLimit(1)
                    Text("No tags")
                        .foregroundStyle(.secondary)
                        .lineLimit(2...2)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text(issue.issueCreationDate.formatted(date: .numeric, time: .omitted))
                        .font(.subheadline)
                    if issue.completed {
                        Text("CLOSED")
                            .font(.body.smallCaps())
                    }
                }
                .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    IssueRow(issue: .example)
}
