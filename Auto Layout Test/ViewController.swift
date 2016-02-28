//
//  ViewController.swift
//  Auto Layout Test
//
//  Created by Ilya Velilyaev on 28.02.16.
//  Copyright © 2016 Ilya Velilyaev. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orangeColor()
        print("loaded")
        let myView = UIView()
        myView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(myView)
        myView.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(20, 20, 20, 20))
            
        }
        
        let secondView = UIView()
        secondView.backgroundColor = UIColor.blueColor()
        myView.addSubview(secondView)
        secondView.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(myView).inset(UIEdgeInsetsMake(20, 20, 20, 20))
        }


        
        
    }
    

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touchedView = touches.first!.view
        touchedView!.snp_remakeConstraints { (make) -> Void in
            make.edges.equalTo(touchedView!.superview!).inset(UIEdgeInsetsMake(50, 50, 50, 50))
        }
        touchedView!.setNeedsLayout()
        
        UIView.animateWithDuration(1) { () -> Void in
            touchedView!.layoutIfNeeded()
        }
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touchedView = touches.first!.view
        touchedView!.snp_remakeConstraints { (make) -> Void in
            make.edges.equalTo(touchedView!.superview!).inset(UIEdgeInsetsMake(20, 20, 20, 20))
        }
        touchedView!.setNeedsLayout()
        
        UIView.animateWithDuration(0.5) { () -> Void in
            touchedView!.layoutIfNeeded()
        }

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
