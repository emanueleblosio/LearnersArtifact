//
//  ViewController.swift
//  LearnersArtifact
//
//  Created by Emanuele Blosio on 05/04/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func AfternoonView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: LearnersArtifact.AfternoonLearnersView())
    }
}

