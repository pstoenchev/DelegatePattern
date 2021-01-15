//
//  ContentViewController+Delegate.swift
//  DelegatePattern
//
//  Created by Petar Stoenchev on 15.01.21.
//

import Foundation


// MARK: - Direction

extension ContentViewController {
    
    enum Direction {
        case left
        case right
    }
}

protocol ContentViewControllerDelegate: AnyObject {
    
    func contentViewController(_ controller: ContentViewController, requiresNavigationTo direction: ContentViewController.Direction)
}
