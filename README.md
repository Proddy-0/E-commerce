# E-commerce (Protótipo)

Protótipo estrutural (wireframe) de uma loja virtual, front-end estático em HTML/CSS/JS puro. Projeto acadêmico.

## Estrutura de pastas

```
.
├── css/            estilos (style.css, wireframe.css)
├── js/             scripts (script.js)
├── img/            imagens (banner, produtos)
├── docs/           documentação de apoio (regras/PDF do projeto)
├── index.html      home (wireframe)
├── wireframe.html   estrutura alternativa de wireframe
├── produtos.html
├── carrinho.html
├── login.html
├── cadastro.html
├── sobre.html
├── missao.html
├── contato.html
└── desenvolvedores.html
```

> `docs/` tem o enunciado oficial do trabalho (regras de páginas, HTML/CSS e organização de pastas). A estrutura deste projeto já segue o que está definido lá.

## Como rodar

Não tem build nem dependência. Só precisa de um servidor estático (abrir `index.html` direto no navegador funciona, mas alguns navegadores bloqueiam requisições locais — nesse caso, suba um servidor simples):

```bash
python -m http.server 8000
```

Depois abre `http://localhost:8000/index.html`.

## Status

Fase de protótipo/wireframe — estrutura das telas definida, conteúdo final e estilo visual ainda em construção.

## Páginas

| Página | Arquivo |
|---|---|
| Home | `index.html` |
| Produtos | `produtos.html` |
| Carrinho | `carrinho.html` |
| Login | `login.html` |
| Cadastro | `cadastro.html` |
| Sobre | `sobre.html` |
| Missão e Valores | `missao.html` |
| Contato | `contato.html` |
| Desenvolvedores | `desenvolvedores.html` |
