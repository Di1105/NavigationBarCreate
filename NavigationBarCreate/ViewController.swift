//
//  ViewController.swift
//  NavigationBarCreate
//
//  Created by Dilara Elçioğlu on 21.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let navigationBar = UINavigationBar()
    let navigataionItem = UINavigationItem()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }

    func setUpUI(){
        view.addSubview(navigationBar)
        
        navigationBar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(40)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
        }
        navigationBar.backgroundColor = .lightGray
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Right", style: .plain, target: self, action: nil)
        navigationBar.setItems([navigationItem], animated: false)
        navigationItem.title = "Navi Bar"
    }
}

