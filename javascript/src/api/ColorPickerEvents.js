// @flow
export default class ColorPickerEvents {
    constructor(bridge) {
        this._bridge = bridge;
    }

            addColorSelectedEventListener( eventListener: Function): string {
            return   this._bridge.registerEventListener("com.colorpickerApi.ern.api.event.colorSelected", eventListener);
            }

            removeColorSelectedEventListener( uuid: string): any {
            return   this._bridge.removeEventListener(uuid);
            }

//------------------------------------------------------------------------------------------------------------------------------------

            emitColorSelected(selectedColor: string): void {
                    return this._bridge.emitEvent("com.colorpickerApi.ern.api.event.colorSelected", { data:selectedColor });


            }
}
