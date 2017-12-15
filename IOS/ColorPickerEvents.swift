
public class ColorPickerEvents:  ColorPickerAPIEvents {
    public override func addColorSelectedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) {
        let listenerProcessor = EventListenerProcessor(
                                eventName: ColorPickerAPI.kEventColorSelected,
                                eventPayloadClass: String.self,
                                eventListener: eventListener)

        listenerProcessor.execute()
    }

    public override func emitEventColorSelected(selectedColor: String) {
        let eventProcessor = EventProcessor(
                                eventName: ColorPickerAPI.kEventColorSelected,
                                eventPayload: selectedColor)

        eventProcessor.execute()
    }
}
