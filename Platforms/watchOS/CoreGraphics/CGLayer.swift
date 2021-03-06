
class CGLayer {
}
@available(watchOS 2.0, *)
func CGLayerCreateWithContext(_ context: CGContext?, _ size: CGSize, _ auxiliaryInfo: CFDictionary?) -> CGLayer?
@available(watchOS 2.0, *)
func CGLayerGetSize(_ layer: CGLayer?) -> CGSize
@available(watchOS 2.0, *)
func CGLayerGetContext(_ layer: CGLayer?) -> CGContext?
@available(watchOS 2.0, *)
func CGContextDrawLayerInRect(_ context: CGContext?, _ rect: CGRect, _ layer: CGLayer?)
@available(watchOS 2.0, *)
func CGContextDrawLayerAtPoint(_ context: CGContext?, _ point: CGPoint, _ layer: CGLayer?)
@available(watchOS 2.0, *)
func CGLayerGetTypeID() -> CFTypeID
