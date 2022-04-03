//
//  protocol.swift
//  DelegatePattern
//
//  Created by tobi adegoroye on 03/04/2022.
//

import Foundation

import UIKit
// delegate protocol
// Things need to be done, commands
protocol AlbumSelectionDelegate {
    func didTapChoice(image: UIImage, name: String)
}
