import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    document.getElementById('new-list-form').addEventListener('submit', (e) => {
      this.toggle();
    });
  }
  toggle() {
    document.getElementById('modal-background').classList.toggle('hidden');
    document.getElementById('modal').classList.toggle('hidden');
  }
}
