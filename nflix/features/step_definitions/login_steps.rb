Quando("eu faço login com {string} e {string}") do |email, password|
    @login = LoginPage.new
    @login.go
    @login.email.set email
    @login.password.set password
    @login.sign_in_button.click
end

Então("devo ser autenticado") do
    js_script = 'return window.localStorage.getItem("default_auth_token");'
    token = page.execute_script(js_script)
    puts token
    expect(token.length).to be 147
end

Então("devo ver {string} na area logada") do |expect_name|
    user = find('.sidebar-wrapper .user .info span')
    expect(user.text).to eql expect_name
end

Então("não devo ser autenticado") do
    js_script = 'return window.localStorage.getItem("default_auth_token");'
    token = page.execute_script(js_script)
    expect(token).to be nil
end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
    alert = find('.alert')
    expect(alert.text).to eql expect_message
end

