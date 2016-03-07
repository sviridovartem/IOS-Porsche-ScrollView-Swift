//
//  ViewController.swift
//  The-Porsche-ScrollView
//
//  Created by Admin on 07/03/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView:UIScrollView!
    
    let WIDTH:CGFloat = 558
    let HEIGHT:CGFloat = 297
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        for var x = 1; x <= 8; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 160, WIDTH, HEIGHT)
        }
        scrollView.contentSize = CGSizeMake(WIDTH * 8, scrollView.frame.size.height)
    }

    

}

