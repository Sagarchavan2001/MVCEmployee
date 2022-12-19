//
//  backDataPassing.swift
//  mvcEmployee
//
//  Created by STC on 08/11/22.
//

import Foundation
protocol backDataPassing : AnyObject{
    func passToFirstViewController(employee: Employee)
}
