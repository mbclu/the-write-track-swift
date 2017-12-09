import SpriteKit

class MockSKNode: SKNode {
    var invocations = [Invocation]()

    override func run(_ action: SKAction) {
        invocations.append(Invocation(name: "run", params: [action]))
    }
}
