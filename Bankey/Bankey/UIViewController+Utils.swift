//
//  UIViewController+Utils.swift
//  Bankey
//
//  Created by Oleksii Leshchenko on 10.09.2022.
//

import UIKit

extension UIViewController {
    func  setStatusBar() {
        let statusBarSize: CGSize
        if #available(iOS 13.0, *) {
            statusBarSize = UIApplication.shared
                        .connectedScenes
                        .map({$0 as? UIWindowScene})
                        .compactMap({$0})
                        .first?.windows.first?
                        .windowScene?.statusBarManager?.statusBarFrame.size ?? CGSize(width: 0, height: 0)
            
        } else {
            statusBarSize = UIApplication.shared.statusBarFrame.size // deprecated but good
        }
        let frame = CGRect(origin: .zero, size: statusBarSize)
        let statusBarView = UIView(frame: frame)
        
        statusBarView.backgroundColor = appColor
        view.addSubview(statusBarView)
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
