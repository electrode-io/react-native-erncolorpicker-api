import { electrodeBridge } from 'react-native-electrode-bridge';
import ColorPickerRequests from './ColorPickerRequests';
import ColorPickerEvents from './ColorPickerEvents';

const REQUESTS = new ColorPickerRequests(electrodeBridge);

export function requests() {
    return REQUESTS;
}

const EVENTS = new ColorPickerEvents(electrodeBridge);

export function events() {
  return EVENTS;
}
export default ({requests, events});
