import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    var scrollView = UIScrollView()
    var stackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 32
    }
    
    var navi = UIView().then {
        $0.backgroundColor = .white
        $0.layer.borderWidth = 0.5
    }
    var topBar = TopBarView()
    var profileBox = ProfileView()
    var mealBox = UIView()
    var teacherBox = UIView().then {
        $0.layer.cornerRadius = 12
    }
    var noticeBox = UIView()
    
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
        $0.image = UIImage(named: "calender.png")
    }
    var teacherToday = UILabel().then {
        $0.text = "오늘의 자습 감독 선생님 입니다."
        $0.font = .systemFont(ofSize: 13)
    }
    var f2 = UILabel().then {
        $0.text = "2층"
        $0.font = .systemFont(ofSize: 13)
    }
    var f3 = UILabel().then {
        $0.text = "3층"
        $0.font = .systemFont(ofSize: 13)
    }
    var f4 = UILabel().then {
        $0.text = "4층"
        $0.font = .systemFont(ofSize: 13)
    }
    var t2 = UILabel().then {
        $0.text = "오상진 선생님"
        $0.font = .systemFont(ofSize: 16)
    }
    var t3 = UILabel().then {
        $0.text = "신지선 선생님"
        $0.font = .systemFont(ofSize: 16)
    }
    var t4 = UILabel().then {
        $0.text = "김현태 선생님"
        $0.font = .systemFont(ofSize: 16)
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
    
    var lastestNotice = UILabel().then {
        $0.text = "최신 공지"
        $0.font = .systemFont(ofSize: 17)
    }
    var moreNotice = UIButton(type: .system).then {
        $0.setTitle("더보기", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 17)
    }
    var notiIcon1 = UIImageView().then {
        $0.image = UIImage(systemName: "ellipsis.message.fill")
    }
    var notiIcon2 = UIImageView().then {
        $0.image = UIImage(systemName: "ellipsis.message.fill")
    }
    var notiIcon3 = UIImageView().then {
        $0.image = UIImage(systemName: "ellipsis.message.fill")
    }
    var notiTitle1 = UILabel().then {
        $0.text = "주말 급식 신청 안내"
        $0.font = .systemFont(ofSize: 17)
    }
    var notiTitle2 = UILabel().then {
        $0.text = "외출 신청 안내"
        $0.font = .systemFont(ofSize: 17)
    }
    var notiTitle3 = UILabel().then {
        $0.text = "[중요] TOPCIT 시험날 일정 안내"
        $0.font = .systemFont(ofSize: 17)
    }
    var dateNoti1 = UILabel().then {
        $0.text = "1일 전"
        $0.font = .systemFont(ofSize: 13)
    }
    var dateNoti2 = UILabel().then {
        $0.text = "1달 전"
        $0.font = .systemFont(ofSize: 13)
    }
    var dateNoti3 = UILabel().then {
        $0.text = "2달 전"
        $0.font = .systemFont(ofSize: 13)
    }
   
    @objc func modeChange() {
        let blackAwhite: [Any] = [profileBox.profileSchool, profileBox.profileName, todaymenu, menu1, menu2, menu3, topBar.navigationBar2, topBar.navigationButton, t2, t3, t4, notiTitle1, notiTitle2, notiTitle3]
        
        let main3:[Any] = [notiIcon1, notiIcon2, notiIcon3]
        let main4:[Any] = [profileBox.profileImg, homeImg, homeText]
        let main5: [UIView] = [kalBox1, kalBox2, kalBox3]
        let main6: [UILabel] = [f2, f3, f4]
        let main7:[Any] = [breakfastTitle, lunchTitle, dinnerTitle]
        
        let gray5:[Any] = [forkImg, forkText, checkImg, checkText, calendarIcon, calendarText, wholeIcon, wholeText]
        let gray6:[Any] = [dateNoti1, dateNoti2, dateNoti3]
        let BG:[Any] = [kaltext2, kaltext3]
        
        if view.backgroundColor == .white {
            // MARK: 다크모드로 만들기
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
            main6.forEach { $0.textColor = UIColor.dMain600}
            main4.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.dMain400 } else { ($0 as! UIView).tintColor = UIColor.dMain400}
            }
            main3.forEach {
                if $0 is UILabel {
                    ($0 as! UILabel).textColor = UIColor.dMain300
                }
                else {
                    ($0 as! UIView).tintColor = UIColor.dMain300
                }
            }
            gray5.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.gray400 } else { ($0 as! UIView).tintColor = UIColor.gray400}
            }
            gray6.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.gray300 }
            }
            
            BG.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.dBG } else { ($0 as! UIView).tintColor = UIColor.dBG}
            }
            
            topBar.pickLogo.image = UIImage(named: "picklogoDark.png")
            topBar.navigationButton.setImage(UIImage(systemName: "moon.fill"), for: .normal)
            
            todaymenu.textColor = UIColor.gray200
            todaymenuBox.backgroundColor = UIColor.dMain50
            
            navi.layer.borderColor = UIColor.gray800.cgColor
            navi.backgroundColor = UIColor.dBG
            
            teacherBox.backgroundColor = UIColor.gray900
            teacherToday.textColor = UIColor.gray50
            lastestNotice.textColor = UIColor.gray200
            moreNotice.tintColor = UIColor.gray100
        }
        else {
            view.backgroundColor = .white
            // MARK: 라이트모드로 만들기
            blackAwhite.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = .black } else { ($0 as! UIButton).tintColor = .black }
            }
            main7.forEach {
                if $0 is UILabel {
                    ($0 as! UILabel).textColor = UIColor.lMain700
                }
            }
            main6.forEach { $0.textColor = UIColor.lMain600}
            main5.forEach { $0.backgroundColor = UIColor.lMain500}
            main4.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.lMain400 } else { ($0 as! UIView).tintColor = UIColor.lMain400}
            }
            main3.forEach {
                if $0 is UILabel {
                    ($0 as! UILabel).textColor = UIColor.lMain300
                }
                else {
                    ($0 as! UIView).tintColor = UIColor.lMain300
                }
            }
            gray5.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.gray500 } else { ($0 as! UIView).tintColor = UIColor.gray500}
            }
            gray6.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.gray600 }
            }
            BG.forEach{
                if $0 is UILabel { ($0 as! UILabel).textColor = UIColor.lBG } else { ($0 as! UIView).tintColor = UIColor.lBG}
            }
            
            topBar.pickLogo.image = UIImage(named: "picklogoLight.png")
            topBar.navigationButton.setImage(UIImage(systemName: "sun.max.fill"), for: .normal)
            
            todaymenu.textColor = UIColor.gray700
            todaymenuBox.backgroundColor = UIColor.lMain50
            
            navi.layer.borderColor = UIColor.gray100.cgColor
            navi.backgroundColor = UIColor.lBG
            
            teacherBox.backgroundColor = UIColor.gray50
            teacherToday.textColor = UIColor.gray900
            lastestNotice.textColor = UIColor.gray700
            moreNotice.tintColor = UIColor.gray800
        }
    }
    // MARK: 뷰 디드 로드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        topBar.setup()
        profileBox.setup()
        addview()
        constraints()
        modeChange()

    }
    
    func addview() {
        view.addSubview(scrollView)
        view.addSubview(topBar)
        view.addSubview(navi)
        
        scrollView.addSubview(stackView)
        
        stackView.addArrangedSubview(profileBox)
        stackView.addArrangedSubview(mealBox)
        stackView.addArrangedSubview(teacherBox)
        stackView.addArrangedSubview(noticeBox)
        
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
        
        teacherBox.addSubview(calenderImg)
        teacherBox.addSubview(teacherToday)
        teacherBox.addSubview(f2)
        teacherBox.addSubview(f3)
        teacherBox.addSubview(f4)
        teacherBox.addSubview(t2)
        teacherBox.addSubview(t3)
        teacherBox.addSubview(t4)
        
        noticeBox.addSubview(lastestNotice)
        noticeBox.addSubview(moreNotice)
        noticeBox.addSubview(notiIcon1)
        noticeBox.addSubview(notiIcon2)
        noticeBox.addSubview(notiIcon3)
        noticeBox.addSubview(notiTitle1)
        noticeBox.addSubview(notiTitle2)
        noticeBox.addSubview(notiTitle3)
        noticeBox.addSubview(dateNoti1)
        noticeBox.addSubview(dateNoti2)
        noticeBox.addSubview(dateNoti3)
        
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
        
        stackView.snp.makeConstraints {
            $0.top.bottom.leading.trailing.equalTo(scrollView.contentLayoutGuide)
            $0.width.equalTo(scrollView.frameLayoutGuide.snp.width)
        }
        topBar.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.height.equalTo(34)
        }
        scrollView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(topBar.snp.bottom).offset(24)
            $0.bottom.equalTo(navi.snp.top)
        }
        
        profileBox.snp.makeConstraints {
            $0.width.centerX.equalToSuperview()
            $0.height.equalTo(84)
        }
        
        mealBox.snp.makeConstraints {
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
        
        teacherBox.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.height.equalTo(160)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(mealBox.snp.bottom).offset(32)
        }
        calenderImg.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(20)
            $0.width.height.equalTo(140)
            $0.centerY.equalTo(teacherBox)
        }
        teacherToday.snp.makeConstraints {
            $0.top.equalToSuperview().inset(27.5)
            $0.leading.equalToSuperview().inset(20)
        }
        f2.snp.makeConstraints {
            $0.top.equalTo(teacherToday.snp.bottom).offset(17.5)
            $0.leading.equalTo(teacherToday)
        }
        f3.snp.makeConstraints {
            $0.top.equalTo(f2.snp.bottom).offset(15)
            $0.leading.equalTo(teacherToday)
        }
        f4.snp.makeConstraints {
            $0.top.equalTo(f3.snp.bottom).offset(15)
            $0.leading.equalTo(teacherToday)
        }
        t2.snp.makeConstraints {
            $0.leading.equalTo(f2.snp.trailing).offset(16)
            $0.centerY.equalTo(f2)
        }
        t3.snp.makeConstraints {
            $0.leading.equalTo(t2)
            $0.centerY.equalTo(f3)
        }
        t4.snp.makeConstraints {
            $0.leading.equalTo(t2)
            $0.centerY.equalTo(f4)
        }
        
        noticeBox.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalTo(377)
        }
        lastestNotice.snp.makeConstraints {
            $0.top.equalToSuperview().inset(8)
            $0.leading.equalToSuperview().inset(24)
        }
        moreNotice.snp.makeConstraints {
            $0.centerY.equalTo(lastestNotice)
            $0.trailing.equalToSuperview().inset(24)
        }
        notiIcon1.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24)
            $0.width.height.equalTo(32)
            $0.top.equalTo(lastestNotice).offset(44.5)
        }
        notiIcon2.snp.makeConstraints {
            $0.centerX.height.width.equalTo(notiIcon1)
            $0.top.equalTo(notiIcon1.snp.bottom).offset(49)
        }
        notiIcon3.snp.makeConstraints {
            $0.centerX.height.width.equalTo(notiIcon1)
            $0.top.equalTo(notiIcon2.snp.bottom).offset(49)
        }
        notiTitle1.snp.makeConstraints {
            $0.bottom.equalTo(notiIcon1.snp.centerY).offset(-1.5)
            $0.leading.equalTo(notiIcon1.snp.trailing).offset(24)
        }
        notiTitle2.snp.makeConstraints {
            $0.bottom.equalTo(notiIcon2.snp.centerY).offset(-1.5)
            $0.leading.equalTo(notiTitle1)
        }
        notiTitle3.snp.makeConstraints {
            $0.bottom.equalTo(notiIcon3.snp.centerY).offset(-1.5)
            $0.leading.equalTo(notiTitle1)
        }
        dateNoti1.snp.makeConstraints {
            $0.top.equalTo(notiTitle1.snp.bottom).offset(8)
            $0.leading.equalTo(notiTitle1)
        }
        dateNoti2.snp.makeConstraints {
            $0.top.equalTo(notiTitle2.snp.bottom).offset(8)
            $0.leading.equalTo(notiTitle1)
        }
        dateNoti3.snp.makeConstraints {
            $0.top.equalTo(notiTitle3.snp.bottom).offset(8)
            $0.leading.equalTo(notiTitle1)
        }
    }
}

