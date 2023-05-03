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
    }
}
