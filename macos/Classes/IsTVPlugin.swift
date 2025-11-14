import Cocoa
import FlutterMacOS

public class IsTVPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "is_tv", binaryMessenger: registrar.messenger)
    let instance = IsTVPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "check":
      result(false)
    default:
      // 处理未定义的方法调用
      result(FlutterMethodNotImplemented)
    }
  }
}
