//
//  HomeScreenViewController.swift
//  playmysport.in
//
//  Created by Arjun Busani on 8/9/15.
//  Copyright (c) 2015 Yati. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {

    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()

        self.navigationController?.navigationBar.topItem!.title = "HOME SCREEN";

//        let nib = UINib(nibName: "GalleryItemCommentView", bundle: nil)
//        collectionView.registerNib(nib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "GalleryItemCommentView")
//        
//        collectionView.reloadData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
