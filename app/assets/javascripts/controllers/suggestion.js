(() => {
    const application = Stimulus.Application.start();

    application.register("suggestion", class extends Stimulus.Controller {
        static get targets() {
            return [
                'formContainer',
                'form',
                'formSection',
                'name',
                'cityId',
                'nameError',
                'cityError'
            ];
        }

        connect() {
            const thisController = this;
            $('.suggestion-button--desktop').click(function (e) {
                const suggestionModal = $('#suggestionModal');
                suggestionModal.removeClass('none');

                const $body = $('body');
                $body.addClass('lock');

                $('#organization_city_id').select2({
                    placeholder: "Mjesto",
                    allowClear: true
                });

                suggestionModal.unbind().click(function (e) {
                    if (e.target === this) {
                        thisController.closeForm()
                    }
                })
            })
        }

        closeForm() {
            $('.successMessage').hide();
            $('.suggestionFormContainer__content').show();
            $('#suggestionModal').addClass('none');

            const $body = $('body');
            $body.removeClass('lock');
            this.formTarget.reset();
            this.resetErrorMessages();
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
                $('.successMessage').show();
                $('.suggestionFormContainer__content').hide();
            }
        }

        resetErrorMessages() {
            this.nameErrorTarget.textContent = ""
            this.cityErrorTarget.textContent = ""
        }

        validateForm() {
            this.resetErrorMessages();

            if (this.nameTarget.value.trim() === "") {
                this.nameTarget.focus();
                this.nameErrorTarget.textContent = "Ime udruge je obavezno polje.";
                this.targets.findAll("formSection")[0].classList.add("error");
                return false;
            }

            if (this.cityIdTarget.value.trim() === "") {
                this.cityIdTarget.focus();
                this.cityErrorTarget.textContent = "Molimo odaberite mjesto.";
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