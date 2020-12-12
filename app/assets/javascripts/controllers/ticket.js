(() => {
    const application = Stimulus.Application.start();

    application.register("ticket", class extends Stimulus.Controller {
        static targets = ['body', 'organizationId', 'barcode', 'iban'];

        connect() {}

        toggleCard() {
            const body = this.bodyTarget;
            const organizationId = this.organizationIdTarget.value;
            const barcode = this.barcodeTarget.value;
            body.classList.toggle('ticket__body--hidden');

            const actionIcon = document.getElementById(`ticket__toggle-action--${organizationId}`);
            actionIcon.classList.toggle('action-reverse');

            var canvas = document.getElementById(`barcode_organization_${organizationId}`);
            PDF417.draw(barcode, canvas);
        }

        copy() {
            this.ibanTarget.select();
            document.execCommand("copy");
        }

        // const code =
        //     `HRVHUB30
        //     HRK
        //     000000000012355
        //     PETAR KORETIĆ
        //     PREVOJ DD
        //     10000 Zagreb
        //     QAAP J.D.O.O
        //     PREVOJ DD
        //     10000 ZAGREB
        //     HR5041240000000000
        //     HR01
        //     7336-68949637625-00001
        //     COST
        //     Uplata za 1. mjesec`

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