//
//  ViewController.swift
//  4_46_Page_The_Scroll
//
//  Created by Minh The on 8/30/17.
//  Copyright © 2017 Minh The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Hello
    var images = [UIImageView]()
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var contentWidth : CGFloat = 0.0
        
        print("Scrollview width: \(scrollView.frame.size.width)")
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        //scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        scrollView.backgroundColor = UIColor.lightGray
    }
    
    override func viewDidAppear(_ animated: Bool) {
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

