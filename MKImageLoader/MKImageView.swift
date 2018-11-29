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
    
    
    func setImage(withUrl url:String?, placeholderImage:UIImage, onSuccess:@escaping (_ image:UIImage?) -> Void, onFailure:@escaping (_ error:Error?) -> Void) -> Void {
        
        guard let finalUrl = url else{
            print("Url can not be nil")
            return
        }
        self.image = placeholderImage

        MKImageDownloader().downloadAndCacheImage(url: finalUrl, onSuccess: { (image) in
            onSuccess(image)
        }) { (error) in
            onFailure(error)
        }
       
    }
}
