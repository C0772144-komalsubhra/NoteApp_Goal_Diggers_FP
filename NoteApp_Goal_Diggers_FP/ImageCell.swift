import UIKit

class ImageCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func setImage(_ image: UIImage?) {
        if let img : UIImage = image {
            imageView.image = img
            
        }
    }

}
