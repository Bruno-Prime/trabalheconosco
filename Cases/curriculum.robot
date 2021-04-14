*** Settings ***
Library  SeleniumLibrary
Resource  ${EXECDIR}/Elements/trabalhe_conosco.robot
Suite Setup  Open Browser  about:blank  chrome
# Suite Teardown  Close Browser

*** Variables ***
${url}=  https://www.primecontrol.com.br/trabalhe-conosco/


*** Test Cases ***
Test
    Go To  ${url}
    Click Element  id:hs-eu-confirmation-button
    Click Element  ${trabalheConosco.btnCadastraCurriculo}
    Switch Window	NEW
    Input Text  ${trabalheConosco.name}  Teste
    Input Text  ${trabalheConosco.cargo}  QA
    Input Text  ${trabalheConosco.salario}  100000
    Input Text  ${trabalheConosco.email}  teste@mailinator.com
    Input Text  ${trabalheConosco.telefone}  4199999999
    Select From List By Value  ${trabalheConosco.cmbPais}  BR
    Input Text  ${trabalheConosco.estado}  PR
    Input Text  ${trabalheConosco.cidade}  Curitiba
    Input Text  ${trabalheConosco.bairro}  Localiza aí BB
    Input Text  ${trabalheConosco.endereco}  Rua da QA
    Input Text  ${trabalheConosco.cep}  99999-999
    Input Text  ${trabalheConosco.resumo}  Currículo enviado com ROBOT FRAMEWORK
    Choose File	 ${trabalheConosco.curriculo}  ${EXECDIR}/miojo.doc
    Wait Until Page Contains  miojo.doc  30
    Scroll Element Into View  ${trabalheConosco.btnFinalizar}
    Click Element  ${trabalheConosco.btnFinalizar}
    Wait Until Page Contains  com sucesso  30
    
    

*** Keywords ***