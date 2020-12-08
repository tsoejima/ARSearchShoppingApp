//
//  RelocationArViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/12/07.
//

import UIKit
import SceneKit
import ARKit
import Lottie

class RelocationArViewController: UIViewController,ARSCNViewDelegate {
    
    @IBOutlet weak var sceneView: ARSCNView!
    
    @IBOutlet weak var RelocationMenuBackground: UIView!
    @IBOutlet weak var RelocationMenuScroll: UIView!
    
    @IBOutlet weak var RMS1: UIView!
    @IBOutlet weak var RMS2: UIView!
    @IBOutlet weak var RMS3: UIView!
    @IBOutlet weak var RMS4: UIView!
    @IBOutlet weak var RMS5: UIView!
    @IBOutlet weak var RMS6: UIView!
    @IBOutlet weak var RMS7: UIView!
    @IBOutlet weak var RMS8: UIView!
    @IBOutlet weak var RMS9: UIView!
    @IBOutlet weak var RMS10: UIView!
    
    @IBOutlet weak var RMSV1: UIView!
    @IBOutlet weak var RMSV2: UIView!
    @IBOutlet weak var RMSV3: UIView!
    @IBOutlet weak var RMSV4: UIView!
    @IBOutlet weak var RMSV5: UIView!
    @IBOutlet weak var RMSV6: UIView!
    @IBOutlet weak var RMSV7: UIView!
    @IBOutlet weak var RMSV8: UIView!
    @IBOutlet weak var RMSV9: UIView!
    @IBOutlet weak var RMSV10: UIView!
    
    @IBOutlet weak var BackButton: UIButton!
    
    
    
    
    
    var selectedNode: SCNNode?
        var xyz: float_t = 0.2
        var x: float_t = 0.2
        var y: float_t = 0.2
        var z: float_t = 0.2
        var isFirst = true
        var times = true
        var count = 0
        let BoxNode = SCNNode()
        var itemSizeX:String?
        var itemSizeY:String?
        var itemSizeZ:String?
    
        let material = SCNMaterial()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = false
        
        startLoading()
    
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
        self.stopLoading()
            
        }
        x = Float(itemSizeX!)! * 0.001
        y = Float(itemSizeY!)! * 0.001
        z = Float(itemSizeZ!)! * 0.001
        
        RelocationMenuBackground.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RelocationMenuScroll.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS1.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS2.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS3.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS4.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS5.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS6.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS7.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS8.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS9.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        RMS10.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        
        RMSV1.layer.cornerRadius = 15
        
        BackButton.layer.cornerRadius = 10
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.BackButton.bounds
        gradientLayer.cornerRadius = 10
        //グラデーションカラーの選択
        let color1 = UIColor(red: 0.521, green: 0.552, blue:1.000, alpha: 1.000).cgColor
        let color2 = UIColor(red: 0.800, green: 0.996, blue:1.000, alpha: 1.000).cgColor
        gradientLayer.colors = [color1, color2]
        //グラデーションの方向を指定
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 1 , y: 1)
        //グラデーションレイヤーの表示
        self.BackButton.layer.insertSublayer(gradientLayer,at:0)
        // Set the view's delegate
                sceneView.delegate = self
                
                // Show statistics such as fps and timing information
                sceneView.showsStatistics = true
                
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
                        message = "Ok! This device supports people occulusion."
                        } else {
                            message = "No! This device don't support people occulusion."
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
                        self.BoxNode.geometry = SCNBox(width: CGFloat(self.x), height: CGFloat(self.z), length: CGFloat(self.y), chamferRadius: 0)
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
    
    @IBAction func BuckButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
