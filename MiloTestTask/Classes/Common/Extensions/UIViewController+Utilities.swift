//
//  UIViewController+Utilities.swift
//  MiloTestTask
//
//  Created by Oleksandr Nechet on 02.02.17.
//  Copyright © 2017 Oleksandr Nechet. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController
{
    func displayAlert(title: String,
                      message: String)
    {
        let alertController = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let alertActionOK = UIAlertAction(title: Constants.Strings.ok,
                                          style: .default,
                                          handler: nil)
        alertController.addAction(alertActionOK)
        
        present(alertController,
                animated: true,
                completion: nil)
    }
    
    func hideKeyboardWhenTappedAround()
    {
        let tap = UITapGestureRecognizer(target: self,
                                         action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard()
    {
        view.endEditing(true)
    }
}
