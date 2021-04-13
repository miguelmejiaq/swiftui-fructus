# Fructus Project

Fructus is a SwiftUI project that use some basic resources from SwiftUI 2.0 into a UI that show info regarding some fruits. All this code was created using the course by [Swift UI Master class](https://swiftuimasterclass.com/). Feel free to visit and subscribe to this courses.

## Components

Components used into this project are describe in the next lines. Also, some properties would be explained in order to keep all changes documented and give an initial information about how to use it. Finally, Each component include official links for more details.

### AppStorage

Is a wrapper that SwiftUI uses for interact with ***UserDefaults*** values and preserve information once the application is closed or killed.

#### Example

```swift
@AppStorage("isOnboarding") var isOnboarding: Bool = true
```

Follow [this link](https://developer.apple.com/documentation/swiftui/appstorage) for more details.

### State

Is a way of set properties that trigger changes into the UI. It means that you "notify" the view to be updated once the variable with ***State*** is updated. when you use this variable into the view, you must add dollar sign ***$*** at start of the variable to tell SwiftUI that you want to create a binding between this variable and the component. 

```swift
struct ContentView: View {
    @State private var active : Bool = false
    var body: Some View {
        LogOutButton(isActive: $active)
    }
}
```
Follow [this link](https://developer.apple.com/documentation/swiftui/state) for more details.
