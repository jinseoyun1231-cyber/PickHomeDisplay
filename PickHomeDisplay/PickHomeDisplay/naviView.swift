//
//  naviView.swift
//  PickHomeDisplay
//
//  Created by Seoyun Jin on 7/5/26.
//

import UIKit
import SnapKit
import Then

class naviView: UIView {
    var homeImg = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "house.fill"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var forkImg = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "fork.knife"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var checkImg = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var calendarIcon = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "calendar"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var wholeIcon = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "rectangle.grid.2x2.fill"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    
    lazy var homeText = makeText("홈")
    lazy var forkText = makeText("급식")
    lazy var calendarText = makeText("일정")
    lazy var checkText = makeText("신청")
    lazy var wholeText = makeText("전체")
    
    func makeText(_ text: String) -> UILabel {
        return UILabel().then {
            $0.text = text
            $0.font = .systemFont(ofSize: 11)
        }
    }
    
    func setup() {
        self.addSubview(homeImg)
        self.addSubview(homeText)
        self.addSubview(forkImg)
        self.addSubview(forkText)
        self.addSubview(checkImg)
        self.addSubview(checkText)
        self.addSubview(calendarIcon)
        self.addSubview(calendarText)
        self.addSubview(wholeIcon)
        self.addSubview(wholeText)
        
        homeImg.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(27)
            $0.top.equalToSuperview().inset(8)
            $0.width.height.equalTo(24)
        }
        homeText.snp.makeConstraints {
            $0.centerX.equalTo(homeImg)
            $0.top.equalTo(homeImg.snp.bottom).offset(2)
        }
        forkImg.snp.makeConstraints {
            $0.centerY.equalTo(homeImg)
            $0.leading.equalTo(homeImg.snp.trailing).offset(54)
            $0.width.height.equalTo(24)
        }
        forkText.snp.makeConstraints {
            $0.centerX.equalTo(forkImg)
            $0.centerY.equalTo(homeText)
        }
        checkImg.snp.makeConstraints {
            $0.centerY.equalTo(homeImg)
            $0.leading.equalTo(forkImg.snp.trailing).offset(54)
            $0.width.height.equalTo(24)
        }
        checkText.snp.makeConstraints {
            $0.centerX.equalTo(checkImg)
            $0.centerY.equalTo(homeText)
        }
        calendarIcon.snp.makeConstraints {
            $0.centerY.height.width.equalTo(checkImg)
            $0.leading.equalTo(checkImg.snp.trailing).offset(54)
        }
        calendarText.snp.makeConstraints {
            $0.centerX.equalTo(calendarIcon)
            $0.centerY.equalTo(checkText)
        }
        wholeIcon.snp.makeConstraints {
            $0.centerY.height.width.equalTo(calendarIcon)
            $0.leading.equalTo(calendarIcon.snp.trailing).offset(54)
        }
        wholeText.snp.makeConstraints {
            $0.centerX.equalTo(wholeIcon)
            $0.centerY.equalTo(calendarText)
        }

    }네
}
