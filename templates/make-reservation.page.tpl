{{template "base" .}}

{{define "content"}}
<div class="container">

    <div class="row">
        <div class="col">
            
            <h1>Make Reservation</h1>
            <p><strong>Reservation Details</strong></p>

            {{$res := index .Data "reservation"}}

            <form action="" method="post" class="" novalidate>
            <input type="hidden" name="csrf_token" value="{{.CSRFToken}}">

            <div class="form-group" mt-5>
                <label for="first_name">First name:</label>
                {{with .Form.Errors.Get "first_name"}}
                    <label class="text-danger">{{.}}</label>
                {{end}}
                <input type="text" name="first_name" id="first_name" class="form-control {{with .Form.Errors.Get "first_name"}} is-invalid {{end}}" required autocomplete="off" value="{{$res.FirstName}}">
            </div>

            <div class="form-group">
                <label for="last_name">Last name:</label>
                {{with .Form.Errors.Get "last_name"}}
                    <label class="text-danger">{{.}}</label>
                {{end}}
                <input type="text" name="last_name" id="last_name" class="form-control {{with .Form.Errors.Get "last_name"}} is-invalid {{end}}" value="{{$res.LastName}}" required autocomplete="off">
            </div>

            <div class="form-group">
                <label for="start_date">Stard Date</label>
                <input type="text" name="start_date" id="start_date" class="form-control">
            </div>

            <div class="form-group">
                <label for="end_date">Stard Date</label>
                <input type="text" name="end_date" id="end_date" class="form-control">
            </div>

            <input type="hidden" name="room_id" value="1">

            <div class="form-group">
                <label for="email">Email:</label>
                {{with .Form.Errors.Get "email"}}
                    <label class="text-danger">{{.}}</label>
                {{end}}
                <input type="email" name="email" id="email" class="form-control {{with .Form.Errors.Get "email"}} is-invalid {{end}}" value="{{$res.Email}}" required autocomplete="off">
            </div>

            <div class="form-group">
                <label for="phone">Phone number:</label>
                {{with .Form.Errors.Get "phone"}}
                    <label class="text-danger">{{.}}</label>
                {{end}}
                <input type="text" name="phone" id="phone" class="form-control {{with .Form.Errors.Get "phone"}} is-invalid {{end}}" value="{{$res.Phone}}" required autocomplete="off">
            </div>

            <hr>

            <input type="submit" class="btn btn-primary" value="Make Reservation">
            

            </form>

        </div>
    </div>


</div>
{{end}}