import { Controller } from '@hotwired/stimulus'
import Rails from '@rails/ujs'

export default class extends Controller {
  clear(event) {
    event.target.value = event.target.name = ''
    this.submit()
  }

  submit() {
    Rails.fire(this.element, 'submit')
  }
}
