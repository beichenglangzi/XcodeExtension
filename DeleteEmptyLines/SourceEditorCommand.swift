//
//  SourceEditorCommand.swift
//  DeleteEmptyLines
//
//  Created by 白天伟 on 2019/1/31.
//  Copyright © 2019 baitianwei. All rights reserved.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        defer { completionHandler(nil) }
        invocation.deleteEmptyLines()
    }
    
}
