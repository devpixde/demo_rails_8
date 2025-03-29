import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="greeter"
export default class extends Controller {

  static targets : string[] =['input','output']

  // we have to declare our targets for TS
  declare readonly inputTarget: HTMLInputElement
  declare readonly outputTarget: HTMLInputElement


  connect() {
    console.log('Hello form greeter mit Typescript!');
  }

  greet() {
    this.outputTarget.textContent = 'Hallo lieber ' + this.inputTarget.value
  }
}
