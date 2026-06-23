import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Direct View")                { DirectViewScreen() }
                NavigationLink("View Container")             { ViewContainerScreen() }
                NavigationLink("Return Statement")           { ReturnStatementScreen() }
                NavigationLink("Ternary")                    { TernaryScreen() }
                NavigationLink("With Animation Trailing")    { WithAnimationTrailingScreen() }
                NavigationLink("With Animation Parenthetical") { WithAnimationParentheticalScreen() }
                NavigationLink("If Else")                    { IfElseScreen() }
                NavigationLink("Switch")                     { SwitchScreen() }
                NavigationLink("Guard")                      { GuardScreen() }
                NavigationLink("#if Config")                 { IfConfigScreen() }
                NavigationLink("Multi Statement")            { MultiStatementScreen() }
                NavigationLink("Side Effect Before View")    { SideEffectBeforeScreen() }
                NavigationLink("Deep Nesting")               { DeepNestingScreen() }
                NavigationLink("Empty Body")                 { EmptyBodyScreen() }
                NavigationLink("Force Unwrap")               { ForceUnwrapScreen() }
                NavigationLink("Nested Ternary")             { TernaryNestedScreen() }
                NavigationLink("Guard With Else")            { WithGuardAndElseScreen() }
                NavigationLink("Function Call")              { FunctionCall1() }
                NavigationLink("Group")                      { GroupView() }
                NavigationLink("List")                       { ListView() }
                NavigationLink("Navigation Stack")           { NavigationViewScenario() }
                NavigationLink("Scroll View")                { ScrollViewScenario() }
                NavigationLink("Tab View")                   { TabViewScenario() }
                NavigationLink("Container View")             { ContainerViewScenario() }
            }
            .navigationTitle("Body Scenarios")
        }
    }
}
