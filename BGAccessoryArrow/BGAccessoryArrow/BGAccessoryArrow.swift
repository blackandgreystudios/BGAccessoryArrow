//
//  BGAccessoryArrow.swift
//  BGAccessoryArrow
//
//  Created by Black & Grey Studios on 4/29/16.
//

// MARK: Properties & Initializers

public class BGAccessoryArrow: UIControl
{
    // MARK: Properties
    
    private let color: UIColor!
    
    // MARK: Initializers
    
    public required init?(coder aDecoder: NSCoder)
    {
        return nil
    }
    
    public init(frame: CGRect, color: UIColor)
    {
        self.color = color
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clearColor()
    }
    
    public convenience init(color: UIColor)
    {
        let frame = CGRectMake(0, 0, 11.5, 15.0)
        
        self.init(frame: frame, color: color)
    }
}

// MARK: - Drawing

public extension BGAccessoryArrow
{
    // MARK: Draw Rect
    
    override public func drawRect(rect: CGRect)
    {
        // Set x and y coordinates of arrow tip
        let x = CGRectGetMaxX(self.bounds) - 3.0
        let y = CGRectGetMidY(self.bounds)
        
        // Set arrow length
        let arrowLength: CGFloat = 4.5
        
        // Get current context
        let context = UIGraphicsGetCurrentContext()
        
        // Move context to top left
        CGContextMoveToPoint(context, x - arrowLength, y - arrowLength)
        
        // Add line from context to arrow tip
        CGContextAddLineToPoint(context, x, y)
        
        // Add line from arrow tip to bottom left
        CGContextAddLineToPoint(context, x - arrowLength, y + arrowLength)
        
        // Set line properties
        CGContextSetLineCap(context, CGLineCap.Square)
        CGContextSetLineJoin(context, CGLineJoin.Miter)
        CGContextSetLineWidth(context, 2)
        
        // Set arrow color
        self.color.setStroke()
        
        // Draw arrow
        CGContextStrokePath(context)
    }
}
