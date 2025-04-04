//
//  Copyright 2022 Google LLC
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import GoogleMobileAds
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
    let versionNumber = string(for: MobileAds.shared.versionNumber)
    print("Google Mobile Ads SDK version: \(versionNumber)")

      // <Google> Note that test device identifiers may be reset when uninstalling and reinstalling the application.
      MobileAds.shared.requestConfiguration.testDeviceIdentifiers = ["d1617f057bc49f9a4f78834c1de96441"]
      
    return true
  }
}

@main
struct SwiftUIDemoApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

  var body: some Scene {
    WindowGroup {
      MenuView()
        .navigationViewStyle(StackNavigationViewStyle())
    }
  }
}
