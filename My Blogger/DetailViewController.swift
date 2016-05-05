//
//  DetailViewController.swift
//  My Blogger
//
//  Created by Chatterjee, Snigdhaman on 17/01/16.
//  Copyright © 2016 Chatterjee, Snigdhaman. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var author: UILabel!

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var date: UILabel!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            /*if let authorText = self.author {
                authorText.text = "Author: " + (detail.valueForKey("author")?.description)!
            }
            if let dateText = self.date {
                dateText.text = "Published: " + (detail.valueForKey("date")?.description)!
            }*/
            if let detailWebView = self.webView {
                detailWebView.loadHTMLString(detail.valueForKey("content")!.description, baseURL: NSURL(string: "http://googleindia.blogspot.in"))
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

