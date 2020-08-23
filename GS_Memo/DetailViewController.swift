//
//  DetailViewController.swift
//  GS_Memo
//
//  Created by ROY SON on 2020/08/23.
//  Copyright © 2020 ROY SON. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var memo: Memo?
    
    
    let formatter:  DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .medium
        f.timeStyle = .short
        f.locale = Locale(identifier: "Ko_kr")
        return f
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0: let cell = tableView.dequeueReusableCell(withIdentifier: "memoCell1", for: indexPath)
        cell.textLabel?.text = memo?.content
            return cell
        case 1: let cell = tableView.dequeueReusableCell(withIdentifier: "DateCell1", for: indexPath)
        cell.textLabel?.text = formatter.string(for: memo?.insertDate)
        return cell
        default:fatalError()
        }
    }
    
    
}
