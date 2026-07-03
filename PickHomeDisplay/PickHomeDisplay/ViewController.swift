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
    
    var pickLogo = UIImageView().then {
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
    var profileName = UILabel().then {
        $0.text = "1학년 2반 13번 진서윤"
        $0.font = .systemFont(ofSize: 16)
    }
    var profileImg = UIImageView().then {
        $0.image = UIImage(systemName: "person.circle.fill")
        $0.contentMode = .scaleAspectFit
    }
    
    var todaymenuBox = UIView()
    var todaymenu = UILabel().then {
        $0.text = "오늘의 급식"
        $0.font = .systemFont(ofSize: 16)
    }
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
        $0.textColor = .white
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
    
    var homeImg = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "house.fill"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var forkImg = UIImageView().then {
        $0.image = UIImage(systemName: "fork.knife")
        $0.contentMode = .scaleAspectFit
    }
    var navi = UIView().then {
        $0.backgroundColor = .white
        $0.layer.borderWidth = 0.5
        $0.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    @objc func modeChange() {
        let blackAwhite: [Any] = [profileSchool, profileName, todaymenu, menu1, menu2, menu3, navigationBar2, navigationButton]
        let main4:[Any] = [profileImg, homeImg]
        let main5: [UIView] = [kalBox1, kalBox2, kalBox3]
        let main7:[Any ] = [breakfastTitle, lunchTitle, dinnerTitle]
        
        if view.backgroundColor == .white {
            view.backgroundColor = UIColor.dBG
            
            blackAwhite.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = .white } else { ($0 as! UIButton).tintColor = .white }
            }
            main7.forEach {
                if $0 is UILabel {
                    ($0 as! UILabel).textColor = UIColor.dMain700
                }
            }
            main5.forEach { $0.backgroundColor = UIColor.dMain500}
            main4.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.dMain400 } else { ($0 as! UIView).tintColor = UIColor.dMain400}
            }
            
            pickLogo.image = UIImage(named: "picklogoDark.png")
            
            todaymenu.textColor = UIColor(red: 0xc6/255, green: 0xc5/255, blue: 0xc7/255, alpha: 1)
            
            todaymenuBox.backgroundColor = UIColor.dMain50
            kaltext2.textColor = UIColor.dBG
            kaltext3.textColor = UIColor.dBG
            navi.backgroundColor = UIColor.dBG
        }
        else {
            view.backgroundColor = .white
            
            blackAwhite.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = .black } else { ($0 as! UIButton).tintColor = .black }
            }
            main4.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.lMain400 } else { ($0 as! UIView).tintColor = UIColor.lMain400}
            }
            main7.forEach {
                if $0 is UILabel {
                    ($0 as! UILabel).textColor = UIColor.lMain700
                }
            }
            main5.forEach { $0.backgroundColor = UIColor.lMain500}
            
            pickLogo.image = UIImage(named: "picklogoLight.png")
            
            todaymenu.textColor = UIColor(red: 0x79/255, green: 0x77/255, blue: 0x7c/255, alpha: 1)
            todaymenuBox.backgroundColor = UIColor.lMain50
            kaltext2.textColor = .white
            kaltext3.textColor = .white
            navi.backgroundColor = .white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        modeChange()
        addview()
        constraints()
    }
    
    func addview() {
        view.addSubview(pickLogo)
        view.addSubview(navigationButton)
        view.addSubview(navigationBar2)
        
        view.addSubview(profileImg)
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
        
        view.addSubview(navi)
        navi.addSubview(homeImg)
    }
    
    func constraints() {
        pickLogo.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(24)
            $0.top.equalToSuperview().offset(51.31)
            $0.width.equalTo(56)
            $0.height.equalTo(19.38)
        }
        navigationButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(60)
            $0.width.height.equalTo(24)
            $0.centerY.equalTo(pickLogo)
        }
        navigationBar2.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(24)
            $0.width.height.equalTo(24)
            $0.centerY.equalTo(pickLogo)
        }
        profileImg.snp.makeConstraints {
            $0.top.equalTo(pickLogo.snp.bottom).offset(36)
            $0.width.height.equalTo(60)
            $0.leading.equalToSuperview().offset(24)
        }
        profileSchool.snp.makeConstraints {
            $0.leading.equalTo(profileImg.snp.trailing).offset(24)
            $0.top.equalTo(profileImg.snp.top).inset(10)
        }
        profileName.snp.makeConstraints {
            $0.top.equalTo(profileSchool.snp.bottom).offset(2)
            $0.leading.equalTo(profileImg.snp.trailing).offset(24)
            $0.height.equalTo(19)
        }
        todaymenu.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading).inset(24)
            $0.top.equalTo(profileImg.snp.bottom).offset(52)
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
        dinnerTitle.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24)
            $0.top.equalTo(todaymenuBox.snp.bottom).offset(198.5)
        }
        menu3.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(134.5)
            $0.centerY.equalTo(dinnerTitle)
        }
        kalBox3.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(24)
            $0.width.equalTo(72)
            $0.height.equalTo(22)
            $0.centerY.equalTo(dinnerTitle)
        }
        kaltext3.snp.makeConstraints {
            $0.center.equalTo(kalBox3)
        }
        navi.snp.makeConstraints {
            $0.height.equalTo(86)
            $0.leading.trailing.equalToSuperview().inset(-2)
            $0.bottom.equalToSuperview().inset(-2)
        }
        homeImg.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(27)
            $0.top.equalToSuperview().inset(8)
            $0.width.height.equalTo(24)
        }
    }
}
extension UIColor {
    
    static let dBG = UIColor(red: 0x22/255, green: 0x22/255, blue: 0x22/255, alpha: 1)
    static let lBG = UIColor(red: 0xff/255, green: 0xff/255, blue: 0xff/255, alpha: 1)
    
    
    
    static let dMain50 = UIColor(red: 0x98/255, green: 0x7c/255, blue: 0xf1/255, alpha: 1)
    static let dMain100 = UIColor(red: 0xa6/255, green: 0x8c/255, blue: 0xf3/255, alpha: 1)
    static let dMain200 = UIColor(red: 0xae/255, green: 0x96/255, blue: 0xf5/255, alpha: 1)
    static let dMain300 = UIColor(red: 0xb7/255, green: 0x9f/255, blue: 0xf6/255, alpha: 1)
    static let dMain400 = UIColor(red: 0xbd/255, green: 0xa7/255, blue: 0xf7/255, alpha: 1)
    static let dMain500 = UIColor(red: 0xc7/255, green: 0xb4/255, blue: 0xf8/255, alpha: 1)
    static let dMain600 = UIColor(red: 0xd1/255, green: 0xc1/255, blue: 0xf9/255, alpha: 1)
    static let dMain700 = UIColor(red: 0xde/255, green: 0xd3/255, blue: 0xfb/255, alpha: 1)
    static let dMain800 = UIColor(red: 0xeb/255, green: 0xe5/255, blue: 0xfd/255, alpha: 1)
    static let dMain900 = UIColor(red: 0xf7/255, green: 0xf4/255, blue: 0xfe/255, alpha: 1)
    
    static let lMain50 = UIColor(red: 0xf2/255, green: 0xea/255, blue: 0xfe/255, alpha: 1)
    static let lMain100 = UIColor(red: 0xe0/255, green: 0xcb/255, blue: 0xfe/255, alpha: 1)
    static let lMain200 = UIColor(red: 0xcb/255, green: 0xa8/255, blue: 0xfd/255, alpha: 1)
    static let lMain300 = UIColor(red: 0xb6/255, green: 0x85/255, blue: 0xfc/255, alpha: 1)
    static let lMain400 = UIColor(red: 0xa6/255, green: 0x6a/255, blue: 0xfb/255, alpha: 1)
    static let lMain500 = UIColor(red: 0x96/255, green: 0x50/255, blue: 0xfa/255, alpha: 1)
    static let lMain600 = UIColor(red: 0x8e/255, green: 0x49/255, blue: 0xf9/255, alpha: 1)
    static let lMain700 = UIColor(red: 0x83/255, green: 0x40/255, blue: 0xf9/255, alpha: 1)
    static let lMain800 = UIColor(red: 0x79/255, green: 0x37/255, blue: 0xf8/255, alpha: 1)
    static let lMain900 = UIColor(red: 0x68/255, green: 0x27/255, blue: 0xf6/255, alpha: 1)
}
