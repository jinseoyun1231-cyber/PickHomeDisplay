//
//  TopBarView.swift
//  PickHomeDisplay
//
//  Created by Seoyun Jin on 7/4/26.
//

import UIKit
import Then
import SnapKit

class TopBarView: UIView {
    var pickLogo = UIImageView().then {
        $0.contentMode = .scaleAspectFit
    }
    var navigationBar2 = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "bell.fill"), for: .normal);
    }
    var navigationButton = UIButton(type: .system).then {
        $0.addTarget(self, action: #selector(ViewController.modeChange), for: .touchUpInside)
    }
    
    func LayoutTopBar() {
        self.addSubview(pickLogo)
        self.addSubview(navigationButton)
        self.addSubview(navigationBar2)
        
        pickLogo.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().inset(24)
            $0.width.equalTo(56)
            $0.height.equalTo(19.38)
        }
        navigationButton.snp.makeConstraints {
            $0.trailing.equalTo(navigationBar2.snp.leading).offset(-24)
            $0.width.height.equalTo(24)
            $0.centerY.equalToSuperview()
        }
        navigationBar2.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(24)
            $0.width.height.equalTo(24)
            $0.centerY.equalToSuperview()
        }
    }
}

