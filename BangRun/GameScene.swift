//
//  GameScene.swift
//  BangRun
//
//  Created by Bruno Vilela on 25/10/16.
//  Copyright © 2016 Bruno Vilela. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
	
	private var label : SKLabelNode?
	
	private var sprites:[SKSpriteNode] = []
	let numberOfSprites = 2
	
	var screenwidth : Int! //Screen size
	var screenheight : Int!
	
	
	private var runner: Player!
	
	// Run when the Scene stars
	override func didMove(to view: SKView){
		
		screenwidth = Int((self.view?.frame.size.width)!)
		screenheight = Int((self.view?.frame.size.height)!)
		
		// Sets a physical border in the GameScene
		physicsWorld.gravity = CGVector(dx: 0, dy: -8.8)
		let borderBody = SKPhysicsBody(edgeLoopFrom: self.frame)
		borderBody.friction = 0.0
		self.physicsBody = borderBody
		
		runner = Player()
		addChild(runner)
		
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

		runner.jump()
		
	}
	
	override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
		
	}
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
	
	}
	
	override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
		
	}
	
	
	override func update(_ currentTime: TimeInterval) {
		
		// Called before each frame is rendered
		
		//		if (sprites[0].position.x < (screenwidth/2)-sprites[0].size.width) {
		//			sprites[0].position.x += 1
		//		}else{
		//			sprites[0].position.y += 1
		//		}
		//
	}
	
}
