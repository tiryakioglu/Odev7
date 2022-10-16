//
//  DetaySayfasiPresenter.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 16.10.2022.
//

import Foundation

class DetaySayfasiPresenter : ViewToPresenterDetaySayfasiProtocol {
    var detaySayfasiInteractor: PresenterToInteractorDetaySayfasiProtocol?
    
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        detaySayfasiInteractor?.yapilacakGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
}


