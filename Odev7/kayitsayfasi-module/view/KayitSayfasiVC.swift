//
//  KayitSayfasiVC.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 16.10.2022.
//

import UIKit

class KayitSayfasiVC: UIViewController {

    @IBOutlet weak var tfYapilacak: UITextField!
    
    var kayitSayfasiPresenterNesnesi:ViewToPresenterKayitSayfasiProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        KayitSayfasiRouter.createModule(ref: self)
    }
    

   
    @IBAction func buttonEkle(_ sender: Any) {
        if let yai = tfYapilacak.text {
            kayitSayfasiPresenterNesnesi?.ekle(yapilacak_is: yai)
        }
    }
    
}
