@WEB @Regression
Feature: Listar Proyectos, Busqueda de Proyectos

  @EN @ES  @EliminarCreacionesWeb @ToBeAutomated 
  Scenario: Buscar proyecto por nombre desde la barra de busqueda desde vista <vista> <idioma>
    Given Existe el proyecto Proyecto de Automation creado por automation
    And el cliente está logueado con el usuario de automation
    When el cliente hace click en la vista <vista>
    And el cliente introduce el codigo del proyecto Proyecto de Automation en la barra de busqueda de la pagina principal
    Then El cliente visualiza el proyecto Proyecto de Automation
    
    @ES
    Examples:
      | idioma | vista                |
      | ES     | Diseño de Lista      |


  @EN @ES  @EliminarCreacionesWeb @ToBeAutomated @Automated 
  Scenario: Buscar proyecto por nombre desde la barra de busqueda desde vista <vista> <idioma>
    Given Existe el proyecto Proyecto de Automation creado por automation
    And el cliente está logueado con el usuario de automation
    When el cliente hace click en la vista <vista>
    And el cliente introduce el codigo del proyecto Proyecto de Automation en la barra de busqueda de la pagina principal
    Then El cliente visualiza el proyecto Proyecto de Automation
    
    @ES
    Examples:
      | idioma | vista                |
      | ES     | Diseño de Lista      |