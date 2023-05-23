//
//  ViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 19.05.2023.
//

import UIKit

final class ByeViewController: UIViewController, UIScrollViewDelegate {
    
    var topScrollView = UIScrollView()
    let airpodsImage = UIImage(named: "airpodsPro")
    let iphoneImage = UIImage(named: "iphone14pro")
    let appleWatchImage = UIImage(named: "appleWatchUltra")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollViewRect = view.bounds
        
        //        added scroll
        topScrollView = UIScrollView(frame: scrollViewRect)
        topScrollView.isPagingEnabled = true
        topScrollView.contentSize = CGSize(width: scrollViewRect.width * 3, height: scrollViewRect.height)
        view.addSubview(topScrollView)
        
        //        create first page scroll
        var imageViewRect = view.bounds
        let airpodsImageView = newImageViewWithImage(paramImage: airpodsImage!, paramFrame: imageViewRect)
        topScrollView.addSubview(airpodsImageView)
        
        //        create second page scroll
        imageViewRect.origin.x += imageViewRect.width
        let iphoneImageView = newImageViewWithImage(paramImage: iphoneImage!, paramFrame: imageViewRect)
        topScrollView.addSubview(iphoneImageView)
        
        
        //        create third page scroll
        imageViewRect.origin.x += imageViewRect.width
        let appleWathcImageView = newImageViewWithImage(paramImage: appleWatchImage!, paramFrame: imageViewRect)
        topScrollView.addSubview(appleWathcImageView)
    }
    
    func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
}

//        addCentralTextLabel()


//   fileprivate func addCentralTextLabel() {
//        centralTextLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
//        centralTextLabel.center = view.center
//        centralTextLabel.text = "В разработке"
//        centralTextLabel.font = UIFont.systemFont(ofSize: 30)
//        centralTextLabel.textColor = .white
//       view.addSubview(centralTextLabel)
//    }
