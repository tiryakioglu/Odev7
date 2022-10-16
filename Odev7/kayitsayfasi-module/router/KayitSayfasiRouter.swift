//
//  KayitSayfasiRouter.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 17.10.2022.
//

import Foundation

class KayitSayfasiRouter : PresenterToRouterKayitSayfasiProtocol {
    static func createModule(ref: KayitSayfasiVC) {
        ref.kayitSayfasiPresenterNesnesi = KayitSayfasiPresenter()
        ref.kayitSayfasiPresenterNesnesi?.kayitSayfasiInteractor = KayitSayfasiInteractor()
    }
}
