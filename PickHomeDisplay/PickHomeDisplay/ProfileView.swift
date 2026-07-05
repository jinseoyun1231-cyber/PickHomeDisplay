//
//  ProfileView.swift
//  PickHomeDisplay
//
//  Created by Seoyun Jin on 7/5/26.
//

import UIKit
import SnapKit
import Then

class ProfileView: UIView {
    var profileSchool = UILabel().then {
        $0.text = "대덕소프트웨어마이스터고등학교"
        $0.font = .systemFont(ofSize: 16)
    }
    var profileName = UILabel().then {
        $0.text = "1학년 2반 13번 진서윤"
        $0.font = .systemFont(ofSize: 16)
    }
    var profileImg = UIImageView().then {
        $0.image = UIImage(systemName: "person.circle.fill")
        $0.contentMode = .scaleAspectFit
    }
    func setup() {
        self.addSubview(profileImg)
        self.addSubview(profileSchool)
        self.addSubview(profileName)
        
        profileImg.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.width.height.equalTo(60)
            $0.leading.equalToSuperview().inset(24)
        }
        profileSchool.snp.makeConstraints {
            $0.leading.equalTo(profileImg.snp.trailing).offset(24)
            $0.top.equalToSuperview().inset(22)
            $0.height.equalTo(19)
        }
        profileName.snp.makeConstraints {
            $0.top.equalTo(profileSchool.snp.bottom).offset(2)
            $0.leading.equalTo(profileImg.snp.trailing).offset(24)
            $0.height.equalTo(19)
        }
    }
}
