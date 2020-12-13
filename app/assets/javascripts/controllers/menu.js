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
        }

        selectFormCityMobile(event) {
            const optionElement = document.querySelector(`[value="${event.target.value}"]`);
            const optionValue = optionElement.textContent;

            const newValueElement = `<span style="color: #111;">${optionValue}</span>`;
            const placeholder = document.getElementById('mobile-form-placeholder-text');
            placeholder.innerHTML = newValueElement;
        }

    });
})();