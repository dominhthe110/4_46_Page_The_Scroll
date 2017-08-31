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
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            images.append(UIImageView(image: image))
        }
        
        print("Count: \(images.count)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

