
<h1 align="center">API Rest Test</h1>

<div align="center">

![GitHub repo size](https://img.shields.io/github/repo-size/mateusfcarvalho/API_test)
![GitHub language count](https://img.shields.io/github/languages/count/mateusfcarvalho/API_test)

</div>
# Execução
* Para executar o código, será necessário a instalação do karate 
> Instalação para MacOs

```sh
brew install karate 
```
Após rodar os testes, abrir a pasta target/karate-reports/res e abrir no navegador o arquivo karate-summary.html
# Execução
> Para executar é necessário rodar a aplicação https://github.com/S204-Inatel-2022-2/python-academic-subscription 
![](header.png)
## Melhorias Demo 8

* Implementar um mock service funcional baseado na [Video-aula](https://www.youtube.com/watch?v=05ze15glNpI "The best search engine for privacy").
* 🧐 Tentei implementar para essa demo, porem a aplicação apresentou problemas na porta 5000
* Estou trabalhando para corrigir o problema

Problema baseado: 
>>Steps to start the mock server
>
> Build mock server - __docker build -t karate-mock .__
> 
> Run the karate-mock image in container - __docker run -e PORT=5000 -p 5000:5000/tcp karate-mock__
