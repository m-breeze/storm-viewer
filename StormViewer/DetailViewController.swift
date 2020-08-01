//
//  DetailViewController.swift
//  Project1
//
//  Created by Marina Khort on 26.07.2020.
//  Copyright © 2020 Marina Khort. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
	@IBOutlet var imageView: UIImageView!
	var selectedImage: String?
	var selectedPicNumber = 0
	var totalPics = 0
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		title = "Picture \(selectedPicNumber) of \(totalPics)"
		navigationItem.largeTitleDisplayMode = .never
		
		if let imageToLoad = selectedImage {
			imageView.image = UIImage(named: imageToLoad)
		}
    }
    
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.hidesBarsOnTap = true
	}
	
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		navigationController?.hidesBarsOnTap = false
	}

}
