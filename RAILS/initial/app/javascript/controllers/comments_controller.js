import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    togglEditForm(e) {
        e.preventDefault();
        const formId = e.params["form"]
        const editForm = document.getElementById(formId)

        if (editForm !== '') {
            editForm.classList.toggle("d-none")
        }
    }
}