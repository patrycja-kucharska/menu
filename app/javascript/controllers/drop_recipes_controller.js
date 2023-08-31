import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="drop-recipes"
export default class extends Controller {
  connect() {
    const abc = (e) => {
      const recipeId = e.dataTransfer.getData('text/plain');
      const entryId = this.element.dataset.index;
      this.updateEntry(entryId, recipeId);
    }

    const aaa = (e) => {
      e.preventDefault();
    }

    this.element.addEventListener('dragenter', aaa)
    this.element.addEventListener('dragover', aaa);
    this.element.addEventListener('dragleave', aaa);
    this.element.addEventListener('drop', abc);
  }

  updateEntry(entryId, recipeId) {
    return fetch(`/entries/${entryId}/recipe`, {
      method: 'PUT', // *GET, POST, PUT, DELETE, etc.
      mode: 'cors', // no-cors, *cors, same-origin
      cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
      credentials: 'same-origin', // include, *same-origin, omit
      headers: { 'Content-Type': 'application/json', 'X-CSRF-Token': document.querySelector("[name='csrf-token']").content },
      body: JSON.stringify({ recipe_id: recipeId })
    }).then(response => response.json())
  }
}
