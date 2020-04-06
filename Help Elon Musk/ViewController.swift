//
//  ViewController.swift
//  Help Elon Musk
//
//  Created by Heesu Yun on 4/6/20.
//  Copyright © 2020 Heesu Yun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var blastOffButton: UIButton!
    
    var currentImageNumber =  0
    let numberOfImages = 3
    var yAtLanding: CGFloat = 0 // dealing with individual numbers + initializing it by 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yAtLanding = imageView.frame.origin.y // paying attention to where we are when we start off
    }
    
    @IBAction func rocketTapped(_ sender: UITapGestureRecognizer) { //tap gesture recognizer
        currentImageNumber += 1
        if currentImageNumber == numberOfImages {
            currentImageNumber = 0
        }
        imageView.image = UIImage(named: "rocket\(currentImageNumber)")
    }
    @IBAction func blastOffButtonPressed(_ sender: UIButton) {
        if imageView.frame.origin.y < 0 {
            UIView.animate(withDuration: 2, animations: {self.imageView.frame.origin.y = self.yAtLanding}, completion: nil) //제자리로 돌아오게 하는것!
            blastOffButton.setTitle("Blast Off", for: .normal)
        }else{
            UIView.animate(withDuration: 2, animations: {self.imageView.frame.origin.y = -self.imageView.frame.size.height}, completion: nil) //{}안에는 self가 들어가야한다
            blastOffButton.setTitle("Return", for: .normal)
        }
        
        
}



}
