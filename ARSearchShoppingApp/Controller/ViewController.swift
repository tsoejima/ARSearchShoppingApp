//
//  ViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/10/19.
//

import UIKit
import SceneKit
import ARKit
import Lottie

class ViewController: UIViewController, ARSCNViewDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var returnTabButton: UINavigationItem!
    @IBOutlet var sceneView: ARSCNView!
    @IBOutlet weak var SliderView: UIView!
    @IBOutlet weak var arControllerView: UIView!
    @IBOutlet weak var arControllerViewTop: UIView!
    @IBOutlet weak var arControllerViewBtm: UIView!
    
    //ARController
    @IBOutlet weak var ARC1: UIView!
    @IBOutlet weak var ARC2: UIView!
    @IBOutlet weak var ARCL1: UIView!
    @IBOutlet weak var ARCS1: UIView!
    @IBOutlet weak var ARCL2: UIView!
    @IBOutlet weak var ARCS2: UIView!
    @IBOutlet weak var ARCL3: UIView!
    @IBOutlet weak var ARCS3: UIView!
    
    //ARSearchButton
    @IBOutlet weak var searchButtonBackview: UIView!
    @IBOutlet weak var searchButtonview: UIView!
    
    //ARStatusView
    @IBOutlet weak var arStatusViewBackground: UIView!
    @IBOutlet weak var ASVB1: UIView!
    @IBOutlet weak var ASVB2: UIView!
    @IBOutlet weak var ASVB3: UIView!
    @IBOutlet weak var ASVBLabel1: UILabel!
    @IBOutlet weak var ASVBLabel2: UILabel!
    @IBOutlet weak var ASVBLabel3: UILabel!
    @IBOutlet weak var itemcategoryLabel: UILabel!
    
    var selectedNode: SCNNode?
    var xyz: float_t = 0.2
    var x: float_t = 0.2
    var y: float_t = 0.2
    var z: float_t = 0.2
    var test: float_t = 0.0
    var isFirst = true
    var times = true
    var count = 0
    var changePass:String = "Horizontal"
    let BoxNode = SCNNode()
    
    var itemcategory:String?
    
    let material = SCNMaterial()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            startLoading()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.stopLoading()
        }
        
        itemcategoryLabel.text = itemcategory
        print(itemcategory ?? "")
        
        //NavigationBar設定
        navigationController?.navigationBar.isHidden = true
        
        //ARStatus設定
        arStatusViewBackground.layer.cornerRadius = 10
        arStatusViewBackground.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.950)
        ASVB1.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ASVB2.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ASVB3.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        //ボタン設定
        searchButtonBackview.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        //グラデーションレイヤーを作成
        let gradientLayer = CAGradientLayer()
        gradientLayer.shadowOpacity = 0.6
        gradientLayer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        gradientLayer.shadowRadius = 5
        gradientLayer.shadowColor = UIColor.black.cgColor
        gradientLayer.frame = self.searchButtonview.bounds
        gradientLayer.cornerRadius = 31
        //グラデーションカラーの選択
        let color1 = UIColor(red: 0.521, green: 0.552, blue:1.000, alpha: 1.000).cgColor
        let color2 = UIColor(red: 0.800, green: 0.996, blue:1.000, alpha: 1.000).cgColor
        gradientLayer.colors = [color1, color2]
        //グラデーションの方向を指定
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 1 , y: 1)
        //グラデーションレイヤーの表示
        self.searchButtonview.layer.insertSublayer(gradientLayer,at:0)
        self.searchButtonview.layer.cornerRadius = 31
        //スライダー設定
        arControllerView.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.950)
        arControllerViewBtm.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ARC1.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ARC2.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ARCL1.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ARCL2.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ARCL3.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ARCS1.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ARCS2.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        ARCS3.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        
        //ARController設定
        arControllerView.layer.cornerRadius = 20
        arControllerViewBtm.layer.cornerRadius = 20
        ARC1.layer.cornerRadius = 20
        ARC2.layer.cornerRadius = 20
        
        navigationController?.delegate = self
        //タブ非表示
        tabBarController?.tabBar.isHidden = true
        // Set the view's delegate
        sceneView.delegate = self
                
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = false
                
        // Create a new scene
        //let scene = SCNScene(named: "art.scnassets/ship.scn")!
                
        // Set the scene to the view
        //sceneView.scene = scene
                
        // 特徴点を表示
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]

        // ライト追加
        sceneView.autoenablesDefaultLighting = true;
                
        // タップした時のaction追加
        let tapScreen = UITapGestureRecognizer(target: self, action: #selector(tapped))
        self.sceneView.addGestureRecognizer(tapScreen)
        //ドラッグのアクション
        /*sceneView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.dragView(sender:))))*/

        //大久保ばか
        
    }
    
    lazy var loadingView: AnimationView = {
            let animationView = AnimationView(name: "TapAnimation")
            animationView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            animationView.center = self.view.center
            animationView.loopMode = .loop
            animationView.contentMode = .scaleAspectFit
            animationView.animationSpeed = 1

            return animationView
        }()
        // 好きなタイミングでこれを呼ぶとアニメーションが始まる.
        func startLoading() {
            view.addSubview(loadingView)
            loadingView.play()
        }

        // 好きなタイミングでこれを呼ぶとアニメーションのViewが消える.
        func stopLoading() {
            loadingView.removeFromSuperview()
        }
    
    @IBAction func SliderX(_ sender: UISlider) {
        x = Float(sender.value)
        BoxNode.geometry = SCNBox(width: CGFloat(self.x), height: CGFloat(self.z), length: CGFloat(self.y), chamferRadius: 0)
        self.material.diffuse.contents = UIColor(red: 0.901, green: 0.901, blue:0.901, alpha: 0.950)
        self.BoxNode.geometry?.materials = [self.material]
        ASVBLabel1.text = String(Int(Float(x * 1000))) + "mm"
    }
    
    @IBAction func SliderY(_ sender: UISlider) {
        y = Float(sender.value)
        BoxNode.geometry = SCNBox(width: CGFloat(self.x), height: CGFloat(self.z), length: CGFloat(self.y), chamferRadius: 0)
        self.material.diffuse.contents = UIColor(red: 0.901, green: 0.901, blue:0.901, alpha: 0.950)
        self.BoxNode.geometry?.materials = [self.material]
        ASVBLabel2.text = String(Int(Float(y * 1000))) + "mm"
    }
    
    @IBAction func SliderZ(_ sender: UISlider) {
        z = Float(sender.value)
        BoxNode.geometry = SCNBox(width: CGFloat(self.x), height: CGFloat(self.z), length: CGFloat(self.y), chamferRadius: 0)
        self.material.diffuse.contents = UIColor(red: 0.901, green: 0.901, blue:0.901, alpha: 0.950)
        self.BoxNode.geometry?.materials = [self.material]
        ASVBLabel3.text = String(Int(Float(z * 1000))) + "mm"
    }
    @IBOutlet weak var arSizeSlider: UIView!
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
            if viewController is arTabBarSettingViewController {
                tabBarController?.tabBar.isHidden = false
                navigationController.navigationBar.isHidden = false
                print("OK!!!")
            }
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        //平面認識
        configuration.planeDetection = .horizontal
                
        //configuration.environmentTexturing = .automatic
        // People Occlusion が使える端末か判定
        /*var message:String;
            if ARWorldTrackingConfiguration.supportsFrameSemantics(.personSegmentationWithDepth) {
            // People Occlusion を使用する
                configuration.frameSemantics = .personSegmentationWithDepth
                message = "occulusion使用可能"
            } else {
                message = "occulusion使用不可"
                        }
            print("\(message)")*/

            // Run the view's session
            sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
            DispatchQueue.main.async {
                if self.isFirst {
                    self.isFirst = false
                }
                else if self.isFirst == false && self.times == true && self.count == 2{
                    self.BoxNode.geometry = SCNBox(width: CGFloat(self.x), height: CGFloat(self.y), length: CGFloat(self.z), chamferRadius: 0)
                    self.material.diffuse.contents = UIColor(red: 0.901, green: 0.901, blue:0.901, alpha: 0.950)
                    self.BoxNode.geometry?.materials = [self.material]
                    //self.BoxNode.position.y += Float(0.05)
                    self.BoxNode.rotation = SCNVector4(0, 1, 0, 0)
                    node.addChildNode(self.BoxNode)
                    self.times = true
                }
            }
        }
        
        @objc func tapped(sender: UITapGestureRecognizer) {
            // タップされた位置のARアンカーを探す
            let tapLocation = sender.location(in: sceneView)
            let hitTest = sceneView.hitTest(tapLocation, types: .existingPlaneUsingExtent)
            
            // タップした箇所が取得できていればアンカーを追加
            if !hitTest.isEmpty {
                count = 2
                let anchor = ARAnchor(transform: hitTest.first!.worldTransform)
                sceneView.session.add(anchor: anchor)
            }
        }
    
    @IBAction func goSearchButton(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "SearchResults") as! SearchResultsViewController
        next.SelectCategory = itemcategory
        let xmSize:Float = x * 1000
        next.xSize = Int(xmSize)
        self.present(next, animated: true)
    }
    

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
