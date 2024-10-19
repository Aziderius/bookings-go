{{template "base" .}}

{{define "content"}}
<div class="container">

    <div class="row">
        <div class="col">
            <img src="/static/images/luxury-suite.png" class="img-fluid img-thumbnail mx-auto d-block room-image" alt="Basic Room">
        </div>
    </div>

    <div class="row">
        <div class="col">
            <h1 class="text-center mt-4">Luxury Rooms</h1>
            <p>Your home away from home, set on the majestic waters of the Pacific Ocean, this will be a vacation to remember.</p>
        </div>
    </div>

    <div class="row">
        <div class="col text-center">
            <a id="check-availability-button" href="#!" class="btn btn-success">Check Availability</a>
        </div>
    </div>

</div>
{{end}}

{{define "js"}}
    <script>
         //notificaciones a través de un boton
        document.getElementById("check-availability-button").addEventListener("click", function(){
        let html = `
        <form id="check-availability-form" action="" method="post" novalidate class="needs-validation">
            <div class="form-row">
            <div class="col">
                <div class="row" id="reservation-dates-modal">
                <div class="col">
                    <input disabled required class="form-control" type="text" name="start" id="start" placeholder="Arrival">
                </div>
                <div class="col">
                    <input disabled required class="form-control" type="text" name="end" id="end" placeholder="Departure">
                </div>
                </div>
            </div>
            </div>
        </form>
        `
        //notify("This is my message", "success");
        //notifyModal("title", "hello world", "success", "My text for the button")

        attention.custom({msg: html, title: "Choose your dates"});
        })
    </script>
{{end}}