
public class ColorPickerRequests: ColorPickerAPIRequests {

    public override func registerGetSelectedColorRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: ColorPickerAPI.kRequestGetSelectedColor,
    reqClass: None.self, 
    respClass: String.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    public override func getSelectedColor( responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<None, String, Any>(
            requestName: ColorPickerAPI.kRequestGetSelectedColor,
            requestPayload: nil, 
            respClass: String.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}