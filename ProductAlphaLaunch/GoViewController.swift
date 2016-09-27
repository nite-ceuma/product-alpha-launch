//
//  GoViewController.swift
//  Pokedex
//
//  Created by Michel Cordeiro on 26/09/16.
//  Copyright © 2016 Michel Cordeiro. All rights reserved.
//

import UIKit

class GoViewController: UIViewController{
    
    
    @IBOutlet weak var url: UITextField!
    
    var webView = AppViewController()
    
//    @IBAction func load(sender: AnyObject) {
//        
//        
//        if(url.text!.isEmpty){
//            Alerta.alerta("Preencha o campo da URL.", viewController: self)
//        }else{
//           //webView.loadAdressURL(url.text!)
//            NSLog("Chamou webview")
//        }
//
//    }
  
    // MARK: Tratamento de teclado Libera teclado
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segueForWebView" {
            
            let vc = segue.destinationViewController as! AppViewController
            
            vc.urlUsuario = url.text!
        }
    }

    
    
}