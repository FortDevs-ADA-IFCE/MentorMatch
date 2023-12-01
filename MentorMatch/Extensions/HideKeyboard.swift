//
//  HideKeyboard.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 17/11/23.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}
