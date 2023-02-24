import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    document.getElementById('new-list-form').addEventListener('submit', (e) => {
      this.toggle();
    });
  }
  toggle() {
    document.getElementById('modal-background').classList.toggle('hide');
    document.getElementById('modal').classList.toggle('hide');
  }
}
