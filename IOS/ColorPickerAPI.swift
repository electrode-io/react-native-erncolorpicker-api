public class ColorPickerAPI: NSObject  {
    static let kEventColorSelected = "com.colorpickerApi.ern.api.event.colorSelected";


    static let kRequestGetSelectedColor = "com.colorpickerApi.ern.api.request.getSelectedColor";

    public lazy var events: ColorPickerAPIEvents = {
        return ColorPickerEvents()
    }()


    public lazy var requests: ColorPickerAPIRequests = {
        return ColorPickerRequests()
    }()
}

public class ColorPickerAPIEvents: NSObject {
    public func addColorSelectedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) {
        assertionFailure("should override")
    }

    public func emitEventColorSelected(selectedColor: String) {
        assertionFailure("should override")

    }
}

public class ColorPickerAPIRequests: NSObject {
    public func registerGetSelectedColorRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func getSelectedColor(responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}

