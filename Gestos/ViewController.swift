//
//  ViewController.swift
//  Gestos
//
//  Created by Jorge MR on 26/06/17.
//  Copyright © 2017 Jorge MR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeDerecha = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipe(gesture:)))
        //Con (gesture: ) le decimos que de manera explicita que lo mande como parametro
        swipeDerecha.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeDerecha)
       
        
        imageView.isUserInteractionEnabled = true
        let swipeIzquierda = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipe(gesture:)))
        swipeIzquierda.direction = UISwipeGestureRecognizerDirection.left
        self.imageView.addGestureRecognizer(swipeIzquierda)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake{
            print("shake")
        }
    }
    
    func swipe(gesture: UIGestureRecognizer){
        if let swipGesto = gesture as? UISwipeGestureRecognizer {
            switch swipGesto.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swipe a la derecha")
                break;
            case UISwipeGestureRecognizerDirection.left:
                print("Swipe a la izquierda")
                break;
            default :
                break;
            }
        }
    }
    
    
}

