import UIKit
import SnapKit
import Then

class mealView: UIView {
    var breakfastMenuBox = oneMealView()
    var lunchMenuBox = oneMealView()
    var dinnerMenuBox = oneMealView()
    
    var todaymenu = UILabel().then {
        $0.text = "오늘의 급식"
        $0.font = .systemFont(ofSize: 16)
    }
    
    func setup() {
        breakfastMenuBox.title = breakfastMenuBox.title("조식")
        lunchMenuBox.title = breakfastMenuBox.title("중식")
        dinnerMenuBox.title = breakfastMenuBox.title("석식")
        
        self.addSubview(breakfastMenuBox)
        self.addSubview(lunchMenuBox)
        self.addSubview(dinnerMenuBox)
        self.addSubview(todaymenu)
        
        breakfastMenuBox.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalTo(134)
            $0.top.equalToSuperview().inset(47)
        }
        lunchMenuBox.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalTo(134)
            $0.top.equalTo(breakfastMenuBox.snp.bottom).offset(4)
        }
        dinnerMenuBox.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalTo(134)
            $0.top.equalTo(lunchMenuBox.snp.bottom).offset(4)
        }
        todaymenu.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24)
            $0.top.equalToSuperview().inset(8)
        }
        breakfastMenuBox.setup()
        lunchMenuBox.setup()
        dinnerMenuBox.setup()
    }
    
}

class oneMealView:UIView {
    lazy var title = title("조식")
    var menu = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "녹두찰밥\n스팸구이\n시리얼(블루베리)\n우유\n한우궁중떡볶이\n미니고구마파이"
        $0.font = .systemFont(ofSize: 14)
    }
    var kalBox = UIView().then {
        $0.layer.cornerRadius = 12
    }
    var kaltext = UILabel().then {
        $0.text = "789.6Kal"
        $0.font = .systemFont(ofSize: 12)
    }
    
    func title(_ text: String) -> UILabel {
        return UILabel().then {
            $0.text = text
            $0.font = .systemFont(ofSize: 16, weight: .bold)
        }
    }
    func setup() {
        self.addSubview(title)
        self.addSubview(menu)
        self.addSubview(kalBox)
        kalBox.addSubview(kaltext)
        
        title.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24)
            $0.centerY.equalToSuperview()
        }
        menu.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(134.5)
            $0.centerY.equalToSuperview()
        }
        kalBox.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(24)
            $0.width.equalTo(72)
            $0.height.equalTo(22)
            $0.centerY.equalToSuperview()
        }
        kaltext.snp.makeConstraints {
            $0.center.equalTo(kalBox)
        }
    }
}

