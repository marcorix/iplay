import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['list', 'form']
  // connect() {
  //   console.log("hello from insert controller")
  //   console.log(this.listTarget , this.formTarget)
  // }

  send(e) {
    e.preventDefault()
    fetch(this.formTarget.action, {
      method: 'POST',
      headers: {"Accept": "application/json"},
      body: new FormData(this.formTarget)
    })
    .then(res => res.json())
    .then((data) => {
      console.log(data)
      // if (data.inserted_item) {
      //   this.listTarget.insertAdjacentHTML('afterbegin', `<li>${data.inserted_item}</li`)
      // } else {
      //   this.formTarget.outerHTML = data.form
      // }
    })
  }
}
