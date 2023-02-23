import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }
  toggle() {
    document.getElementById('modal-background').classList.toggle('hide');
    document.getElementById('modal').classList.toggle('hide');
  }
}
