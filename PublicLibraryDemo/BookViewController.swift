//
//  BookViewController.swift
//  PublicLibraryDemo
//
//  Created by Pho Diep on 11/14/14.
//  Copyright (c) 2014 Pho Diep. All rights reserved.
//

import UIKit

class BookViewController: UITableViewController {
    
    var books = [Book]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.books = ShelfViewSelection.contents()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // returns number of rows
        return self.books.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // returns cells
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var book : Book
        
        book = books[indexPath.row]
        
        cell.textLabel.text = book.title
        
        return cell
    }
    
}
