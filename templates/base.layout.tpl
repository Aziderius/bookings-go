{{define "base"}}
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>My nice page</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.3.4/dist/css/datepicker-bs5.min.css">
    <link rel="stylesheet" type="text/css" href="https://unpkg.com/notie/dist/notie.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/styles.css">
</head>
<body>

    <nav class="navbar navbar-expand-lg bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Navbar</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/about">About</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Rooms
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="/basic-rooms">Basic Rooms</a></li>
                  <li><a class="dropdown-item" href="/luxury-suites">Luxury Suites</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-disabled="true" href="/search-availability">Book Now</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-disabled="true" href="/contact">Contact</a>
              </li>
            </ul>
          </div>
        </div>
    </nav>

        {{block "content" .}}

        {{end}}


     <div class="row my-footer">
        <div class="col">
            Left
        </div>
        <div class="col">
            Middle
        </div>
        <div class="col">
            Right
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/vanillajs-datepicker@1.3.4/dist/js/datepicker-full.min.js"></script>
    <script src="https://unpkg.com/notie"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    {{block "js" .}}
        
    {{end}}

    <script>

    let attention = Prompt();

    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (() => {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
            if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
            }

            form.classList.add('was-validated')
        }, false)
        })
    })()

    function notify(msg, msgType) {
        notie.alert({
        type: msgType,
        text: msg,
        })
    }

    function notifyModal(title, text, icon, confirmButtonText) {
        Swal.fire({
            title: title,
            text: text,
            icon: icon,
            confirmButtonText: confirmButtonText
        })
    }

    function Prompt() {
        let toast = function(c){
        const {
            msg = "",
            icon = "success",
            postion = "top-end",
        } = c;

        const Toast = Swal.mixin({
            toast: true,
            position: "top-end",
            icon: icon,
            title: msg,
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
            }
        });
        Toast.fire({
            
        });
        }

        let success = function(c){
        const {
            msg = "",
            title = "",
            footer = "",
        } = c;

        Swal.fire({
            icon: "success",
            title: title,
            text: msg,
            footer: footer,
        });
        }

        let error = function(c){
        const {
            msg = "",
            title = "",
            footer = "",
        } = c;

        Swal.fire({
            icon: "error",
            title: title,
            text: msg,
            footer: footer,
        });
        }

            async function custom(c) {
                const {
                    msg = "",
                    title = "",
                } = c;

                const { value: result } = await Swal.fire({
                    title: title,
                    html: msg,
                    backdrop: false,
                    focusConfirm: false,
                    showCancelButton: true,
                    willOpen: () => {
                        if (c.willOpen !== undefined) {
                            c.willOpen();
                        }
                    },
                    didOpen: () => {
                        if (c.didOpen !== undefined){
                            c.didOpen();
                        }
                    },
                    preConfirm: () => {
                        return [
                            document.getElementById('start').value,
                            document.getElementById('end').value
                        ]
                    }
                })

                if (result) {
                    if (result.dismiss !== Swal.DismissReason.cancel) {
                        if (result.value !== "") {
                            if (c.callback !== undefined) {
                                c.callback(result);
                            }
                        } else {
                            c.callback(false);
                        }
                    } else {
                        c.callback(false);
                    }
                }
            }

            return {
                toast: toast,
                success: success,
                error: error,
                custom: custom,
            }
        }

    </script>

    </body>

    </html>
{{end}}