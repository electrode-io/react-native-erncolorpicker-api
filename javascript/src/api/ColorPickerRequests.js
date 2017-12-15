// @flow


export default class ColorPickerRequests {
    constructor(bridge) {
     this._bridge = bridge;
    }

        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerGetSelectedColorRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.colorpickerApi.ern.api.request.getSelectedColor", handler);
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    /**
      * User selected color
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link String }
      */

     getSelectedColor(timeout: number): Promise<any> {
            return this._bridge.sendRequest("com.colorpickerApi.ern.api.request.getSelectedColor", {timeout});

    }
}
