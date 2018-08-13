//
//  VCExtensions.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/13/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    func vcOfType( _ type: VCIdentifiers) -> UIViewController {
        return self.instantiateViewController(withIdentifier: type.txt)
    }
}
