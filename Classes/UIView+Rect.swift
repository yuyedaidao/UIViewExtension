//
//  UIView+Rect.swift
//  UIViewExtension
//
//  Created by 王叶庆 on 2017/8/8.
//  Copyright © 2017年 王叶庆. All rights reserved.
//

import UIKit

extension UIView {
    public var x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    public var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    public var width: CGFloat {
        get {
            return self.frame.width
        }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }

    public var height: CGFloat {
        get {
            return self.frame.height
        }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    public var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            var center = self.center
            center.x = newValue
            self.center = center
        }
    }
    
    public var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            var center = self.center
            center.y = newValue
            self.center = center
        }
    }
    
    public var maxX: CGFloat {
        get {
            return self.frame.maxX
        }
        set {
            assert(newValue > x)
            var frame = self.frame
            frame.size.width = newValue - x
            self.frame = frame
        }
    }

    public var maxY: CGFloat {
        get {
            return self.frame.maxY
        }
        set {
            assert(newValue > y)
            var frame = self.frame
            frame.size.height = newValue - y
            self.frame = frame
        }
    }

}

extension UIScreen {
    public var width: CGFloat {
        get {
            return self.bounds.width
        }
    }
    
    public var height: CGFloat {
        get {
            return self.bounds.height
        }
    }
}
