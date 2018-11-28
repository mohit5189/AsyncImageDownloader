//
//  MKImageDownloader.swift
//  AsyncImageLoading
//
//  Created by Mohit Kumar on 27/11/18.
//  Copyright © 2018 Mohit Kumar. All rights reserved.
//

import UIKit

class MKImageDownloader: NSObject {

    var downloadedImage:UIImage?{
        didSet{
            DispatchQueue.main.async {
                self.imageView?.image = self.downloadedImage
            }
        }
    }
    
    var imageView:UIImageView?
    var url:String?
    
    init(url:String,imageView:UIImageView){
       super.init()
        self.imageView = imageView;
        self.url = url
       startDownload()
    }
    
    func startDownload() -> Void {
      
        if let image=downloadedImage {

            DispatchQueue.main.async {
                self.imageView?.image = image
            }
        }else{
            
            let url = URL(string: self.url ?? "")
            URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
                
                if error != nil {
                    print(error!)
                    return
                }
                
                self.downloadedImage = UIImage(data: data!)


            }).resume()
        }
    }
    
    func updateImageView(imageView:UIImageView) -> Void {
        self.imageView = imageView
    }
    func resume() -> Void {
        startDownload()
    }
}
