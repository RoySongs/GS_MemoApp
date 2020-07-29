//
//  Model.swift
//  GS_Memo
//
//  Created by ROY SON on 2020/07/29.
//  Copyright © 2020 ROY SON. All rights reserved.
//

import UIKit
class Memo {
    
    var content:String
    var insertDate: Date
    
    init(content : String){
        self.content = content
        insertDate = Date() // 작성일을 바로 추가하기 때문에 Date()를 사용해도 된다.
    }
    
    static var dummyList = [
        Memo(content: "lorem Perm"),
        Memo(content: "Subscribe + 🤙 = ♥️")
    ]
}
