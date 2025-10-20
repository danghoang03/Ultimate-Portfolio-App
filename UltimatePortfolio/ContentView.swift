//
//  ContentView.swift
//  UltimatePortfolio
//
//  Created by Hoàng Minh Hải Đăng on 18/10/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(DataController.self) var dataController
    
    var body: some View {
        @Bindable var dataController = dataController
        List(selection: $dataController.selectedIssue) {
            ForEach(dataController.issuesforSelectedFilter()) { issue in
                IssueRow(issue: issue)
            }
            .onDelete(perform: delete)
        }
        .navigationTitle("Issues")
        .searchable(text: $dataController.filterText, tokens: $dataController.filterTokens, prompt: "Filter issues, or type # to add tags") { tag in
            Text(tag.tagName)
        }
        .searchSuggestions {
            ForEach(dataController.suggestedFilterTokens) { tag in
                Button {
                    dataController.filterTokens.append(tag)
                    dataController.filterText = ""
                } label: {
                    Text(tag.tagName)
                }
            }
        }
        .id(dataController.lastUpdate)
    }
    
    func delete(_ offsets: IndexSet) {
        let issues = dataController.issuesforSelectedFilter()
        
        for offset in offsets {
            let item = issues[offset]
            dataController.delete(item)
        }
    }
}

#Preview {
    ContentView()
}
