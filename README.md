# 🛠️ Neovim x Exercism (Lua)

Este repositório contém as soluções dos desafios de Lua do Exercism, mas o objetivo principal é **refinar meu fluxo de trabalho no Neovim** e testar minha configuração de IDE.

## 🚀 Workflow no Neovim

Para este projeto, estou validando as seguintes funcionalidades do meu `init.lua`:

* **LSP & Diagnósticos:** Configuração do `lua_ls` para prover autocompletar e linting preciso.
* **Test-Driven Development (TDD):** Execução de testes diretamente do editor (via terminal integrado ou plugins de teste).
* **Navegação:** Uso de `Telescope` ou `Oil.nvim` para gerenciar a estrutura de pastas do Exercism.

## 📂 Estrutura de Pastas

Cada diretório representa um desafio onde testo a eficiência dos meus snippets e comandos:

```text
.
├── exercicio/
│   ├── solution.lua  # Onde o código nasce
│   └── spec.lua      # Onde o Neovim me avisa se quebrei algo
└── README.md
```
