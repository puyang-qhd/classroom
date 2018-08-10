//
//  HeroViewViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/6/29.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class HeroViewViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var contents : [String]!
    var pages = [UIView?]()
    var numPages : Int!
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        _ = setupInitialPages
    }
    
    override func viewDidLoad() {
        scrollView.delegate = self

        pages = [UIView?](repeating: nil, count: numPages)
        
        pageControl.numberOfPages = numPages
        pageControl.currentPage = 0
        pageControl.hidesForSinglePage = true
    }
    
    lazy var setupInitialPages: Void = {
        adjustScrollView()
        
        loadPage(0)
        loadPage(1)
    }()
    
    fileprivate func adjustScrollView() {
        scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(numPages), height: scrollView.frame.height)
    }
    
    @objc func HeroImageTapped() {

    }
    
    fileprivate func loadPage(_ page:Int) {
        guard page < numPages && page != -1 else { return }
        
        if pages[page] == nil {
            if let image = UIImage(named: contents[page]) {
                let newImageView = UIImageView(image: image)
                newImageView.contentMode = .scaleAspectFill

                var frame = scrollView.frame
                frame.origin.x = frame.width * CGFloat(page)
                let canvasView = UIView(frame: frame)
                scrollView.addSubview(canvasView)

                newImageView.translatesAutoresizingMaskIntoConstraints = false
                newImageView.clipsToBounds = true

                canvasView.addSubview(newImageView)

                NSLayoutConstraint.activate([
                    (newImageView.leadingAnchor.constraint(equalTo: canvasView.leadingAnchor)),
                    (newImageView.trailingAnchor.constraint(equalTo: canvasView.trailingAnchor)),
                    (newImageView.topAnchor.constraint(equalTo: canvasView.topAnchor)),
                    (newImageView.bottomAnchor.constraint(equalTo: canvasView.bottomAnchor))
                    ])

                let button = UIButton()
                button.setTitle("", for: .normal)
                button.translatesAutoresizingMaskIntoConstraints = false
                button.addTarget(Any?.self, action: #selector(HeroImageTapped), for: .touchUpInside)
                
                canvasView.addSubview(button)
                
                NSLayoutConstraint.activate([
                    (button.leadingAnchor.constraint(equalTo: canvasView.leadingAnchor)),
                    (button.trailingAnchor.constraint(equalTo: canvasView.trailingAnchor)),
                    (button.topAnchor.constraint(equalTo: canvasView.topAnchor)),
                    (button.bottomAnchor.constraint(equalTo: canvasView.bottomAnchor))
                    ])

                pages[page] = canvasView

            }
        }
    }
    
    fileprivate func removeAnyImages() {
        for page in pages where page != nil {
            page?.removeFromSuperview()
        }
    }
    
    fileprivate func loadCurrentPages(page:Int) {
        guard (page > 0 && page + 1 < numPages)  else { return }
        removeAnyImages()
        pages = [UIView?](repeating: nil, count: numPages)
        
        loadPage(Int(page) - 1)
        loadPage(Int(page))
        loadPage(Int(page) + 1)
    }
    
    fileprivate func gotoPage(page: Int, animated: Bool) {
        loadCurrentPages(page: page)
        
        var bounds = scrollView.bounds
        bounds.origin.x = bounds.width * CGFloat(page)
        bounds.origin.y = 0
        scrollView.scrollRectToVisible(bounds, animated: animated)
    }
    
    //    MARK: - UIScrollViewDelegate
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {

        let pageWidth = scrollView.frame.width
        let page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1
        pageControl.currentPage = Int(page)

        loadCurrentPages(page: pageControl.currentPage)
    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let pageWidth = scrollView.frame.width
        let page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1
        pageControl.currentPage = Int(page)
        
        loadCurrentPages(page: pageControl.currentPage)
        
    }
    
    //    MARK: - Actions
    
    @IBAction func gotoPage(_ sender: UIPageControl) {
        gotoPage(page: sender.currentPage, animated: true)
    }
    
}
