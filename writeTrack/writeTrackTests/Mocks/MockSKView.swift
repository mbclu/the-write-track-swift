import SpriteKit

class MockSKView: SKView, MockingJay {
    var invocations = [Invocation]()

    override func presentScene(_ scene: SKScene?) {
        invocations.append(Function(forSelector: .presentScene, withParams: [scene]))
    }
}

fileprivate extension Selector {
    static let presentScene = #selector(SKView.presentScene(_:))
}
