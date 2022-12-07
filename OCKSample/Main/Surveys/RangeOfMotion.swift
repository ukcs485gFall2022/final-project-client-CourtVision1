//
//  RangeOfMotion.swift
//  OCKSample
//
//  Created by Corey Baker on 11/11/22.
//  Copyright © 2022 Network Reconnaissance Lab. All rights reserved.
//

import CareKitStore
#if canImport(ResearchKit)
import ResearchKit
#endif

struct RangeOfMotion: Surveyable {
    static var surveyType: Survey {
        Survey.rangeOfMotion
    }
}

#if canImport(ResearchKit)
extension RangeOfMotion {
    func createSurvey() -> ORKTask {

        let rangeOfMotionOrderedTask = ORKOrderedTask.shoulderRangeOfMotionTask(
            withIdentifier: identifier(),
            limbOption: .left,
            intendedUseDescription: nil,
            options: [.excludeConclusion]
        )

        let completionStep = ORKCompletionStep(identifier: "\(identifier()).completion")
        completionStep.title = "All done!"
        completionStep.detailText = "Keep that shoulder loosened up!"

        rangeOfMotionOrderedTask.addSteps(from: [completionStep])

        return rangeOfMotionOrderedTask
    }

    func extractAnswers(_ result: ORKTaskResult) -> [OCKOutcomeValue]? {
        guard let motionResult = result.results?
            .compactMap({ $0 as? ORKStepResult })
            .compactMap({ $0.results })
            .flatMap({ $0 })
            .compactMap({ $0 as? ORKRangeOfMotionResult })
            .first else {

            assertionFailure("Failed to parse range of motion result")
            return nil
        }

        var range = OCKOutcomeValue(motionResult.range)

        range.kind = #keyPath(ORKRangeOfMotionResult.range)

        return [range]
    }
}
#endif
