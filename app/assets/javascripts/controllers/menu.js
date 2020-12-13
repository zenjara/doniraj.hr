(() => {
    const application = Stimulus.Application.start();

    application.register("menu", class extends Stimulus.Controller {
        connect() {}

        toggleMenu() {
            const mobileMenu = document.getElementById('mobile-menu');
            mobileMenu.classList.toggle('mobile-menu--hidden');
        }

    });
})();