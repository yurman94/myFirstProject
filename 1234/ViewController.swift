//
//  ViewController.swift
//  1234
//
//  Created by IHAR YURMAN on 14.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    let myCircle = UIView()
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.backgroundColor = .blue
        
        myCircle.frame = CGRect (x: 100, y: 250, width: 50, height: 50)
        
        myCircle.backgroundColor = randomColor ()
        
        myCircle.layer.cornerRadius = 25
       
        view.addSubview(myCircle)
        
        
        let gesture = UITapGestureRecognizer (target: self, action: #selector(gestureFunc))
       
    
        
        view.addGestureRecognizer(gesture)
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)}
    
    func randomColor() - > UIColor {
        let color 1 = Double.random (in 0...255)
        let color 2 = Double.random (in 0...255)
        let color 3 = Double.random (in 0...255)
        let randColor = UIColor (orange: color 1/255, green: color 2/255, black: color 3/255, alpha: 1)
        
        return randColor
    }
    
    
        
    @objc func gestureFunc() {
        myCircle.backgroundColor = randomColor ()
        randomPlace ()
    }
    
    func randomPlace(){
        let height = view.frame.size.height - 80
        let width = view.frame.size.width - 60
        
        let randomX = Double.random (in: 40...height)
        let randomY = Double.random (in: 0...width)
        myCircle.frame.origin.x = CGFloat(randomX)
        myCircle.frame.origin.y = randomY
    }
    }
    


