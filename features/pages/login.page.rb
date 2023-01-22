class LoginPage < SitePrism::Page

    set_url ''
    element :emailfield, :id, "session_key"
    element :passwordfield, :id, "session_password"
    element :loginbutton, :xpath, "//button[@class='sign-in-form__submit-button']"
    

    def userLogin(email, password)
        emailfield.set (email)
        passwordfield.set (password)
        loginbutton.click

    end
end