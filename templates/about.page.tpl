{{template "base" .}}

{{define "content"}}
    <div class="container">
        <div class="row">
            <div class="col">
                <h1>This is a About Page</h1>
                <p>This is a paragraph of text</p>

                <p>This came from the template: {{index .StringMap "test"}}</p>

                <p>
                    {{if ne (index .StringMap "remote_ip") ""}}
                        Your Remote IP address is {{index .StringMap "remote_ip"}}
                    {{else}}
                        I don't know your ip addres yet. Visit the <a href="/">Home page</a> so i can set it.
                    {{end}}
                </p>
            </div>
        </div>
    </div>
{{end}}