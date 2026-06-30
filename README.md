# BTTInstrumentor
A command-line tool to be used with [btt-swift-sdk](https://github.com/blue-triangle-tech/btt-swift-sdk) for instrumenting SwiftUI views.  

BTTInstrumenter is a companion command-line tool that automatically instruments SwiftUI views in your iOS app. Once integrated into your Xcode project, BTTInstrumenter runs on every build — eliminating the need to manually add instrumentation code to each view.

## Setup

**1. Install BTTInstrumentor**

Install the BlueTriangle SwiftUI instrumentor via Homebrew.:

```bash
brew tap blue-triangle-tech/tools
```
```bash
brew trust blue-triangle-tech/tools
```
```bash
brew install bttinstrumentor
```

**2. Install Instrumentor to Your Project**

Quit Xcode, navigate to your project root in Terminal, then run:

```bash
BTTInstrumentor install
```

**3.Verify Setup**

Check installetion with below command

```bash
BTTInstrumentor check
```

For more information on Instrumentor, visit the [**Official Help Doc**](https://help.bluetriangle.com/hc/en-us/articles/52918697353875-iOS-SwiftUI-SDK-Instrumentation-Automated-Screen-Tracking)
