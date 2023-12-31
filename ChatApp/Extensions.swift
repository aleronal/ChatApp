//
//  Extensions.swift
//  ChatApp
//
//  Created by Alejandro Rodriguez on 13/07/2023.
//

import Foundation
import SwiftUI

//Extension for adding rounded corners to specific corners

extension View{
    func cornerRadious(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius:radius, corners: corners) )
    }
}


struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

