//
//  ViewController.swift
//  LoginDemo
//
//  Created by Nick Ludlow on 04/06/2015.
//  Copyright (c) 2015 Nick Ludlow. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBLoginViewDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var profilePictureView: FBProfilePictureView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var loginView: FBLoginView = FBLoginView()
        loginView.delegate = self
        loginView.center = self.view.center
        self.view.addSubview(loginView)
        
    }
    
    
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        
        profilePictureView.profileID = user.objectID
        nameLabel.text = user.name
        
    
    }

    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        statusLabel.text = "You're logged in as"
    }
    
    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        
        statusLabel.text = "You are logged out now!"
        profilePictureView.profileID = nil
        nameLabel.text = ""
    }
    
    
}

