Summary:
When defining a protocol with a static property and extending a class that already has a property with that name, Xcode fails with a segmentation fault error and an internal error occurred message, if the static property is defined with a get and set in the protocol.

Steps to Reproduce:
1. Download sample project
2. Open file Protocols.swift
3. Modify declaration of property openSettingsURLString from "static var openSettingsURLString: String { get }" to "static var openSettingsURLString: String { get set }"

Expected Results:
The project shows a specific error informing about the actual problem.

Actual Results:
Xcode shows a message error: "An  internal error occurred. Source editor functionality is limited. Attempting to restore..."
The project shows a segmentation fault: 11 error

Version/Build:
Xcode 10.0 (10A255)
