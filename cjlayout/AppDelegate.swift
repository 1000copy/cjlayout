import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let page = Page()
        self.window!.rootViewController = page
        self.window?.makeKeyAndVisible()
        return true
    }
}
class Page: UIViewController {
    var count = 0
    var label1 : UILabel!
    var label2 : UILabel!
    var label3 : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        label1   = UILabel()
        label1.backgroundColor = .red
        view.addSubview(label1)
        
        label2   = UILabel()
        label2.backgroundColor = .red
        view.addSubview(label2)
        
        label3   = UILabel()
        label3.backgroundColor = .red
        view.addSubview(label3)
        
        label1.text = "1111"
        label2.text = "2222"
        label3.text = "3333"
        setup_cartography()
    }
    func setup_cartography(){
        constrain(view,label1,label2,label3){
            $1.left == $0.left  + 5
            $1.top  == $0.top + 100
            //
            $2.left == $1.right + 10
            $2.top  == $1.top
            //
            $3.left == $1.left
            $3.top  == $1.bottom + 5
        }
    }
}
