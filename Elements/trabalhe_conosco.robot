*** Variables ***

&{trabalheConosco}
...    btnCadastraCurriculo=//a[text()='CADASTRE SEU CURRÍCULO']
...    name=id:name
...    cargo=id:headline
...    salario=id:salary
...    email=id:email
...    telefone=id:phone-0
...    cmbPais=id:country   #value="BR"
...    estado=id:region
...    cidade=id:city
...    bairro=id:neighborhood
...    endereco=id:address
...    cep=id:zipcode
...    resumo=id:summary
...    btnAddFormacao=//button[text()='+ Adicionar formação']
...    curriculo=id:validatedCustomFile
...    btnFinalizar=//*[@type='submit']