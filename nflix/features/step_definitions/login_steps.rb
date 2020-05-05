Quando("eu faço login com {string} e {string}") do |email, password|
    visit '/'
    find("#emailId").set email
    find("#passId").set password
    click_button "Entrar"
    sleep 5

end

Então("devo ser autenticado") do
    js_script = 'return window.localStorage.getItem("default_auth_token");'
    token = page.execute_script(js_script)
    puts token
    expect(token.length).to be 147
end

Então("devo ver {string} na area logada") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end