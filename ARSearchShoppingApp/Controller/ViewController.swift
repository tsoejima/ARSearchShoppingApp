//
//  ViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/10/19.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var returnTabButton: UINavigationItem!
    @IBOutlet var sceneView: ARSCNView!
    @IBOutlet weak var SliderView: UIView!
    @IBOutlet weak var arDataView: UIView!
    @IBOutlet weak var arDataViewBackground: UIView!
    @IBOutlet weak var arDataViewDirection: UILabel!
    @IBOutlet weak var arDataViewSize: UILabel!
    
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
    @IBOutlet weak var arSizeSliderBar: UISlider!
    
    @IBAction func arSizeSliderBarAction(_ sender: Any) {
    }
    
    @IBAction func arDirectionChange(_ sender: Any) {
        print("OKKK!")
        if changePass == "Horizontal"{
            changePass = "Vertical"
            test = 0.2
            arDataViewDirection.text = "高"
        }else if changePass == "Vertical"{
            changePass = "Height"
            arDataViewDirection.text = "縦"
        }else if changePass == "Height"{
            changePass = "Horizontal"
            arDataViewDirection.text = "横"
        }
    }
    //ARSlider設定部分
    @IBAction func SliderBar(_ sender: UISlider) {
        if changePass == "Horizontal"{
            arDataViewSize.text = String(x)
            x = Float(sender.value)
            BoxNode.geometry = SCNBox(width: CGFloat(self.x), height: CGFloat(self.y), length: CGFloat(self.z), chamferRadius: 0)
        }else if changePass == "Vertical"{
            arDataViewSize.text = String(y)
            y = Float(sender.value)
            //BoxNode.position.y += 0.0000001
                //abs(y - (y-0.0000001))
            print("Z")
            BoxNode.geometry = SCNBox(width: CGFloat(self.x), height: CGFloat(self.y), length: CGFloat(self.z), chamferRadius: 0)
        }else if changePass == "Height"{
            arDataViewSize.text = String(z)
            z = Float(sender.value)
            BoxNode.geometry = SCNBox(width: CGFloat(self.x), height: CGFloat(self.y), length: CGFloat(self.z), chamferRadius: 0)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arDataView.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000)
        arDataViewBackground.layer.cornerRadius = 17
        
        SliderView.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.600)
        
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

        
    }
    @IBOutlet weak var arSizeSlider: UIView!
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
            if viewController is arTabBarSettingViewController {
                tabBarController?.tabBar.isHidden = false
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
        var message:String;
            if ARWorldTrackingConfiguration.supportsFrameSemantics(.personSegmentationWithDepth) {
            // People Occlusion を使用する
                configuration.frameSemantics = .personSegmentationWithDepth
                message = "occulusion使用可能"
            } else {
                message = "occulusion使用不可"
                        }
            print("\(message)")

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
