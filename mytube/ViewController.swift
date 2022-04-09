//
//  ViewController.swift
//  mytube
//
//  Created by Bogdan Kornievski on 06.04.2022.
//

import UIKit



class ViewController: UIViewController,
                      UITableViewDataSource,
                      UITableViewDelegate,
                      ModelDelegate
{

    var model = Model()
    var videos = [Video]()

 
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set itself as a data source and the delegate
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
        
        //Set itself as the delegate of the model
        
        model.delegate = self
        
        model.getVideos()
    }
    
    // MARK: - Model Delegate Methods
    
    func videosFetched(_ videos: [Video]) {
        // Set the returned videos to our video property
        
        self.videos = videos
        
        // Refresh the tableView
        
        tableView.reloadData()
    }
    
    
    // MARK: - TableView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        //Get the title for video in question
        
        let title = self.videos[indexPath.row].title
        
        cell.textLabel?.text = title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            }
    
    
    
    
}

