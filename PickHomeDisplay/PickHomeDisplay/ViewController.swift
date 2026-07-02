//
//  ViewController.swift
//  PickHomeDisplay
//
//  Created by Seoyun Jin on 5/30/26.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    var profileImg = UIImageView().then {
        $0.image = UIImage(systemName: "person.circle.fill")
        $0.contentMode = .scaleAspectFit
    }
    var navigationBar2 = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "bell.fill"), for: .normal);
    }
    var navigationButton = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "sun.max.fill"), for: .normal);
        $0.addTarget(self, action: #selector(modeChange), for: .touchUpInside)
    }
    var profileSchool = UILabel().then {
        $0.text = "대덕소프트웨어마이스터고등학교"
        $0.font = .systemFont(ofSize: 16)
    }
    var pickLogo = UIImageView().then {
        $0.contentMode = .scaleAspectFit
    }
    var profileName = UILabel().then {
        $0.text = "1학년 2반 13번 진서윤"
        $0.font = .systemFont(ofSize: 16)
    }
    var todaymenu = UILabel().then {
        $0.text = "오늘의 급식"
        $0.font = .systemFont(ofSize: 16)
    }
    var todaymenuBox = UIView()
    var breakfastTitle = UILabel().then {
        $0.text = "조식"
        $0.font = .systemFont(ofSize: 16, weight: .bold)
    }
    var lunchTitle = UILabel().then {
        $0.text = "중식"
        $0.font = .systemFont(ofSize: 16, weight: .bold)
    }
    var dinnerTitle = UILabel().then {
        $0.text = "석식"
        $0.font = .systemFont(ofSize: 16, weight: .bold)
    }
    var menu1 = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "녹두찰밥\n스팸구이\n시리얼(블루베리)\n우유\n한우궁중떡볶이\n미니고구마파이"
        $0.font = .systemFont(ofSize: 14)
    }
    var menu2 = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "녹두찰밥\n스팸구이\n시리얼(블루베리)\n우유\n한우궁중떡볶이\n미니고구마파이"
        $0.font = .systemFont(ofSize: 14)
    }
    var menu3 = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "녹두찰밥\n스팸구이\n시리얼(블루베리)\n우유\n한우궁중떡볶이\n미니고구마파이"
        $0.font = .systemFont(ofSize: 14)
    }
    var kalBox1 = UIView().then {
        $0.layer.cornerRadius = 12
    }
    var kaltext1 = UILabel().then {
        $0.text = "789.6Kal"
        $0.font = .systemFont(ofSize: 12)
    }
    var kalBox2 = UIView().then {
        $0.layer.cornerRadius = 12
    }
    var kaltext2 = UILabel().then {
        $0.text = "789.6Kal"
        $0.font = .systemFont(ofSize: 12)
    }
    var kalBox3 = UIView().then {
        $0.layer.cornerRadius = 12
    }
    var kaltext3 = UILabel().then {
        $0.text = "789.6Kal"
        $0.font = .systemFont(ofSize: 12)
    }
    var calenderImg = UIImageView().then {
        $0.image = UIImage(systemName: "calendar.png")
    }
    
    @objc func modeChange() {
        let allLabels: [UILabel] = [profileSchool, profileName, todaymenu, menu1, menu2, menu3, kaltext1, kaltext2, kaltext3]
        let allButtons: [UIButton] = [navigationBar2, navigationButton]
        if view.backgroundColor == .white {
            view.backgroundColor = UIColor(red: 0x22/255, green: 0x22/255, blue: 0x22/255, alpha: 1)
            
            profileImg.tintColor = UIColor(red: 0xbd/255, green: 0xa7/255, blue: 0xf7/255, alpha: 1)
            allLabels.forEach { $0.textColor = .white }
            allButtons.forEach { $0.tintColor = .white }
            pickLogo.image = UIImage(named: "picklogoDark.png")
            todaymenu.textColor = UIColor(red: 0xc6/255, green: 0xc5/255, blue: 0xc7/255, alpha: 1)
            breakfastTitle.textColor = UIColor(red: 0xde/255, green: 0xd3/255, blue: 0xfb/255, alpha: 1)
            dinnerTitle.textColor = UIColor(red: 0xde/255, green: 0xd3/255, blue: 0xfb/255, alpha: 1)
            lunchTitle.textColor = UIColor(red: 0xde/255, green: 0xd3/255, blue: 0xfb/255, alpha: 1)
            todaymenuBox.backgroundColor = UIColor(red: 0x98/255, green: 0x7c/255, blue: 0xf1/255, alpha: 1)
            kalBox1.backgroundColor = UIColor(red: 0xc7/255, green: 0xb4/255, blue: 0xf8/255, alpha: 1)
            kalBox2.backgroundColor = UIColor(red: 0xc7/255, green: 0xb4/255, blue: 0xf8/255, alpha: 1)
            kalBox3.backgroundColor = UIColor(red: 0xc7/255, green: 0xb4/255, blue: 0xf8/255, alpha: 1)
            kaltext2.textColor = UIColor(red: 0x22/255, green: 0x22/255, blue: 0x22/255, alpha: 1)
            kaltext3.textColor = UIColor(red: 0x22/255, green: 0x22/255, blue: 0x22/255, alpha: 1)
        }
        else {
            view.backgroundColor = .white
            
            allLabels.forEach { $0.textColor = .black }
            allButtons.forEach{ $0.tintColor = .black}
            profileImg.tintColor = UIColor(red: 0xa6/255, green: 0x6a/255, blue: 0xfb/255, alpha: 1)
            pickLogo.image = UIImage(named: "picklogoLight.png")
            todaymenu.textColor = UIColor(red: 0x79/255, green: 0x77/255, blue: 0x7c/255, alpha: 1)
            breakfastTitle.textColor = UIColor(red: 0x83/255, green: 0x40/255, blue: 0xf9/255, alpha: 1)
            lunchTitle.textColor = UIColor(red: 0x83/255, green: 0x40/255, blue: 0xf9/255, alpha: 1)
            dinnerTitle.textColor = UIColor(red: 0x83/255, green: 0x40/255, blue: 0xf9/255, alpha: 1)
            todaymenuBox.backgroundColor = UIColor(red: 0xf2/255, green: 0xea/255, blue: 0xfe/255, alpha: 1)
            kalBox1.backgroundColor = UIColor(red: 0x96/255, green: 0x50/255, blue: 0xfa/255, alpha: 1)
            kaltext1.textColor = .white
            kalBox2.backgroundColor = UIColor(red: 0x96/255, green: 0x50/255, blue: 0xfa/255, alpha: 1)
            kaltext2.textColor = .white
            kalBox3.backgroundColor = UIColor(red: 0x96/255, green: 0x50/255, blue: 0xfa/255, alpha: 1)
            kaltext3.textColor = .white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UIColor(red: 0x22/255, green: 0x22/255, blue: 0x22/255, alpha: 1)
        
        view.backgroundColor = .white
        modeChange()
        addview()
        constraints()
    }
    
    func addview() {
        view.addSubview(pickLogo)
        view.addSubview(profileImg)
        view.addSubview(navigationButton)
        view.addSubview(navigationBar2)
        view.addSubview(profileSchool)
        view.addSubview(profileName)
        view.addSubview(todaymenu)
        view.addSubview(todaymenuBox)
        view.addSubview(breakfastTitle)
        view.addSubview(lunchTitle)
        view.addSubview(dinnerTitle)
        view.addSubview(menu1)
        view.addSubview(menu2)
        view.addSubview(menu3)
        view.addSubview(kalBox1)
        view.addSubview(kaltext1)
        view.addSubview(kalBox2)
        view.addSubview(kaltext2)
        view.addSubview(kalBox3)
        view.addSubview(kaltext3)
        view.addSubview(calenderImg)
    }
    
    func constraints() {
        pickLogo.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(24)
            $0.top.equalToSuperview().offset(51.31)
            $0.width.equalTo(56)
            $0.height.equalTo(19.38)
        }
        navigationButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(60)
            make.width.height.equalTo(24)
            make.centerY.equalTo(pickLogo)
        }
        navigationBar2.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(24)
            make.width.height.equalTo(24)
            make.centerY.equalTo(pickLogo)
        }
        profileImg.snp.makeConstraints { make in
            make.top.equalTo(pickLogo.snp.bottom).offset(36)
            make.width.height.equalTo(60)
            make.leading.equalToSuperview().offset(24)
        }
        profileSchool.snp.makeConstraints { make in
            make.leading.equalTo(profileImg.snp.trailing).offset(24)
            make.top.equalTo(profileImg.snp.top).inset(10)
        }
        profileName.snp.makeConstraints {
            $0.top.equalTo(profileSchool.snp.bottom).offset(2)
            $0.leading.equalTo(profileImg.snp.trailing).offset(24)
            $0.height.equalTo(19)
        }
        todaymenu.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).inset(24)
            make.top.equalTo(profileImg.snp.bottom).offset(52)
        }
        todaymenuBox.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(134)
            make.top.equalTo(todaymenu.snp.bottom).offset(20)
        }
        breakfastTitle.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.centerY.equalTo(todaymenuBox)
        }
        menu1.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(134.5)
            make.centerY.equalTo(todaymenuBox)
        }
        kalBox1.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(24)
            make.width.equalTo(72)
            make.height.equalTo(22)
            make.centerY.equalTo(todaymenuBox)
        }
        kaltext1.snp.makeConstraints { make in
            make.center.equalTo(kalBox1)
        }
        lunchTitle.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.top.equalTo(todaymenuBox.snp.bottom).offset(60.5)
        }
        menu2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(134.5)
            make.centerY.equalTo(lunchTitle)
        }
        kalBox2.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(24)
            make.width.equalTo(72)
            make.height.equalTo(22)
            make.centerY.equalTo(lunchTitle)
        }
        kaltext2.snp.makeConstraints { make in
            make.center.equalTo(kalBox2)
        }
        dinnerTitle.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.top.equalTo(todaymenuBox.snp.bottom).offset(198.5)
        }
        menu3.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(134.5)
            make.centerY.equalTo(dinnerTitle)
        }
        kalBox3.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(24)
            make.width.equalTo(72)
            make.height.equalTo(22)
            make.centerY.equalTo(dinnerTitle)
        }
        kaltext3.snp.makeConstraints { make in
            make.center.equalTo(kalBox3)
        }
    }
}
