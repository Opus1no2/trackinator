import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.layout();

    const list_items = this.element.querySelectorAll('.list-item-row');

    if (!list_items.length) {
      this.element.querySelector('[data-id="finished-state"]').classList.toggle('hidden');
    }
  }
  layout() {
    const container = document.querySelector('[data-id="list-items-cont"]');
    const newItemInput = document.querySelector('[data-id="list-item-input"]');
    newItemInput.style.width = `${container.clientWidth}px`;
  }
}
