Dado("que acesso à página principal") do
    #utilizando o metodo do capybara
    visit "http://pixel-web:3000/login"
    page.current_window.resize_to(1440, 900)
end
  
Quando("eu submeto minhas credenciais {string} e {string}") do |email, password|
    # O hashtag é utilizado para buscar elemento pelo ID,seletor css 
    find("#emailId").set email
    find("input[name=password").set password
    click_button "Entrar"
    sleep 5
end
  
Então("devo ser autenticado") do
    logged_user = find(".user .info span").text
    #puts logged_user
    expect(logged_user).to eql "Papito"
end

Quando("eu submeto minhas credenciais com senha inválida") do
    find("#emailId").set "papito@ninjapixel.com"
    find("input[name=password").set "invalid_password"
    click_button "Entrar"
    #sleep 5

end
  
Então("devo ver uma mensagem de alerta {string}") do |string|
    
    alert_message = find(".card-body .alert span").text
    expect(alert_message).to eql "Usuário e/ou senha inválidos"
end

