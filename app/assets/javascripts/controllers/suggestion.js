(() => {
    const application = Stimulus.Application.start();

    application.register("suggestion", class extends Stimulus.Controller {
        static targets = [
            'formContainer',
            'form',
            'formSection',
            'name',
            'cityId',
            'nameError',
            'cityError'
        ];

        connect() {
            $('.suggestionButton').click(function (e) {
                e.preventDefault();
                $('#suggestionModal').show();
                $('#organization_city_id').select2({
                    placeholder: "Mjesto",
                    allowClear: true
                });
            })
        }

        closeForm() {
            $('#suggestionModal').hide();
        }

        submit(event) {
            if (!this.validateForm()) {
                event.preventDefault();
                this.showError();
            }
        }

        submitSuccess(event) {
            let [data, status, xhr] = event.detail;
            if (status === 'Created') {
                this.formContainerTarget.innerHTML = data.html
            }
        }

        validateForm() {
            this.nameErrorTarget.textContent = ""
            this.cityErrorTarget.textContent = ""

            if (this.nameTarget.value.trim() === "") {
                this.nameTarget.focus();
                this.nameErrorTarget.textContent = "Ime udruge je obavezno polje.";
                this.targets.findAll("formSection")[0].classList.add("error");
                return false;
            }

            if (this.cityIdTarget.value.trim() === "") {
                this.cityIdTarget.focus();
                this.cityErrorTarget.textContent = "Molimo izaberite grad.";
                this.targets.findAll("formSection")[1].classList.add("error");
                return false;
            }

            return true;
        }

        showError() {
            const errorElements = $(".form__section.error");
            if (errorElements.length > 0) {
                $('html, body').animate({
                    scrollTop: errorElements.first().offset().top - 120
                }, 200);
            }
        }

    })
})();