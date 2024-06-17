import ComposableArchitecture
import Foundation

@Reducer
public struct TimetableReducer {
    public init() {}

    @ObservableState
    public struct State: Equatable {
        var timetableItems: [TimetableTimeGroupItems] = [] //Should be simple objects
        
        public init(timetableItems: [TimetableTimeGroupItems] = []) {
            self.timetableItems = timetableItems
        }
    }

    public enum Action {
        case onAppear
        case selectDay(DayTab)
    }

    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                state.timetableItems = SampleData.init().day1Results
                return .none
            case .selectDay(let dayTab):
                //TODO: Replace with real data
                
                switch dayTab {
                case .day1:
                    state.timetableItems = SampleData.init().day1Results
                    return .none
                case .day2:
                    state.timetableItems = SampleData.init().day2Results
                    return .none
                case .day3:
                    state.timetableItems = SampleData.init().day3Results
                    return .none
                }
            }
        }
    }
}



