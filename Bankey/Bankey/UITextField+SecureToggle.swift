//
//  UITextField+SecureToggle.swift
//  Bankey
//
//  Created by Oleksii Leshchenko on 20.09.2022.
//

import UIKit

let passwordToggleButton = UIButton(type: .custom)

extension UITextField {
    func enablePasswordToggle() {
        passwordToggleButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        passwordToggleButton.setImage(UIImage(systemName: "eye.slash.fill"), for: .selected)
        passwordToggleButton.addTarget(self, action: #selector(showPasswordView), for: .touchDown)
        rightView = passwordToggleButton
        rightViewMode = .always
    }
    
    @objc func showPasswordView(_ sender: Any) {
        isSecureTextEntry.toggle()
        passwordToggleButton.isSelected.toggle()
    }
}

