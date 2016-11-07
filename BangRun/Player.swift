//
//  Player.swift
//  BangRun
//
//  Created by Bruno Vilela on 25/10/16.
//  Copyright © 2016 Bruno Vilela. All rights reserved.
//

import UIKit
import SpriteKit

class Player: SKSpriteNode {
	
	init() {
		let texture = SKTexture(imageNamed: "player")
		super.init(texture: texture, color:UIColor.clear, size:texture.size())
		self.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: self.size.width, height: self.size.height))
		self.name = "Runner"
		self.position = CGPoint(x: -179.972, y: -102.664)
		
		// physicsBody stuff
		self.physicsBody?.isDynamic = false
		self.physicsBody?.affectedByGravity = true
		self.physicsBody?.friction = 0
		self.physicsBody?.restitution = 1
		self.physicsBody?.linearDamping = 0
		self.physicsBody?.angularDamping = 0
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	func move(){
		
	}
	
	func jump(){
		self.physicsBody?.isDynamic = true
		self.physicsBody?.applyImpulse(CGVector(dx: 0.0, dy: 10.0))
	}
	
}
