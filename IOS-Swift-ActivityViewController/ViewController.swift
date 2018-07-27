//
//  ViewController.swift
//  IOS-Swift-ActivityViewController
//
//  Created by Pooya on 2018-07-26.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareImage))
    }

    @objc func shareImage() {
        let vc = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: [])
        present(vc, animated: true)
    }

}

