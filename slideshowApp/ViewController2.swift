//
//  ViewController2.swift
//  SlideshowApp
//
//  Created by 田中拓磨 on 2019/07/12.
//  Copyright © 2019 田中拓磨. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var bigImage: UIImageView!
    
    var x = 0
    
    let imgA: UIImage! = UIImage(named:"IMG-1")
    let imgB: UIImage! = UIImage(named:"IMG-2")
    let imgC: UIImage! = UIImage(named:"IMG-3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if x == 1{
            bigImage.image = imgA
        }else if x == 2{
            bigImage.image = imgB
        }else if x == 3{
            bigImage.image = imgC
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let viewController:ViewController = segue.destination as! ViewController
        if bigImage.image == imgA{
            viewController.y = 1
        }else if bigImage.image == imgB{
            viewController.y = 2
        }else if bigImage.image == imgC{
            viewController.y = 3
        }    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
