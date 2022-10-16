//
//  KayitSayfasiProtocols.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 17.10.2022.
//

import Foundation

protocol ViewToPresenterKayitSayfasiProtocol {
    var kayitSayfasiInteractor:PresenterToInteractorKayitSayfasiProtocol? {get set}
    
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteractorKayitSayfasiProtocol {
    func yapilacakEkle(yapilacak_is:String)
}

protocol PresenterToRouterKayitSayfasiProtocol {
    static func createModule(ref:KayitSayfasiVC)
}
