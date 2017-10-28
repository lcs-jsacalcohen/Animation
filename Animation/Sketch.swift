
import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    var dx : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
     
        // Set the change value
        dx = 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //clean up
         canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 500, bottomLeftY: 500, width: 500, height: 500)
        
        
        // Change position
        x += dx
        
        // Make it bounce at right
        if x > 500 {//start of the block
            dx = -2 //move to the left}
            
  
            //Draw an ellipse
            canvas.fillColor = .black
            
        }
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        
    }
    
}

