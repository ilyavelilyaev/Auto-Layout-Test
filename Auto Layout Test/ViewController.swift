//
//  ViewController.swift
//  Auto Layout Test
//
//  Created by Ilya Velilyaev on 28.02.16.
//  Copyright © 2016 Ilya Velilyaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewRect = CGRectMake(10, 10, 100, 100)
        let myView = UIView(frame: viewRect)
        
        myView.backgroundColor = UIColor.yellowColor()
        
        self.view.addSubview(myView)
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
