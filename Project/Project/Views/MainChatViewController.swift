

import UIKit

class MainChatViewController: UIViewController {

    @IBOutlet weak var mainChatTableView: UITableView!
    @IBOutlet weak var folderCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        mainChatTableView.delegate = self
        mainChatTableView.dataSource = self
        
        folderCollectionView.delegate = self
        folderCollectionView.dataSource = self
        
        
        
    }


}

extension MainChatViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainChatTableViewCell", for: indexPath) as? MainChatTableViewCell else { return UITableViewCell() }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}

extension MainChatViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainChatCollectionViewCell", for: indexPath) as? MainChatCollectionViewCell else { return UICollectionViewCell() }
        
        return cell
    }
    
    
    
    
}
