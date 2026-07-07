import UIKit
import SnapKit
import Then

class teacherView: UIView {
    var calenderImg = UIImageView().then {
        $0.image = UIImage(named: "calender.png")
    }
    lazy var teacherToday = UILabel().then {
        $0.text = "오늘의 자습 감독 선생님 입니다."
        $0.font = .systemFont(ofSize: 13)
    }
    lazy var f2 = UILabel().then {
        $0.text = "2층"
        $0.font = .systemFont(ofSize: 13)
    }
    lazy var f3 = UILabel().then {
        $0.text = "3층"
        $0.font = .systemFont(ofSize: 13)
    }
    lazy var f4 = floorSetup(4)
    lazy var t2 = teacherSetup("신지선")
    lazy var t3 = teacherSetup("오상진")
    lazy var t4 = teacherSetup("김현태")
    
    func floorSetup(_ floor : Int) -> UILabel {
        return UILabel().then {
            $0.text = "\(floor)층"
            $0.font = .systemFont(ofSize: 13)
        }
    }
    func teacherSetup(_ name : String) -> UILabel {
        return UILabel().then {
            $0.text = "\(name) 선생님"
            $0.font = .systemFont(ofSize: 16)
        }
    }
    
    func setUp() {
        addSubview(calenderImg)
        addSubview(teacherToday)
        addSubview(f2)
        addSubview(f3)
        addSubview(f4)
        addSubview(t2)
        addSubview(t3)
        addSubview(t4)
        
        calenderImg.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(20)
            $0.width.height.equalTo(140)
            $0.centerY.equalToSuperview()
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
    }
}
