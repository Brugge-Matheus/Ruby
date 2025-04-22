class HomeController < ApplicationController
  def index
    # @message = "Mensagem de boas vindas"

    # render html: "<h2>Olá, mundo #{@message}</h2>".html_safe

    @author = "Matheus"
    @posts = [
      { title: "Rails", body: "Aprendendo Rails" },
      { title: "Laravel", body: "Aprendendo Laravel" },
      { title: "Django", body: "Aprendendo Django" },
    ]
  end
end
