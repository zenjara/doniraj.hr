(() => {
    const application = Stimulus.Application.start();

    application.register("ticket", class extends Stimulus.Controller {
        static get targets() {
            return ['body', 'organizationId', 'barcode', 'iban'];
        }

        connect() {
        }

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
            const iban = this.ibanTarget.innerText;
            navigator.clipboard.writeText(iban).then(() => alert('IBAN kopiran u međuspremnik.'));
        }
    })
})();