//
//  KayitSayfasiPresenter.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 17.10.2022.
//

import Foundation

class KayitSayfasiPresenter : ViewToPresenterKayitSayfasiProtocol {
    var kayitSayfasiInteractor: PresenterToInteractorKayitSayfasiProtocol?
    
    func ekle(yapilacak_is: String) {
        kayitSayfasiInteractor?.yapilacakEkle(yapilacak_is: yapilacak_is)
    }
}
