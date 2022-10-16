//
//  DetaySayfasiRouter.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 16.10.2022.
//

import Foundation

class DetaySayfasiRouter : PresenterToRouterDetaySayfasiProtocol {
    static func createModule(ref: DetaySayfasiVC) {
        ref.detaySayfasiPresenterNesnesi = DetaySayfasiPresenter()
        ref.detaySayfasiPresenterNesnesi?.detaySayfasiInteractor = DetaySayfasiInteractor()
    }
}
