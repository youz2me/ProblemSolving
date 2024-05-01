//
//  ViewController.swift
//  snapkit-practice
//
//  Created by YOUJIM on 4/18/24.
//

import UIKit

import Then
import SnapKit

class ViewController: UIViewController {
    
    private let firstView: UIView = UIView().then {
        $0.backgroundColor = .blue
    }
    
    private let secondView: UIView = UIView().then {
        $0.backgroundColor = .red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(firstView)
        view.addSubview(secondView)
        
        firstView.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.centerY.equalToSuperview().offset(-150)
            $0.leading.equalToSuperview().offset(100)
            $0.trailing.equalToSuperview().offset(-100)
        }
        
        secondView.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.centerY.equalToSuperview().offset(150)
            $0.leading.equalToSuperview().inset(100)
            $0.trailing.equalToSuperview().inset(-100)
        }
    }
}

