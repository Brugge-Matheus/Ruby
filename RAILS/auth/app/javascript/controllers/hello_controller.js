import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Hello Controller carregado!")
  }

  alert() {
    alert("Alerta funcionando!")
  }
}
