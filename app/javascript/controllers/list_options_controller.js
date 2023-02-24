import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }
  toggle() {
    this.element.classList.toggle('show');
    document.querySelector('.dropdown-content').classList.toggle('show');
  }
}
