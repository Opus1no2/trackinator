import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.layout();
  }
  layout() {
    const container = document.querySelector('[data-id="list-items-cont"]');
    const newItemInput = document.querySelector('[data-id="list-item-input"]');
    newItemInput.style.width = `${container.clientWidth}px`;
  }
}
