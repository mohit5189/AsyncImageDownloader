//
//  MKImageDownloadManager.swift
//  AsyncImageLoading
//
//  Created by Mohit Kumar on 27/11/18.
//  Copyright © 2018 Mohit Kumar. All rights reserved.
//

import UIKit

class MKImageDownloadManager: NSObject {

    static let sharedInstance = MKImageDownloadManager()
    var imageCache:NSCache<NSString, MKImageDownloader>
    
    
    override init() {
        
        self.imageCache = NSCache()
    }
    
    func getDownloader(forUrl url:String) -> MKImageDownloader? {
        return self.imageCache.object(forKey: url as NSString)
    }
    
    func setDownloader(downloader:MKImageDownloader, url:String) -> Void {
        self.imageCache.setObject(downloader, forKey: url as NSString)
    }
}
