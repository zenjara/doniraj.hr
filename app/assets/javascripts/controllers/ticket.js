(() => {
    const application = Stimulus.Application.start();

    application.register("ticket", class extends Stimulus.Controller {
        static targets = ['body'];

        connect() {
            console.log("Hello, this is a ticket!", this.element)
        }

        toggleCard() {
            const body = this.bodyTarget;
            body.classList.toggle('ticket__body--hidden');

            var code = "HRVHUB30\nHRK\n" +
                "000000000012355\n" +
                "PETAR KORETIĆ\n" +
                "PREVOJ DD\n" +
                "10000 Zagreb\n" +
                "pkoretic J.D.O.O\n" +
                "PREVOJ DD\n" +
                "10000 ZAGREB\n" +
                "HR5041240000000000\n" +
                "HR01\n" +
                "7336-68949637625-00001\n" +
                "COST\n" +
                "Uplata za 1. mjesec\n";

            var canvas = document.getElementById("barcode");
            PDF417.draw(code, canvas)
        }

        // static targets = ["form"]

        // submitSuccess(event) {
        //
        //     const [xhr] = event.detail
        //     console.log(event)
        //     console.log(xhr)
        //
        //     this.formTarget.innerHTML = event.detail[2].response;
        // }
        //
        // showError(event) {
        //     const [xhr] = event.detail
        //     this.formTarget.innerHTML = xhr.response;
        // }
    })
})();