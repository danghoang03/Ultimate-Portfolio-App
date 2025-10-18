//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Hoàng Minh Hải Đăng on 18/10/25.
//

import SwiftUI
import CoreData

@main
struct UltimatePortfolioApp: App {
    @State var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            }
            detail: {
                DetailView()
            }
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environment(dataController)
        }
    }
}
