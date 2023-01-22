class HomePage < SitePrism::Page

    set_url ''
    element :nomeDePerfil, :xpath, "/html/body/div[5]/div[3]/div/div/div[2]/div/div/div/div[1]/div[1]/a/div[2]"
    element :subTitulo, :xpath, "//p[@class='identity-headline t-12 t-black--light t-normal mt1']"
    element :notificacao, :xpath, "//span[@title='Notificações']"


    def verificaSeLogou
        expect(nomeDePerfil.text).to eql "Gustavo Pequeno de Lima"
        expect(subTitulo.text).to eql "Web Developer | QA"
        expect(notificacao.text).to eql "Notificações"
end

end