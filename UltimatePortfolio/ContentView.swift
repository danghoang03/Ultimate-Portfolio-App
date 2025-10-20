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
        List(selection: Bindable(dataController).selectedIssue) {
            ForEach(dataController.issuesforSelectedFilter()) { issue in
                IssueRow(issue: issue)
            }
            .onDelete(perform: delete)
        }
        .navigationTitle("Issues")
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
