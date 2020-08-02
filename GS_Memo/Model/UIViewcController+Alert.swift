//
//  UIViewcController+Alert.swift
//  GS_Memo
//
//  Created by ROY SON on 2020/08/02.
//  Copyright © 2020 ROY SON. All rights reserved.
//

import UIKit

extension UIViewController {
    func alert(title: String = "알림", message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
                
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    // 경고창 2종류
    // Alert View : Yes/No 표시할 때 쓴다.
    // ActionSheet : 3개 이상의 옵션 중에서 선택할 때 쓴다.
    
}
