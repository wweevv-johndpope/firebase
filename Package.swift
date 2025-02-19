// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirebaseAnalytics",
    products: [
        .library(
            name: "FirebaseCore",
            targets: [
                "FirebaseCore",
                "FirebaseCoreDiagnostics",
                "GoogleUtilities"
            ]),
         .library(
            name: "Firebase",
            targets: [
                "FirebaseAnalytics",
                "FirebaseCore",
                "FirebaseCoreDiagnostics",
                "FirebaseInstallations",
                "GoogleAppMeasurement",
                "GoogleDataTransport",
                "GoogleUtilities",
                "nanopb",
                "PromisesObjC",
            ]),
        .library(
            name: "FirebaseAnalytics",
            targets: [
                "FirebaseAnalytics",
                "FirebaseCore",
                "FirebaseCoreDiagnostics",
                "FirebaseInstallations",
                "GoogleAppMeasurement",
                "GoogleDataTransport",
                "GoogleUtilities",
                "nanopb",
                "PromisesObjC",
            ]),
        .library(
            name: "FirebaseCrashlytics",
            targets: [
                "FirebaseCrashlytics"
            ]),
        .library(
            name: "FirebasePerformance",
            targets: [
                "FirebaseABTesting",
                "FirebasePerformance",
                "FirebaseRemoteConfig"
            ])
    ],
    dependencies: [
    ],
    targets: [
        // FirebaseAnalytics
        .binaryTarget(name: "FirebaseAnalytics", path: "./FirebaseAnalytics/FirebaseAnalytics.xcframework"),
        .binaryTarget(name: "FirebaseCore", path: "./FirebaseAnalytics/FirebaseCore.xcframework"),
        .binaryTarget(name: "FirebaseCoreDiagnostics", path: "./FirebaseAnalytics/FirebaseCoreDiagnostics.xcframework"),
        .binaryTarget(name: "FirebaseInstallations", path: "./FirebaseAnalytics/FirebaseInstallations.xcframework"),
        .binaryTarget(name: "GoogleAppMeasurement", path: "./FirebaseAnalytics/GoogleAppMeasurement.xcframework"),
        .binaryTarget(name: "GoogleDataTransport", path: "./FirebaseAnalytics/GoogleDataTransport.xcframework"),
        .binaryTarget(name: "GoogleUtilities", path: "./FirebaseAnalytics/GoogleUtilities.xcframework"),
        .binaryTarget(name: "nanopb", path: "./FirebaseAnalytics/nanopb.xcframework"),
        .binaryTarget(name: "PromisesObjC", path: "./FirebaseAnalytics/PromisesObjC.xcframework"),
        // FirebaseCrashlytics
        .binaryTarget(name: "FirebaseCrashlytics", path: "./FirebaseCrashlytics/FirebaseCrashlytics.xcframework"),
        // FirebasePerformance
       .binaryTarget(name: "FirebaseABTesting", path: "./FirebasePerformance/FirebaseABTesting.xcframework"),
       .binaryTarget(name: "FirebasePerformance", path: "./FirebasePerformance/FirebasePerformance.xcframework"),
       .binaryTarget(name: "FirebaseRemoteConfig", path: "./FirebasePerformance/FirebaseRemoteConfig.xcframework"),
    ]
)
