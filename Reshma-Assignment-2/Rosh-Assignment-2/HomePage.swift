//
//  HomePage.swift
//  Rosh-Assignment-2
//
//  Created by MacBook Pro on 21/06/21.
//

import UIKit

class HomePage: UIViewController {

    override func viewDidLoad()	 {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor  = .black
        view.addSubview(myLabel)
        view.addSubview(skyDivImg)
        view.addSubview(skyDivDesc)
        view.addSubview(cliffJump)
        view.addSubview(cliffJumpDesc)
        view.addSubview(surf)
        view.addSubview(surfDesc)
        view.addSubview(toolBar)
        view.addSubview(tabBar)
        view.addSubview(wishswitch)
        view.addSubview(wishlistLabel)
        view.addSubview(experienceLabel)
        view.addSubview(myStepper1)
    }
    private let toolBar:UIToolbar = {
        
        let myToolBar = UIToolbar()
        let cancel = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(handleCancel))
        cancel.tintColor = .black
        //let profilePic
        //let profilePic = UIBarButtonItem(barButtonSystemItem: .add)
        
        myToolBar.backgroundColor = .systemFill
        
        return myToolBar
        
    }()
    @objc private func handleCancel() {
        
        self.dismiss(animated: true)
    }
    private let wishlistLabel:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "add To WIshList"
        myLabel.textAlignment = .left
        myLabel.backgroundColor = .black
        myLabel.textColor = .white
        
        return myLabel
    }()
    private let experienceLabel : UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Have you ever experience then add yours "
        myLabel.textAlignment = .left
        myLabel.backgroundColor = .black
        myLabel.textColor = .white
        
        return myLabel
    }()
    private let myStepper1:UIStepper = {
            let stepper = UIStepper()
            stepper.minimumValue = 0
            stepper.maximumValue = 10
        stepper.backgroundColor = .systemGreen
//            stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        
            return stepper
        }()
    private let myLabel:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Advanture World"
        myLabel.textAlignment = .center
        myLabel.backgroundColor = .black
        myLabel.textColor = .white
        myLabel.font = UIFont.systemFont(ofSize: 40)
        return myLabel
    }()
    private let skyDivDesc : UITextView = {
     
        let textView = UITextView()
        textView.text = "Sky-diving isn’t exclusive to any part of the world, but Australia has some awesome spots! The above jump happened in Wollongong (close to Sydney) but we would ..."
        textView.textAlignment = .center
        textView.backgroundColor = .black
        textView.textColor = .white
        
        return textView
    }()
    private let skyDivImg : UIImageView = {
        
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFit
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "download.jpg")
        
        return myImageView
        
    }()
    private let wishswitch:UISwitch = {
       let switcher = UISwitch()
        switcher.addTarget(self, action: #selector(handleSwitch1), for: .touchUpInside)
       return switcher
    }()
    @objc func handleSwitch1() {
        
        let vc = profilePage()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        //present(nav, animated: false,completion: ()
        present(nav, animated: true) {
                    
        }
    }
    private let cliffJump: UIImageView = {
        
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFit
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "download (2).jpg")
        
        return myImageView
        
    }()
    private let cliffJumpDesc : UITextView = {
     
        let textView = UITextView()
        textView.text = "If you’re going to do a cliff jump, it might as well be the highest one in the world, right? On top of a healthy dose of adrenaline, you can expect amazing views and plenty of other travellers to help you pluck up the courage. If you need a little inspiration, you can watch what happens when we challenged a group of travellers staying at the nearby Nomads Hostel in Queenstown to take the plunge."
        textView.textAlignment = .center
        textView.backgroundColor = .systemFill
        
        return textView
    }()
    private let surfDesc : UITextView = {
     
        let textView = UITextView()
        textView.text = "Surfing and travelling go hand in hand… If you’ve been out roaming the earth and ended up in a beachy town then you will have probably given surfing a go. It isn’t scary, like some of the other experiences but I can see why it might be. The oceans are often so big and murky looking from the shore and even from the board you can get moments of ‘I wonder which creatures are looking up at me, thinking hmm tasty’. Ok, I’m talking sharks again. These creatures were around millions of years before humans. We all know the fact: more humans die from coconuts landing on their heads than being attacked by sharks. I loved surfing in South Africa’s Jeffrey’s Bay (made famous by cult surf film Endless Summer) but you are thrashing around like a cute seal in the shark’s domain. Check out this pro-surfer video in J-Bay. But, there is nothing more thrilling then catching a wave for the first time!"
        textView.textAlignment = .center
        textView.backgroundColor = .systemFill
        
        return textView
    }()
    
    private let surf: UIImageView = {
        
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFit
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "download (1).jpg")
        
        return myImageView
        
    }()
    private let tabBar:UITabBar = {
        
        let tabBar = UITabBar()
        let setting = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        tabBar.items = [setting]
        return tabBar
    }()
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        //toolBar.frame = CGRect(x: 40 ,y:20, width: view.width - 80, height:40)
        //myLabel.frame = CGRect(x: 40 ,y: toolBar.bottom + 20, width: view.width - 80, height: 40)
        myLabel.frame = CGRect(x: 40 ,y:20, width: view.width - 80, height:40)
        skyDivImg.frame = CGRect(x: 0 ,y:myLabel.bottom + 20, width: view.width , height:280)
        skyDivDesc.frame = CGRect(x: 20 ,y:skyDivImg.bottom + 20, width: view.width - 40, height:70)
        wishswitch.frame = CGRect(x: 200 ,y:skyDivDesc.bottom + 20, width: view.width - 80, height:40)
        wishlistLabel.frame = CGRect(x: 40 ,y:skyDivDesc.bottom + 20, width: 150, height:30)
        experienceLabel.frame = CGRect(x: 40 ,y:wishlistLabel.bottom + 20, width: 310, height:30)
        myStepper1.frame = CGRect(x: 40 ,y:experienceLabel.bottom + 20, width: 310, height:30)
        cliffJump.frame = CGRect(x: 0 ,y:myStepper1.bottom, width: view.width , height:280)
        cliffJumpDesc.frame = CGRect(x: 40 ,y:cliffJump.bottom + 20, width: view.width - 80, height:40)
        
        surf.frame = CGRect(x: 40 ,y:cliffJumpDesc.bottom + 20, width: view.width - 80, height:40)
        surfDesc.frame = CGRect(x: 40 ,y:surf.bottom + 20, width: view.width - 80, height:40)
        tabBar.frame = CGRect(x: 40 ,y:surfDesc.bottom + 20, width: view.width - 80, height:40)
    }
    
}
