{{template "base" .}}

{{define "content"}}
    {{$res := index .Data "reservation"}}
    <div class="container">
        <div class="row">
            <div class="col">
                <h1 class="mt-5">Reservation Summary</h1>

                <hr>

                <table class="table table-striped">
                    <thread></thread>
                    <tbody>
                        <tr>
                            <td>Name:</td>
                            <td>{{$res.FirstName}} {{$res.LastName}}</td>
                        </tr>
                        <tr>
                            <td>Arrival:</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Departure:</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td>{{$res.Email}}</td>
                        </tr>
                        <tr>
                            <td>Phone:</td>
                            <td>{{$res.Phone}}</td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
{{end}}