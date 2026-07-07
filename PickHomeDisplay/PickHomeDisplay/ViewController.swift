import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    var scrollView = UIScrollView()
    var stackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 32
    }
    
    var navi = naviView()
    var topBar = TopBarView()
    var profileBox = ProfileView()
    var mealBox = mealView()
    var teacherBox = teacherView().then {
        $0.layer.cornerRadius = 12
    }
    var noticeBox = NoticeView()
    
    @objc func modeChange() {
        let blackAwhite: [Any] = [profileBox.profileSchool, profileBox.profileName,
                                  mealBox.breakfastMenuBox.menu, mealBox.lunchMenuBox.menu, mealBox.dinnerMenuBox.menu,
                                  topBar.navigationBar2, topBar.navigationButton,
                                  teacherBox.t2, teacherBox.t3, teacherBox.t4,
                                  noticeBox.noti1.notiTitle, noticeBox.noti2.notiTitle, noticeBox.noti3.notiTitle]
        
        let main3:[Any] = [noticeBox.noti1.notiIcon, noticeBox.noti2.notiIcon, noticeBox.noti3.notiIcon]
        let main4:[Any] = [profileBox.profileImg, navi.homeImg, navi.homeText]
        let main5: [UIView] = [mealBox.breakfastMenuBox.kalBox, mealBox.lunchMenuBox.kalBox, mealBox.dinnerMenuBox.kalBox]
        let main6: [UILabel] = [teacherBox.f2, teacherBox.f3, teacherBox.f4]
        let main7:[Any] = [mealBox.breakfastMenuBox.title, mealBox.lunchMenuBox.title, mealBox.dinnerMenuBox.title]
        
        let gray5:[Any] = [navi.forkImg, navi.forkText, navi.checkImg, navi.checkText, navi.calendarIcon, navi.calendarText, navi.wholeIcon, navi.wholeText]
        let gray6:[Any] = [noticeBox.noti1.dateNoti, noticeBox.noti2.dateNoti, noticeBox.noti3.dateNoti]
        let BG:[Any] = [mealBox.lunchMenuBox.kaltext, mealBox.dinnerMenuBox.kaltext]
        
        mealBox.breakfastMenuBox.kaltext.textColor = .white
        if view.backgroundColor == .white {
            // MARK: 다크모드로 만들기
            view.backgroundColor = UIColor.dBG
            
            blackAwhite.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = .white } else { ($0 as! UIView).tintColor = .white }
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
            
            mealBox.todaymenu.textColor = UIColor.gray200
            mealBox.breakfastMenuBox.backgroundColor = UIColor.dMain50
            
            navi.layer.borderColor = UIColor.gray800.cgColor
            navi.backgroundColor = UIColor.dBG
            
            teacherBox.backgroundColor = UIColor.gray900
            teacherBox.teacherToday.textColor = UIColor.gray50
            noticeBox.lastestNotice.textColor = UIColor.gray200
            noticeBox.moreNotice.tintColor = UIColor.gray100
        }
        else {
            view.backgroundColor = .white
            // MARK: 라이트모드로 만들기
            blackAwhite.forEach {
                if $0 is UILabel { ($0 as! UILabel).textColor = .black } else { ($0 as! UIView).tintColor = .black }
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
            
            mealBox.todaymenu.textColor = UIColor.gray700
            mealBox.breakfastMenuBox.backgroundColor = UIColor.lMain50
            
            navi.layer.borderColor = UIColor.gray100.cgColor
            navi.backgroundColor = UIColor.lBG
            
            teacherBox.backgroundColor = UIColor.gray50
            teacherBox.teacherToday.textColor = UIColor.gray900
            noticeBox.lastestNotice.textColor = UIColor.gray700
            noticeBox.moreNotice.tintColor = UIColor.gray800
        }
    }
    // MARK: 뷰 디드 로드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
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
        
        topBar.setup()
        profileBox.setup()
        mealBox.setup()
        teacherBox.setUp()
        noticeBox.setup()
        navi.setup()
    }
    
    func constraints() {
        stackView.snp.makeConstraints {
            $0.top.bottom.leading.trailing.equalTo(scrollView.contentLayoutGuide)
            $0.width.equalTo(scrollView.frameLayoutGuide.snp.width)
        }
        scrollView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(topBar.snp.bottom).offset(24)
            $0.bottom.equalTo(navi.snp.top)
        }
        topBar.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.height.equalTo(34)
        }
        profileBox.snp.makeConstraints {
            $0.width.centerX.equalToSuperview()
            $0.height.equalTo(84)
        }
        
        mealBox.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalTo(457)
        }
        teacherBox.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.height.equalTo(160)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(mealBox.snp.bottom).offset(32)
        }
        noticeBox.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalTo(377)
        }
        navi.snp.makeConstraints {
            $0.height.equalTo(86)
            $0.leading.trailing.equalToSuperview().inset(-2)
            $0.bottom.equalToSuperview().inset(-2)
        }
              
    }
}

