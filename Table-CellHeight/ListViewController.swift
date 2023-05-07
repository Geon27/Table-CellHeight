//
//  ListViewController.swift
//  Table-CellHeight
//
//  Created by 육건 on 2023/04/30.
//

import UIKit
class ListViewController: UITableViewController {
    // 테이브 뷰에 연결된 데이터를 저장하는 배열
    var list = [String]()
    @IBAction func add(_ sender: Any) {
    // 알림창 객체의 입력폼을 추가한다
        let alert = UIAlertController(title: "목록입력", message: "추가될 글을 작성해주세요", preferredStyle: .alert)
        // 알림창에 입력폼을 추가한다
        alert.addTextField() { (tf) in
            tf.placeholder = "내용을 입력하세요"
        }
        // ok 버튼 객체를 생성한다: 아직 알림창 객체에 버튼이 등록되지 않은 상태
        let ok = UIAlertAction(title: "OK", style: .default) { (_) in
        // 알림창의 0번째 입력필드에 값이 있다면
            if let title = alert.textFields?[0].text {
        // 배열에 입력된 값을 추가하고 테이블을 갱신
                
            }
        }
    }
}
