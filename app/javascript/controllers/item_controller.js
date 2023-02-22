import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const list_items = this.element.querySelectorAll('.list-item-row');

    if (!list_items.length) {
      this.element.querySelector('[data-id="finished-state"]').classList.toggle('hide');
    }
  }
}
