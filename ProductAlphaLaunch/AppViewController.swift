//
//  ViewController.swift
//  Pokedex
//
//  Created by Michel Cordeiro on 24/09/16.
//  Copyright © 2016 Michel Cordeiro. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {

    @IBOutlet weak var typeform: UIWebView!
    
    var URLPath = "https://michelcordeiro.github.io"
    
    // Flavio
    var urlUsuario: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Flavio
        if urlUsuario == nil || urlUsuario == "" {
            loadAdressURL(URLPath)
        }
        else {
            loadAdressURL(urlUsuario!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadAdressURL(url: String){
        
        let requestURL = NSURL(string: url)
        let request = NSURLRequest(URL: requestURL!)
       
        typeform.loadRequest(request)
        
        if Reachability.isConnectedToNetwork() == true {
            print("Internet connection OK")
        } else {
            print("Internet connection FAILED")
            showAlert(url)
        }
        
    }
    
    func showAlert(url: String){
        var createAccountErrorAlert: UIAlertView = UIAlertView()
        
        createAccountErrorAlert.delegate = self
        
        createAccountErrorAlert.title = "Sem conexão com a internet"
        createAccountErrorAlert.message = "Veja qual o problema com a sua conexão e tente novamente."
        createAccountErrorAlert.addButtonWithTitle("Reload")
        createAccountErrorAlert.addButtonWithTitle("Home")
        
        createAccountErrorAlert.show()
    }
    
    func alertView(View: UIAlertView!, clickedButtonAtIndex buttonIndex: Int, url: String){
        
        switch buttonIndex{
            
        case 1:
            NSLog("Home");
            print("Voltou para Home")
            break;
        case 0:
            NSLog("Reload");
            print("Deu reload")
            loadAdressURL(url)
            break;
        default:
            NSLog("Default");
            print("Chamou default")
            break;
            
        }
    }
    

}

