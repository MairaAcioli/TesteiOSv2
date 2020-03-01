//
//  LoginController.swift
//  SANTANDER
//
//  Created by Maíra Preto on 25/02/20.
//  Copyright © 2020 Maíra Acioli. All rights reserved.
//

import Foundation

protocol UserControllerDelegate: class {
    
    func successLoadUsers()
    func errorLoadUsers(error: Error?)
}

class LoginController {
    
    weak var delegate: UserControllerDelegate?
    
    var provider: LoginProvider?
    
    private var arrayUsers: User = []

    
    func setupController(){
        self.provider = LoginProvider()
        self.provider?.delegate = self
    }
    
    func loadList() {
        self.setupController()
        self.provider?.loadUsers()
    }
    
    
    func loadCurrentUser(indexPath: IndexPath) -> UserAccount {
        
        return self.arrayUsers[indexPath.row]
       
    }
}

extension LoginController: UserProviderDelegate {
    func successLoadUsers(users: User) {
         self.arrayUsers = users
        self.delegate?.successLoadUsers()
    }
    
    func errorLoadUsers(error: Error?) {
        self.delegate?.errorLoadUsers(error: error)
    }
    
}

