//
//  NoticeView.swift
//  PickHomeDisplay
//
//  Created by Seoyun Jin on 7/7/26.
//

import UIKit
import SnapKit
import Then
class NoticeView: UIView {
    var lastestNotice = UILabel().then {
        $0.text = "최신 공지"
        $0.font = .systemFont(ofSize: 17)
    }
    var moreNotice = UIButton(type: .system).then {
        $0.setTitle("더보기", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 17)
    }
    var noti1 = notice()
    var noti2 = notice()
    var noti3 = notice()
    
    func setup() {
        
        self.addSubview(lastestNotice)
        self.addSubview(moreNotice)
        self.addSubview(noti1)
        self.addSubview(noti2)
        self.addSubview(noti3)
        
        lastestNotice.snp.makeConstraints {
            $0.top.equalToSuperview().inset(8)
            $0.leading.equalToSuperview().inset(24)
        }
        moreNotice.snp.makeConstraints {
            $0.centerY.equalTo(lastestNotice)
            $0.trailing.equalToSuperview().inset(24)
        }
        noti1.snp.makeConstraints {
            $0.width.leading.equalToSuperview()
            $0.height.equalTo(81)
            $0.top.equalToSuperview().inset(47)
        }
        noti2.snp.makeConstraints {
            $0.width.leading.equalToSuperview()
            $0.height.equalTo(81)
            $0.top.equalTo(noti1.snp.bottom)
        }
        noti3.snp.makeConstraints {
            $0.width.leading.equalToSuperview()
            $0.height.equalTo(81)
            $0.top.equalTo(noti2.snp.bottom)
        }
        
        noti1.setUp()
        noti2.setUp()
        noti3.setUp()
    }
}
class notice : UIView {
    var notiIcon = UIImageView().then {
        $0.image = UIImage(systemName: "ellipsis.message.fill")
    }
    var notiTitle = UILabel().then {
        $0.text = "주말 급식 신청 안내"
        $0.font = .systemFont(ofSize: 17)
    }
    var dateNoti = UILabel().then {
        $0.text = "2달 전"
        $0.font = .systemFont(ofSize: 13)
    }
    
    func setUp() {
        self.addSubview(notiIcon)
        self.addSubview(notiTitle)
        self.addSubview(dateNoti)
        
        notiIcon.snp.makeConstraints {
            $0.centerX.height.width.equalTo(32)
            $0.centerY.equalToSuperview()
        }
        notiTitle.snp.makeConstraints {
            $0.bottom.equalTo(notiIcon.snp.centerY).offset(-1.5)
            $0.leading.equalTo(notiIcon.snp.trailing).offset(24)
        }
        dateNoti.snp.makeConstraints {
            $0.top.equalTo(notiTitle.snp.bottom).offset(8)
            $0.leading.equalTo(notiTitle)
        }
    }
}
