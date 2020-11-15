import { Controller } from 'stimulus';
export default class extends Controller {
    static targets = [ "form" ]

    submitSuccess(event) {
        const [xhr] = event.detail

        this.formTarget.innerHTML = xhr.response;
    }

    showError(event) {
        const [xhr] = event.detail
        this.formTarget.innerHTML = xhr.response;
    }
}