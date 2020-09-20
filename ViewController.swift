
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magic8ball: UIImageView!
    
    
    let ballArray = [#imageLiteral(resourceName: "ball5"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball2")]

   
    @IBAction func askMeButton(_ sender: UIButton) {
        
        magic8ball.image = ballArray.randomElement()
    }
    
}

