//
//  ComposeViewController.swift
//  GS_Memo
//
//  Created by ROY SON on 2020/08/02.
//  Copyright © 2020 ROY SON. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var memoText: UITextView!
    
    @IBAction func save(_ sender: Any) {
        
        guard let memo = memoText.text,
            memo.count > 0 else {
                alert(message:"메모를 입력하세요")
                // 경고창을 표시하는 메소드를 따로 만들 것이다.
                return
        }
        
        let newMemo = Memo(content: memo)
        Memo.dummyList.append(newMemo)
        
        NotificationCenter.default.post(name: ComposeViewController.newMemoDidInsert, object: nil)
        
        dismiss(animated: true, completion: nil)

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}


extension ComposeViewController {
    static let newMemoDidInsert = Notification.Name(rawValue: "newMemoDidInsert")
}
