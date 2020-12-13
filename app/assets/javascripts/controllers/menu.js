(() => {
    const application = Stimulus.Application.start();

    application.register("menu", class extends Stimulus.Controller {
        connect() {}

        toggleMenu() {
            const mobileMenu = document.getElementById('mobile-menu');
            const body = document.getElementById('body');

            mobileMenu.classList.toggle('mobile-menu--hidden');
            body.classList.toggle('lock');
        }

        toggleMobileForm() {
            const actions = document.getElementById('mobile-menu__actions-wrapper');
            const form = document.getElementById('mobile-form');

            actions.classList.toggle('none');
            form.classList.toggle('none');
        }

    });
})();