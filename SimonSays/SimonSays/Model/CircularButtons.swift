//
//  CircularButtons.swift
//  SimonSays
//
//  Created by Tyler Hikida on 2020-10-10.
//

import UIKit

class CircularButtons: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = frame.size.height/2
    }
}
