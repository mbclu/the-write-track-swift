import SpriteKit

class MockSKNode: SKNode, MockingJay {
    var invocations = [Invocation]()

    override func run(_ action: SKAction) {
        invocations.append(Function(forSelector: .run, withParams: [action]))
    }
}

fileprivate extension Selector {
    static let run = #selector(SKNode.run(_:))
}
