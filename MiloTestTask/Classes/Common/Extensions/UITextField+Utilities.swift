//
//  UITextField+Utilities.swift
//  MiloTestTask
//
//  Created by Oleksandr Nechet on 02.02.17.
//  Copyright © 2017 Oleksandr Nechet. All rights reserved.
//

import Foundation
import UIKit

extension UITextField
{
    private var _rightView: UIView {
        get {
            let height = self.bounds.size.height
            let rightViewFrame = CGRect(origin: CGPoint.zero,
                                        size: CGSize(width: height, height: height))
            
            let rightView = UIView(frame: rightViewFrame)
            rightView.backgroundColor = UIColor.clear
            
            let clearButton = UIButton(type: .custom)
            clearButton.frame = rightViewFrame.insetBy(dx: 8.0, dy: 8.0)
            clearButton.setImage(#imageLiteral(resourceName: "textfield-cancel-button"), for:.normal)
            clearButton.addTarget(self,
                                  action: #selector(clearTextField),
                                  for: .touchUpInside)
            
            rightView.addSubview(clearButton)
            
            return rightView
        }
    }
    
    func addCancelButton()
    {
        self.rightViewMode = .whileEditing
        self.rightView = _rightView
    }
    
    func clearTextField()
    {
        self.text = nil
    }
}
