import { Controller } from "@hotwired/stimulus"
// import debounce from "debounce";

// Connects to data-controller="form"
export default class extends Controller {
    initialize() {
    }

    submit() {
        this.element.requestSubmit();
    }
}
