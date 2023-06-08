//
//  PageViewController.swift
//  20lessonUIPageViewController
//
//  Created by vasiario on 07.06.2023.
//

import UIKit

final class PageViewController: UIPageViewController {

  //  MARK: - variable
  var pictures = [PicturesHelper]()
  let macbook = UIImage(named: "macbook")
  let iphone14pro = UIImage(named: "iphone14pro")
  let airpodsPro = UIImage(named: "airpodsPro")

  override func viewDidLoad() {
    super.viewDidLoad()

    navigationItem.title = "Apple"

    let firstImage = PicturesHelper(name: "macbook", image: macbook!)
    let secondImage = PicturesHelper(name: "iphone14pro", image: iphone14pro!)
    let thirdImage = PicturesHelper(name: "airpodsPro", image: airpodsPro!)

    pictures.append(firstImage)
    pictures.append(secondImage)
    pictures.append(thirdImage)
  }

  //    MARK: - create VC
  lazy var arrayPicturesViewController: [PicturesViewController] = {
    var pictureVC = [PicturesViewController]()

    for picture in pictures {
      pictureVC.append(PicturesViewController(pictures: picture))
    }
    return pictureVC
  }()

  //  MARK: - init UIPageViewController
  override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
    super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation)
    self.view.backgroundColor = .white
    self.dataSource = self
    self.delegate = self

    // Настройка точек выбора
    let pageControl = UIPageControl.appearance(whenContainedInInstancesOf: [PageViewController.self])
    pageControl.pageIndicatorTintColor = .gray
    pageControl.currentPageIndicatorTintColor = .black
    setViewControllers([arrayPicturesViewController[0]], direction: .forward, animated: true)
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
}

extension PageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    guard let viewController = viewController as? PicturesViewController else { return nil }
    if let index = arrayPicturesViewController.firstIndex(of: viewController) {
      if index > 0 {
        return arrayPicturesViewController[index - 1]
      }
    }
    return nil
  }

  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    guard let viewController = viewController as? PicturesViewController else { return nil }
    if let index = arrayPicturesViewController.firstIndex(of: viewController) {
      if index < pictures.count - 1 {
        return arrayPicturesViewController[index + 1]
      }
    }
    return nil
  }

  func presentationCount(for pageViewController: UIPageViewController) -> Int {
    return pictures.count
  }

  func presentationIndex(for pageViewController: UIPageViewController) -> Int {
    return 0
  }
}


