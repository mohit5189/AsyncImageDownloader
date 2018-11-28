//
//  MKImageView.swift
//  AsyncImageLoading
//
//  Created by Mohit Kumar on 27/11/18.
//  Copyright © 2018 Mohit Kumar. All rights reserved.
//

import UIKit
import Foundation

extension UIImageView{
    
    func setImage(withUrl url:String, placeholderImage:UIImage) -> Void {
       
        self.image = placeholderImage
    
        if let imageDownloader = MKImageDownloadManager.sharedInstance.getDownloader(forUrl: url){
            
            imageDownloader.updateImageView(imageView: self)
            imageDownloader.resume()
            
        }else{
            MKImageDownloadManager.sharedInstance.setDownloader(downloader: MKImageDownloader(url: url, imageView: self), url: url)
        }
    }
}
