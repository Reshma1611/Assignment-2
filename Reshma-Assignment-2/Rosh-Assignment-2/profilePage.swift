//
//  profilePage.swift
//  Rosh-Assignment-2
//
//  Created by MacBook Pro on 22/06/21.
//

import UIKit

class profilePage: UIViewController {
    private let profilePic: UIImageView = {
        
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFit
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "download.jpg")
    
    return myImageView
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(profilePic)
    }
    override func viewDidLayoutSubviews() {
        profilePic.frame = CGRect(x: 40 ,y: 40, width: view.width - 60, height:80)
        
    }
    
}
