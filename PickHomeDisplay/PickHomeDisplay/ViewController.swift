import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    var navi = UIView().then {
        $0.backgroundColor = .white
        $0.layer.borderWidth = 0.5
    }
    var topBar = UIView()
    var profileBox = UIView()
    var mealBox = UIView()
    var teacherBox = UIView().then {
        $0.layer.cornerRadius = 12
    }
    
    var pickLogo = UIImageView().then {
        $0.contentMode = .scaleAspectFit
    }
    var navigationBar2 = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "bell.fill"), for: .normal);
    }
    var navigationButton = UIButton(type: .system).then {
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
    var homeText = UILabel().then {
        $0.text = "홈"
        $0.font = .systemFont(ofSize: 11)
    }
    var forkImg = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "fork.knife"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var forkText = UILabel().then {
        $0.text = "급식"
        $0.font = .systemFont(ofSize: 11)
    }
    var checkImg = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var checkText = UILabel().then {
        $0.text = "신청"
        $0.font = .systemFont(ofSize: 11)
    }
    var calendarIcon = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "calendar"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var calendarText = UILabel().then {
        $0.text = "일정"
        $0.font = .systemFont(ofSize: 11)
    }
    var wholeIcon = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "rectangle.grid.2x2.fill"), for: .normal)
        $0.contentMode = .scaleAspectFit
    }
    var wholeText = UILabel().then {
        $0.text = "전체"
        $0.font = .systemFont(ofSize: 11)
    }
    
    @objc func modeChange() {
        let blackAwhite: [Any] = [profileSchool, profileName, todaymenu, menu1, menu2, menu3, navigationBar2, navigationButton]
        let main4:[Any] = [profileImg, homeImg, homeText]
        let main5: [UIView] = [kalBox1, kalBox2, kalBox3]
        let main7:[Any] = [breakfastTitle, lunchTitle, dinnerTitle]
        let gray5:[Any] = [forkImg, forkText, checkImg, checkText, calendarIcon, calendarText, wholeIcon, wholeText]
        let BG:[Any] = [kaltext2, kaltext3]
        
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
            gray5.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.gray400 } else { ($0 as! UIView).tintColor = UIColor.gray400}
            }
            BG.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.dBG } else { ($0 as! UIView).tintColor = UIColor.dBG}
            }
            
            pickLogo.image = UIImage(named: "picklogoDark.png")
            navigationButton.setImage(UIImage(systemName: "moon.fill"), for: .normal)
            
            todaymenu.textColor = UIColor.gray200
            todaymenuBox.backgroundColor = UIColor.dMain50
            
            navi.layer.borderColor = UIColor.gray800.cgColor
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
            gray5.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.gray500 } else { ($0 as! UIView).tintColor = UIColor.gray500}
            }
            BG.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.lBG } else { ($0 as! UIView).tintColor = UIColor.lBG}
            }
            
            pickLogo.image = UIImage(named: "picklogoLight.png")
            navigationButton.setImage(UIImage(systemName: "sun.max.fill"), for: .normal)
            
            todaymenu.textColor = UIColor.gray700
            todaymenuBox.backgroundColor = UIColor.lMain50
            
            navi.layer.borderColor = UIColor.gray100.cgColor
            navi.backgroundColor = UIColor.lBG
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
        view.addSubview(topBar)
        topBar.addSubview(pickLogo)
        topBar.addSubview(navigationButton)
        topBar.addSubview(navigationBar2)
        
        view.addSubview(profileBox)
        profileBox.addSubview(profileImg)
        profileBox.addSubview(profileSchool)
        profileBox.addSubview(profileName)
        
        view.addSubview(mealBox)
        mealBox.addSubview(todaymenu)
        
        mealBox.addSubview(lunchTitle)
        mealBox.addSubview(dinnerTitle)
        mealBox.addSubview(menu2)
        mealBox.addSubview(menu3)
        mealBox.addSubview(kalBox2)
        mealBox.addSubview(kalBox3)
        mealBox.addSubview(todaymenuBox)
        
        todaymenuBox.addSubview(breakfastTitle)
        todaymenuBox.addSubview(kalBox1)
        todaymenuBox.addSubview(menu1)
        
        kalBox1.addSubview(kaltext1)
        kalBox2.addSubview(kaltext2)
        kalBox3.addSubview(kaltext3)
        
        view.addSubview(teacherBox)
        teacherBox.addSubview(calenderImg)
        
        view.addSubview(navi)
        navi.addSubview(homeImg)
        navi.addSubview(homeText)
        navi.addSubview(forkImg)
        navi.addSubview(forkText)
        navi.addSubview(checkImg)
        navi.addSubview(checkText)
        navi.addSubview(calendarIcon)
        navi.addSubview(calendarText)
        navi.addSubview(wholeIcon)
        navi.addSubview(wholeText)
    }
    
    func constraints() {
        topBar.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.height.equalTo(34)
        }
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
        
        profileBox.snp.makeConstraints {
            $0.width.centerX.equalToSuperview()
            $0.height.equalTo(84)
            $0.top.equalTo(topBar).offset(32)
        }
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
        
        mealBox.snp.makeConstraints {
            $0.top.equalTo(profileBox.snp.bottom).offset(32)
            $0.width.equalToSuperview()
            $0.height.equalTo(457)
        }
        todaymenu.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24)
            $0.top.equalToSuperview().inset(8)
        }
        todaymenuBox.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalTo(134)
            $0.top.equalToSuperview().inset(47)
        }
        
        breakfastTitle.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24)
            $0.centerY.equalTo(todaymenuBox)
        }
        menu1.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(134.5)
            $0.centerY.equalToSuperview()
        }
        kalBox1.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(24)
            $0.width.equalTo(72)
            $0.height.equalTo(22)
            $0.centerY.equalToSuperview()
        }
        kaltext1.snp.makeConstraints {
            $0.center.equalTo(kalBox1)
        }
        
        lunchTitle.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24)
            $0.top.equalTo(todaymenuBox.snp.bottom).offset(60.5)
        }
        menu2.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(134.5)
            $0.centerY.equalTo(lunchTitle)
        }
        kalBox2.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(24)
            $0.width.equalTo(72)
            $0.height.equalTo(22)
            $0.centerY.equalTo(lunchTitle)
        }
        kaltext2.snp.makeConstraints {
            $0.center.equalTo(kalBox2)
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
    }
}
extension UIColor {
    
    static let dBG = UIColor(red: 0x22/255, green: 0x22/255, blue: 0x22/255, alpha: 1)
    static let lBG = UIColor(red: 0xff/255, green: 0xff/255, blue: 0xff/255, alpha: 1)
    
    static let gray50 = UIColor(red: 0xf1/255, green: 0xf1/255, blue: 0xf2/255, alpha: 1)
    static let gray100 = UIColor(red: 0xdd/255, green: 0xdc/255, blue: 0xdd/255, alpha: 1)
    static let gray200 = UIColor(red: 0xc6/255, green: 0xc5/255, blue: 0xc7/255, alpha: 1)
    static let gray300 = UIColor(red: 0xaf/255, green: 0xad/255, blue: 0xb1/255, alpha: 1)
    static let gray400 = UIColor(red: 0x9d/255, green: 0x9c/255, blue: 0xa0/255, alpha: 1)
    static let gray500 = UIColor(red: 0x8c/255, green: 0x8a/255, blue: 0x8f/255, alpha: 1)
    static let gray600 = UIColor(red: 0x84/255, green: 0x82/255, blue: 0x87/255, alpha: 1)
    static let gray700 = UIColor(red: 0x79/255, green: 0x77/255, blue: 0x7c/255, alpha: 1)
    static let gray800 = UIColor(red: 0x6f/255, green: 0x6d/255, blue: 0x72/255, alpha: 1)
    static let gray900 = UIColor(red: 0x5c/255, green: 0x5a/255, blue: 0x60/255, alpha: 1)
    
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
