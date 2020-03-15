//
//  AddListingVC.swift
//  ReUsey
//
//  Created by Brandi Bailey on 3/15/20.
//  Copyright © 2020 Brandi Bailey. All rights reserved.
//

import UIKit

class AddListingVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    let listingImage = UIImageView()
    let listingImage1 = UIImageView()
    let listingImage2 = UIImageView()
    let listingImage3 = UIImageView()
    let listingImage4 = UIImageView()
    
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureScrollView()
    }

    
    func configureScrollView() {
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
        
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.heightAnchor.constraint(equalToConstant: 1300).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 8
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        stackView.addSubview(listingImage)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        listingImage.frame = CGRect(x: 20, y: 20, width: 200, height: 140)
        listingImage.image = UIImage(named: "house")
        
        stackView.addSubview(listingImage1)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        listingImage1.frame = CGRect(x: 20, y: 240, width: 200, height: 140)
        listingImage1.image = UIImage(named: "house")
        
        stackView.addSubview(listingImage2)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        listingImage2.frame = CGRect(x: 20, y: 460, width: 200, height: 140)
        listingImage2.image = UIImage(named: "house")
        
        stackView.addSubview(listingImage3)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        listingImage3.frame = CGRect(x: 20, y: 680, width: 200, height: 140)
        listingImage3.image = UIImage(named: "house")
        
        stackView.addSubview(listingImage4)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        listingImage4.frame = CGRect(x: 20, y: 900, width: 200, height: 140)
        listingImage4.image = UIImage(named: "house")
    }
}
