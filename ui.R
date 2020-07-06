library(shiny)
library(shinythemes)

genre_list <- c("Action", "Adventure", "Animation", "Children", 
                "Comedy", "Crime","Documentary", "Drama", "Fantasy",
                "Film.Noir", "Horror", "Musical", "Mystery","Romance",
                "Sci.Fi", "Thriller", "War", "Western")


          
    shinyUI(
      fluidPage(theme = shinytheme("superhero"),
                titlePanel("Film Öneri Sistemleri"),
            fluidRow(
    
    column(4, h3("Tercih Ettiğiniz Film Türlerini Seçin :"),
           wellPanel(
      selectInput("input_genre", "Tür 1",
                  genre_list),
      selectInput("input_genre2", "Tür 2",
                  genre_list),
      selectInput("input_genre3", "Tür 3",
                  genre_list),
      submitButton("Film Listesini Güncelle")
    )),
    
    column(4, h3("Bu Türlerden Beğendiğiniz Filmleri Seçin:"),
           wellPanel(
      # Bu kod UI bileşeninin çıktısını verir.
      uiOutput("ui"),
      uiOutput("ui2"),
      uiOutput("ui3"),
      submitButton("Tavsiye ver :)")
    )),
    
    column(4,
           h3("Aşağıdaki filmleri de beğenebilirsin!"),
           tableOutput("table")
    )
  ),
  
  fluidRow(
    column(12,
           helpText("Hazırlayanlar,", a("GITHUB/NisanurToprac", href = "https://github.com/nisanurtoprac", target="_blank")),
           helpText("Hazırlayanlar,", a("GITHUB/SerenayAkciyer", href = "https://github.com/serenayakciyer", target="_blank"))

    )
  )
))


            