import { Controller } from '@hotwired/stimulus'
import Rails from '@rails/ujs'

export default class extends Controller {
  submit() {
    Rails.fire(this.element, 'submit')
  }
}
