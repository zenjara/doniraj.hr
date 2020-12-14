(() => {
    const application = Stimulus.Application.start();

    application.register("menu", class extends Stimulus.Controller {
        connect() {}

        toggleMenu() {
            const mobileMenu = document.getElementById('mobile-menu');
            const body = document.getElementById('body');

            this.hideMobileForm();
            mobileMenu.classList.toggle('mobile-menu--hidden');
            body.classList.toggle('lock');
        }

        hideMobileForm() {
            const actions = document.getElementById('mobile-menu__actions-wrapper');
            const form = document.getElementById('mobile-form');

            actions.classList.remove('none');
            form.classList.add('none');
        }

        toggleMobileForm() {
            const actions = document.getElementById('mobile-menu__actions-wrapper');
            const form = document.getElementById('mobile-form');

            actions.classList.toggle('none');
            form.classList.toggle('none');

            const formContent = document.getElementById('form-content');
            formContent.classList.remove('none');

            const successMessage = document.getElementById('mobile-menu__success-message');
            successMessage.classList.add('none');

        }

        selectFormCityMobile(event) {
            const optionElement = document.querySelector(`[value="${event.target.value}"]`);
            const optionValue = optionElement.textContent;

            const newValueElement = `<span style="color: #111;">${optionValue}</span>`;
            const placeholder = document.getElementById('mobile-form-placeholder-text');
            placeholder.innerHTML = newValueElement;
        }

        submit(e) {
            e.preventDefault();
            const nameInput = document.getElementById('mobile-menu__name');
            const cityInput = document.getElementById('mobile-menu__city-id');

            const $nameError = $('#mobile-menu__name-error');
            const $cityError = $('#mobile-menu__city-error');

            if(!nameInput.value) {
                $nameError.show();
                return;
            }

            $nameError.hide();

            if(!cityInput.value) {
                $cityError.show();
                return;
            }

            $cityError.hide();

            const $form = $('#mobile-menu__form');
            const url = $form.attr('action');
            const data = $form.serialize();

            $.ajax({
                cache: false,
                type: 'post',
                data: data,
                url: url,
                success: this.handleSuccess
            });
        }

        handleSuccess() {
            document.getElementById('mobile-menu__form').reset();
            const newValueElement = `<span style="color: #111;">Mjesto</span>`;
            const placeholder = document.getElementById('mobile-form-placeholder-text');
            placeholder.innerHTML = newValueElement;

            const formContent = document.getElementById('form-content');
            formContent.classList.add('none');

            const successMessage = document.getElementById('mobile-menu__success-message');
            successMessage.classList.remove('none');
        }

        handleError() {}
    });
})();