//
//  RowView.swift
//  SwiftUIIntro
//
//  Created by HBCU-c2-14 on 8/1/21.
//

import SwiftUI

struct RowView: View {
    var rowItem: SettingsRowItem
    var body: some View {
        HStack {
            Image(systemName: rowItem.imageName)
            Text(rowItem.rowTitle)
        }
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        RowView()
//    }
//}
