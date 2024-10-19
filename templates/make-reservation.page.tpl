{{template "base" .}}

{{define "content"}}
<div class="container">

    <div class="row">
        <div class="col">
            
            <h1>Make Reservation</h1>

            <form action="" method="post" class="needs-validation" novalidate>

            <div class="form-group" mt-5>
                <label for="first_name">First name:</label>
                <input type="text" name="first_name" id="first_name" class="form-control" required autocomplete="off">
            </div>

            <div class="form-group">
                <label for="last_name">Last name:</label>
                <input type="text" name="last_name" id="last_name" class="form-control" required autocomplete="off">
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" class="form-control" required autocomplete="off">
            </div>

            <div class="form-group">
                <label for="phone">Phone number:</label>
                <input type="text" name="phone" id="phone" class="form-control" required autocomplete="off">
            </div>

            <hr>

            <input type="submit" class="btn btn-primary" value="Make Reservation">
            

            </form>

        </div>
    </div>


</div>
{{end}}