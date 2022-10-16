//
//  DetaySayfasiProtocols.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 16.10.2022.
//

import Foundation

protocol ViewToPresenterDetaySayfasiProtocol {
    var detaySayfasiInteractor:PresenterToInteractorDetaySayfasiProtocol? {get set}
    
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToInteractorDetaySayfasiProtocol {
    func yapilacakGuncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToRouterDetaySayfasiProtocol {
    static func createModule(ref:DetaySayfasiVC)
}


