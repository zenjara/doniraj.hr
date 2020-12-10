(() => {
    const application = Stimulus.Application.start();

    application.register("search", class extends Stimulus.Controller {
        static targets = ["results", "form", "input", "select"]

        connect(){
            let $citySelect = $("#citySelect")
            $citySelect.on('select2:select', function () {
                let event = new Event('change')
                this.dispatchEvent(event);
            });

            $citySelect.on("select2:unselecting", function(e) {
                let event = new Event('change')
                this.dispatchEvent(event);
            });
        }

        search() {
            clearTimeout(this.timeout)
            this.timeout = setTimeout(() => {
                // if (this.inputTarget.value.length >= 2) {
                    Rails.fire(this.formTarget, 'submit')
                // }
            }, 200)
        }

        handleResults() {
            const [data, status, xhr] = event.detail
            if (data.html) {
                document.getElementById('organizationsList').innerHTML = data.html;
            }
        }
    })
})();