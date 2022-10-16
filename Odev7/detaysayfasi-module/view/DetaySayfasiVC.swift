//
//  DetaySayfasiVC.swift
//  Odev7
//
//  Created by Ali Tiryakioğlu on 16.10.2022.
//

import UIKit

class DetaySayfasiVC: UIViewController {

    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var yapilacak:Yapilacaklar?
    
    var detaySayfasiPresenterNesnesi:ViewToPresenterDetaySayfasiProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DetaySayfasiRouter.createModule(ref: self)
        if let y = yapilacak {
            tfYapilacakIs.text = y.yapilacak_is
        }
    }
    

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let yai = tfYapilacakIs.text ,let y = yapilacak {
            detaySayfasiPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_is: yai)
        }
        
    }
    

}
