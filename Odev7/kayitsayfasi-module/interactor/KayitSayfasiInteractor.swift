//
//  KayitSayfasiInteractor.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 17.10.2022.
//

import Foundation

class KayitSayfasiInteractor : PresenterToInteractorKayitSayfasiProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklardb.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func yapilacakEkle(yapilacak_is: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO yapilacaklar (yapilacak_is) VALUES (?)", values: [yapilacak_is])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
