import SpriteKit
@testable import writeTrack

class MockLaunchScene: LaunchScene, MockingJay {
    var invocations = [Invocation]()

    override var track: SKNode? {
        return result(for: Getter(withSelector: .track)) as? SKNode
    }
}

fileprivate extension Selector {
    static let track = #selector(getter: LaunchScene.track)
}
