//
//  ViewController.swift
//  4_46_Page_The_Scroll
//
//  Created by Minh The on 8/30/17.
//  Copyright © 2017 Minh The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addGestureRecognizer(scrollView.panGestureRecognizer)
        
            }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth : CGFloat = 0.0
        
        print("Scrollview width \(scrollView.frame.size.width)")
        
        print("Scrollview width: \(scrollView.frame.size.width)")
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX : CGFloat = 0.0
            
            newX = scrollView.frame.size.width / 2  + scrollView.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: -75 + (scrollView.frame.size.height / 2), width: 150, height: 150)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        scrollView.clipsToBounds = false
        //scrollView.backgroundColor = UIColor.lightGray


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

