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
                self.list.append(title)
                self.tableView.reloadData()
            }
        }
    // 취소 버튼 객체를 생성한다: 아직 알림창 객체에 버튼이 등록되지 않은 상태
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
    // 알림창 객체에 버튼 객체를 등록한다
        alert.addAction(ok)
        alert.addAction(cancel)
    
    // 알림창을 띄운다.
        self.present(alert, animated: false)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // "cell" 이라는 아이디를 가진 셀을 읽어온다. 없으면 UITableViewCell 인스턴스 생성
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        // 추가부분(셀의 기본 텍스트 레이블 행 수 제한을 없앤다)
        cell.textLabel?.numberOfLines = 0
        // 셀의 기본 텍스트 레이블에 배열 변수값 할당
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt IndexPath:
        IndexPath) -> CGFloat {
        let row = self.list[IndexPath.row]
        
        // 높이를 조절. 기본 높이 60 + 글의 길이가 30자를 넘어갈때 마다 20만큼씩 높이를 올린다
        let height = CGFloat(60 + (row.count / 30) * 20)
        return height
    }
}
