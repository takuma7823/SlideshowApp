//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 田中拓磨 on 2019/07/20.
//  Copyright © 2019 田中拓磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer_sec: Float = 0
    var timer: Timer!
    
    
    
    @IBOutlet weak var Image: UIImageView!
    
    
    @objc func updateTimer(_ timer: Timer) {
        if Image.image == imgA{
            Image.image = imgB
        }else if Image.image == imgB{
            Image.image = imgC
        }else if Image.image == imgC{
            Image.image = imgA
        }
    }
    
    let imgA: UIImage! = UIImage(named:"IMG-1")
    let imgB: UIImage! = UIImage(named:"IMG-2")
    let imgC: UIImage! = UIImage(named:"IMG-3")
    
    
    @IBAction func move(_ sender: Any) {
         
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
       
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        if Image.image == imgA{
            Image.image = imgB
        }else if Image.image == imgB{
            Image.image = imgC
        }else if Image.image == imgC{
            Image.image = imgA
        }
        
    }
    
    @IBOutlet weak var nextButton2: UIButton!
    
    @IBAction func backButton(_ sender: Any) {
        if Image.image == imgA{
            
            Image.image = imgC
        }else if Image.image == imgB{
            Image.image = imgA
        }else if Image.image == imgC{
            Image.image = imgB
        }
    }
    
    @IBOutlet weak var backButton2: UIButton!
    
    @IBOutlet weak var playButton2: UIButton!
    @IBAction func playButton(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            nextButton2.isEnabled = false
            backButton2.isEnabled = false
            playButton2.setTitle("停止", for: .normal)
           
        }else if self.timer != nil{
            self.timer.invalidate()
            self.timer = nil
            nextButton2.isEnabled = true
            backButton2.isEnabled = true
            playButton2.setTitle("再生", for: .normal)
            
        }
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Image.image = imgA
        self.view.addSubview(Image)
    }
    
    @IBAction func tap(_ sender: Any) {
    
    }
    override func prepare(for segue:UIStoryboardSegue, sender: Any? ){
        let viewController2:ViewController2 = segue.destination as! ViewController2
        if Image.image == imgA{
            viewController2.x = 1
        }else if Image.image == imgB{
            viewController2.x = 2
        }else if Image.image == imgC{
            viewController2.x = 3
        }
        if self.timer != nil {
            
        self.timer.invalidate()
        nextButton2.isEnabled = true
        backButton2.isEnabled = true
        playButton2.setTitle("再生", for: .normal)
        
    }
    }
    
    
    
}

