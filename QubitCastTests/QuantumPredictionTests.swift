import XCTest
@testable import QubitCast

class QuantumPredictionTests: XCTestCase {
    func testQuantumPredictionModel() {
        let model = QuantumPredictionModel()
        let features = ["hour": 12.0]
        let prediction = model.predict(using: features)
        
        XCTAssertNotNil(prediction, "Prediction should not be nil")
    }
}
