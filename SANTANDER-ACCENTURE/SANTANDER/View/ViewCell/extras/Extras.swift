//
//  Extras.swift
//  SANTANDER
//
//  Created by Maíra Preto on 23/02/20.
//  Copyright © 2020 Maíra Acioli. All rights reserved.
//

import Foundation

extension String {
    
    
    static func validarCPf(cpf: String) -> Bool {
       let cpfRegEx = "[0-9]"
       let cpfTest = NSPredicate(format:"SELF MATCHES %@", cpfRegEx)

       return cpfTest.evaluate(with: cpf)
        
}
    
    static func validarEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        return emailTest.evaluate(with: email)
    }
    
    static func validarPassword(_ password : String) -> Bool {
         let passwordRegex = "^(?=.*?[A-Z])(?=.*?[a-z[0-9]])(?=.*?[#?!@$%^&*-.])[[A-Za-z[0-9]]#?!@$%^&*-.]{0,}$"
         let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
               
        return passwordTest.evaluate(with: password)
    }
    
}


