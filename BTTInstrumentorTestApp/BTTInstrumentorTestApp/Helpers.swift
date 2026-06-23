import SwiftUI
import BlueTriangle

enum Tab { case home, profile, extra }

struct HeaderView: View {
    var body: some View {
        VStack {
            Text("Header View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct FooterView: View {
    var body: some View {
        VStack {
            Text("Footer View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct MainView: View {
    var body: some View {
        VStack {
            Text("Main View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Detail View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Login View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Home View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct DebugView: View {
    var body: some View {
        VStack {
            Text("Debug View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct ReleaseView: View {
    var body: some View {
        VStack {
            Text("Release View")
        }
        .bttTrack("\(Self.self)")
    }
}

struct LoadingView: View {
    var body: some View {
        VStack {
            Text("Loading View")
        }
        .bttTrack("\(Self.self)")
    }
}
