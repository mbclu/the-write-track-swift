import SpriteKit
@testable import writeTrack

class MockLaunchScene: LaunchScene, MockingJay {
    var invocations = [Invocation]()
    var expectedInvocations = [InvocationResult]()

    override var track: SKNode? {
        return result(for: Invocation(named: "track")) as? SKNode
    }
}
