//
//  ViewController.swift
//  PickHomeDisplay
//
//  Created by Seoyun Jin on 5/30/26.
//

import UIKit

class ViewController: UIViewController {
    var profileImg = UIImageView()
    var navigationBar2 = UIButton(type: .system)
    var navigationButton = UIButton(type: .system)
    var profileSchool = UILabel()
    var pickLogo = UIImageView()
    var profileName = UILabel()
    var todaymenu = UILabel()
    var todaymenuBox = UIView()
    var breakfastTitle = UILabel()
    var lunchTitle = UILabel()
    var dinnerTitle = UILabel()
    var menu1 = UILabel()
    var menu2 = UILabel()
    var menu3 = UILabel()
    var kalBox1 = UIView()
    var kaltext1 = UILabel()
    var kalBox2 = UIView()
    var kaltext2 = UILabel()
    var kalBox3 = UIView()
    var kaltext3 = UILabel()
    
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
        
        view.backgroundColor = UIColor(red: 0x22/255, green: 0x22/255, blue: 0x22/255, alpha: 1)
        
        profileImg.image = UIImage(systemName: "person.circle.fill")
        profileImg.contentMode = .scaleAspectFit
        
        navigationBar2.setImage(UIImage(systemName: "bell.fill"), for: .normal);
        
        navigationButton.setImage(UIImage(systemName: "sun.max.fill"), for: .normal);
        navigationButton.addTarget(self, action: #selector(modeChange), for: .touchUpInside)
        
        profileSchool.text = "대덕소프트웨어마이스터고등학교"
        profileSchool.font = .systemFont(ofSize: 16)
        
        profileName.text = "1학년 2반 16번 홍성찬"
        profileName.font = .systemFont(ofSize: 16)
        
        pickLogo.contentMode = .scaleAspectFit
        
        todaymenu.text = "오늘의 급식"
        todaymenu.font = .systemFont(ofSize: 16)
        
        breakfastTitle.text = "조식"
        breakfastTitle.font = .systemFont(ofSize: 16, weight: .bold)
        
        lunchTitle.text = "중식"
        lunchTitle.font = .systemFont(ofSize: 16, weight: .bold)
        
        dinnerTitle.text = "석식"
        dinnerTitle.font = .systemFont(ofSize: 16, weight: .bold)
        
        menu1.numberOfLines = 0
        menu1.text = "녹두찰밥\n스팸구이\n시리얼(블루베리)\n우유\n한우궁중떡볶이\n미니고구마파이"
        menu1.font = .systemFont(ofSize: 14)
        
        menu2.numberOfLines = 0
        menu2.text = "녹두찰밥\n스팸구이\n시리얼(블루베리)\n우유\n한우궁중떡볶이\n미니고구마파이"
        menu2.font = .systemFont(ofSize: 14)
        
        menu3.numberOfLines = 0
        menu3.text = "녹두찰밥\n스팸구이\n시리얼(블루베리)\n우유\n한우궁중떡볶이\n미니고구마파이"
        menu3.font = .systemFont(ofSize: 14)
        
        kalBox1.layer.cornerRadius = 12
        
        kaltext1.text = "789.6Kal"
        kaltext1.font = .systemFont(ofSize: 12)
        
        kalBox2.layer.cornerRadius = 12
        
        kaltext2.text = "789.6Kal"
        kaltext2.font = .systemFont(ofSize: 12)
        
        kalBox3.layer.cornerRadius = 12
        
        kaltext3.text = "789.6Kal"
        kaltext3.font = .systemFont(ofSize: 12)
        
        
        profileImg.translatesAutoresizingMaskIntoConstraints = false
        pickLogo.translatesAutoresizingMaskIntoConstraints = false
        navigationButton.translatesAutoresizingMaskIntoConstraints = false
        navigationBar2.translatesAutoresizingMaskIntoConstraints = false
        profileSchool.translatesAutoresizingMaskIntoConstraints = false
        profileName.translatesAutoresizingMaskIntoConstraints = false
        todaymenu.translatesAutoresizingMaskIntoConstraints = false
        todaymenuBox.translatesAutoresizingMaskIntoConstraints = false
        breakfastTitle.translatesAutoresizingMaskIntoConstraints = false
        lunchTitle.translatesAutoresizingMaskIntoConstraints = false
        dinnerTitle.translatesAutoresizingMaskIntoConstraints = false
        menu1.translatesAutoresizingMaskIntoConstraints = false
        menu2.translatesAutoresizingMaskIntoConstraints = false
        menu3.translatesAutoresizingMaskIntoConstraints = false
        kalBox1.translatesAutoresizingMaskIntoConstraints = false
        kalBox2.translatesAutoresizingMaskIntoConstraints = false
        kalBox3.translatesAutoresizingMaskIntoConstraints = false
        kaltext1.translatesAutoresizingMaskIntoConstraints = false
        kaltext2.translatesAutoresizingMaskIntoConstraints = false
        kaltext3.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        NSLayoutConstraint.activate([
            pickLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            pickLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 51.31),
            pickLogo.widthAnchor.constraint(equalToConstant: 56),
            pickLogo.heightAnchor.constraint(equalToConstant: 19.38),
            
            profileImg.topAnchor.constraint(equalTo: pickLogo.bottomAnchor, constant: 36),
            profileImg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            profileImg.widthAnchor.constraint(equalToConstant: 60),
            profileImg.heightAnchor.constraint(equalToConstant: 60),
            
            navigationButton.leadingAnchor.constraint(equalTo: pickLogo.trailingAnchor, constant: 226),
            navigationButton.centerYAnchor.constraint(equalTo: pickLogo.centerYAnchor),
            navigationButton.widthAnchor.constraint(equalToConstant: 24),
            navigationButton.heightAnchor.constraint(equalToConstant: 24),
            
            navigationBar2.leadingAnchor.constraint(equalTo: navigationButton.trailingAnchor, constant: 12),
            navigationBar2.heightAnchor.constraint(equalTo: navigationButton.heightAnchor),
            navigationBar2.widthAnchor.constraint(equalTo: navigationButton.widthAnchor),
            navigationBar2.centerYAnchor.constraint(equalTo: navigationButton.centerYAnchor),
            
            profileSchool.leadingAnchor.constraint(equalTo: profileImg.trailingAnchor, constant: 24),
            profileSchool.topAnchor.constraint(equalTo: profileImg.topAnchor, constant: 10),
            
            profileName.leadingAnchor.constraint(equalTo: profileSchool.leadingAnchor),
            profileName.topAnchor.constraint(equalTo: profileSchool.bottomAnchor, constant: 2),
            
            todaymenu.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            todaymenu.topAnchor.constraint(equalTo: profileImg.bottomAnchor, constant: 52),
            
            todaymenuBox.widthAnchor.constraint(equalTo: view.widthAnchor),
            todaymenuBox.topAnchor.constraint(equalTo: todaymenu.bottomAnchor, constant: 20),
            todaymenuBox.heightAnchor.constraint(equalToConstant: 134),
            
            breakfastTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            breakfastTitle.centerYAnchor.constraint(equalTo: todaymenuBox.centerYAnchor),
            
            lunchTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            lunchTitle.topAnchor.constraint(equalTo: todaymenuBox.bottomAnchor, constant: 60.5),
            
            dinnerTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            dinnerTitle.topAnchor.constraint(equalTo: todaymenuBox.bottomAnchor, constant: 198.5),
            
            menu1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 134.5),
            menu1.centerYAnchor.constraint(equalTo: todaymenuBox.centerYAnchor),
            
            menu2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 134.5),
            menu2.centerYAnchor.constraint(equalTo: lunchTitle.centerYAnchor),
            
            menu3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 134.5),
            menu3.centerYAnchor.constraint(equalTo: dinnerTitle.centerYAnchor),
            
            kalBox1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            kalBox1.widthAnchor.constraint(equalToConstant: 72),
            kalBox1.heightAnchor.constraint(equalToConstant: 22),
            kalBox1.centerYAnchor.constraint(equalTo: todaymenuBox.centerYAnchor),
            
            kaltext1.centerXAnchor.constraint(equalTo: kalBox1.centerXAnchor),
            kaltext1.centerYAnchor.constraint(equalTo: kalBox1.centerYAnchor),
            
            kalBox2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            kalBox2.widthAnchor.constraint(equalToConstant: 72),
            kalBox2.heightAnchor.constraint(equalToConstant: 22),
            kalBox2.centerYAnchor.constraint(equalTo: lunchTitle.centerYAnchor),
            
            kaltext2.centerXAnchor.constraint(equalTo: kalBox2.centerXAnchor),
            kaltext2.centerYAnchor.constraint(equalTo: kalBox2.centerYAnchor),
            
            kalBox3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            kalBox3.widthAnchor.constraint(equalToConstant: 72),
            kalBox3.heightAnchor.constraint(equalToConstant: 22),
            kalBox3.centerYAnchor.constraint(equalTo: dinnerTitle.centerYAnchor),
            
            kaltext3.centerXAnchor.constraint(equalTo: kalBox3.centerXAnchor),
            kaltext3.centerYAnchor.constraint(equalTo: kalBox3.centerYAnchor),
        ])
    }
}

