{{template "base" .}}

{{define "content"}}
<div class="container">

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <h1 class="mt-5">Search for Availability</h1>

            <form action="/search-availability" method="post" novalidate class="needs-validation">
                <input type="hidden" name="csrf_token" value="{{.CSRFToken}}">
                <div id="reservation-dates" class="row">
                <div class="col">
                    <div class="form-group">
                    <input type="text" class="form-control" name="start" required placeholder="Arrival">
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                    <input type="text" class="form-control" name="end" required placeholder="Departure">
                    </div>
                </div>
                </div>

                <hr>

                <button type="submit" class="btn btn-primary">Search Availability</button>

            </form>

        </div>

    </div>

</div>
{{end}}

{{define "js"}}
    <script>
        const elem = document.getElementById('reservation-dates');
        const rangepicker = new DateRangePicker(elem, {
        format: "yyyy-mm-dd",
        });
    </script>
{{end}}