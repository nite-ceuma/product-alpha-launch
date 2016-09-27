//
//  HomeController.swift
//  ProductAlphaLaunch
//
//  Created by Michel Cordeiro on 25/09/16.
//  Copyright © 2016 Michel Cordeiro. All rights reserved.
//


import UIKit


class HomeViewController: UIViewController, UITextFieldDelegate {

   // var webView = ViewController()
    @IBOutlet weak var urlPathLabel: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        urlPathLabel.delegate = self
    }
    
    
    @IBAction func loadWebView(sender: UIButton){
        
        if(urlPathLabel.text!.isEmpty){
            Alerta.alerta("Preencha o campo da URL.", viewController: self)
        }
        
       // webView.loadAdressURL(urlPathLabel.text!)
        
    }
    
    
    // MARK: Tratamento de teclado Libera teclado
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
