import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('HELLO WOELD');
    //this.element.textContent = "Hello World! from hello_controller.js"
  }
}
