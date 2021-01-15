//
//  ContentViewController.swift
//  DelegatePattern
//
//  Created by Petar Stoenchev on 15.01.21.
//

import UIKit


// MARK: - Class Definition

final class ContentViewController: UIViewController {
    
    weak var delegate: ContentViewControllerDelegate?
}

// MARK: - User Actions

extension ContentViewController {
    
    @IBAction func leftButton(_ sender: UIButton) {
        delegate?.contentViewController(self, requiresNavigationTo: .left)
        print("left")
    }
    
    @IBAction func rightButton(_ sender: UIButton) {
        delegate?.contentViewController(self, requiresNavigationTo: .right)
        print("right")
    }
}
