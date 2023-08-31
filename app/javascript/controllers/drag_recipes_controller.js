import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="drag-recipes"
export default class extends Controller {

  connect() {
    this.element.addEventListener('dragstart', e => {
      e.dataTransfer.setData('text/plain', this.element.dataset.index);
    });

  }

}
