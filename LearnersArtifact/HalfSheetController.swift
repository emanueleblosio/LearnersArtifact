//
//  HalfSheetController.swift
//  LearnersArtifact
//
//  Created by Emanuele Blosio on 06/04/22.
//

import SwiftUI

import SwiftUI

class HalfSheetController<Content>: UIHostingController<Content> where Content : View {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let presentation = sheetPresentationController {
            presentation.detents = [.medium(), .large()]
            presentation.prefersGrabberVisible = true
            presentation.largestUndimmedDetentIdentifier = .medium
        }
    }
}
