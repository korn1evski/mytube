//
//  ViewController.swift
//  mytube
//
//  Created by Bogdan Kornievski on 06.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }
    
    
}

