(() => {
    const application = Stimulus.Application.start();

    application.register("search", class extends Stimulus.Controller {
        static targets = ["results", "form", "input", "select", "pagination"];

        connect() {
            let $citySelect = $("#citySelect");
            $citySelect.on('select2:select', function () {
                let event = new Event('change');
                this.dispatchEvent(event);
            });

            $citySelect.on("select2:unselecting", function (e) {
                let event = new Event('change');
                this.dispatchEvent(event);
            });
        }

        search() {
            clearTimeout(this.timeout);
            this.timeout = setTimeout(() => {
                Rails.fire(this.formTarget, 'submit');
                Pagy.init(document.getElementById('organizationsList'))
            }, 400);
        }

        handleResults() {
            const [data, status, xhr] = event.detail;
            if (data.html) {
                this.refreshList(data)
            }
        }

        paginate(e) {
            e.preventDefault();
            this.initiatePaginationRequest(e, e.currentTarget.innerHTML)
        }

        nextPage(e) {
            e.preventDefault();
            let currentPage = parseInt($('span.current').text());
            let nextPage = currentPage + 1;
            this.initiatePaginationRequest(e, nextPage)
        }

        previousPage(e) {
            e.preventDefault();
            let currentPage = parseInt($('span.current').text());
            let previousPage = currentPage - 1;

            this.initiatePaginationRequest(e, previousPage)
        }

        initiatePaginationRequest(e, page){
            $.ajax({
                cache: false,
                type: 'get',
                data: {
                    organization_name: $('#organization_name').val(),
                    city_id: $('#citySelect').val(),
                    page: page
                },
                url: e.currentTarget.dataset.url,
                success: (data) => {
                    this.refreshList(data)
                },
            });
        }

        refreshList(data){
            document.getElementById('organizationsList').innerHTML = data.html;
            Pagy.init(document.getElementById('organizationsList'))
        }
    })
})();