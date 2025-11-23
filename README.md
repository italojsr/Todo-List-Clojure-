# Todo App - Clojure/ClojureScript

## 📋 Informações do Projeto

**Aluno:** Ítalo José Silva Reis

**Tutorial Original:** [Tutorial Clojure/ClojureScript - Construindo uma Aplicação Persistente e Reativa](https://profsergiocosta.notion.site/Tutorial-Clojure-ClojureScript-Construindo-uma-Aplica-o-Persistente-e-Reativa-2a5cce975093807aa9f0f0cb0cf69645)

## 📝 Descrição

Este projeto é uma aplicação completa de lista de tarefas (Todo App) desenvolvida com **Clojure** no backend e **ClojureScript** no frontend. A aplicação demonstra conceitos de programação funcional, desenvolvimento web reativo e integração full-stack.

### Tecnologias Utilizadas

**Backend:**
- **Clojure** - Linguagem de programação funcional
- **Ring** - Biblioteca para criar servidores web HTTP
- **Reitit** - Roteamento de APIs REST
- **next.jdbc** - Conexão e manipulação de banco de dados
- **SQLite** - Banco de dados relacional leve

**Frontend:**
- **ClojureScript** - Compilador de Clojure para JavaScript
- **Reagent** - Interface reativa baseada em React
- **Shadow-CLJS** - Ferramenta de build para ClojureScript
- **React** - Biblioteca para construção de interfaces

### Funcionalidades

- ✅ Criar novas tarefas
- ✅ Listar todas as tarefas
- ✅ Marcar tarefas como concluídas
- ✅ Persistência de dados em SQLite
- ✅ Interface reativa com atualizações em tempo real
- ✅ API REST completa com suporte a CORS

## 🚀 Como Rodar o Projeto

### Pré-requisitos

Certifique-se de ter instalado em seu sistema:

1. **Java JDK 11 ou superior**
   ```bash
   java -version
   ```

2. **Clojure CLI Tools**
   - Linux/Mac: Siga as instruções em [clojure.org/guides/install_clojure](https://clojure.org/guides/install_clojure)
   - Windows: Use [Scoop](https://scoop.sh/) ou baixe do site oficial

3. **Node.js 18 ou superior**
   ```bash
   node --version
   ```
   - Se necessário, instale ou atualize com [nvm](https://github.com/nvm-sh/nvm):
   ```bash
   nvm install 18
   nvm use 18
   ```

4. **npm** (geralmente vem com Node.js)
   ```bash
   npm --version
   ```

### Instalação

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/italojsr/Todo-List-Clojure-.git
   cd Todo-List-Clojure-
   ```

2. **Instale as dependências do frontend:**
   ```bash
   npm install
   ```

### Executando a Aplicação

A aplicação possui dois servidores que devem rodar simultaneamente:

#### Terminal 1: Backend (API REST)

Execute o servidor backend Clojure na porta 3000:

```bash
clj -M:run
```

Você verá a mensagem:
```
Servidor iniciado na porta 3000
```

#### Terminal 2: Frontend (Shadow-CLJS)

Execute o servidor de desenvolvimento frontend na porta 8000:

```bash
npx shadow-cljs watch app
```

Aguarde a mensagem:
```
[:app] Build completed.
shadow-cljs - HTTP server available at http://localhost:8000
```

### Acessando a Aplicação

Após iniciar ambos os servidores, abra seu navegador e acesse:

**Frontend:** [http://localhost:8000](http://localhost:8000)

**API Backend:** [http://localhost:3000/api/todos](http://localhost:3000/api/todos)

## 🔧 Comandos Úteis

### Backend

```bash
# Iniciar o servidor backend
clj -M:run

# Parar o servidor
Ctrl+C
```

### Frontend

```bash
# Iniciar o servidor de desenvolvimento
npx shadow-cljs watch app

# Build de produção
npx shadow-cljs release app

# Parar o servidor
Ctrl+C
```

### Banco de Dados

```bash
# Remover o banco de dados (reiniciar do zero)
rm prod.db
```

## 📁 Estrutura do Projeto

```
todo-app/
├── deps.edn                 # Dependências Clojure
├── package.json             # Dependências Node.js
├── shadow-cljs.edn          # Configuração Shadow-CLJS
├── prod.db                  # Banco de dados SQLite (gerado)
├── resources/
│   └── public/
│       ├── index.html       # Página HTML principal
│       └── js/              # JavaScript compilado (gerado)
└── src/
    └── todo/
        ├── backend/
        │   ├── core.clj     # Servidor e rotas
        │   ├── handler.clj  # Handlers da API
        │   └── db.clj       # Funções de banco de dados
        └── frontend/
            └── core.cljs    # Interface do usuário
```

## 🛠️ Solução de Problemas

### Erro: "Node.js version too old"
Atualize para Node.js 18 ou superior usando nvm.

### Erro: "CORS policy"
Certifique-se de que o servidor backend está rodando na porta 3000.

### Erro: "Port already in use"
Verifique se não há outro processo usando as portas 3000 ou 8000:
```bash
# Linux/Mac
lsof -i :3000
lsof -i :8000

# Windows
netstat -ano | findstr :3000
netstat -ano | findstr :8000
```

### Banco de dados corrompido
Remova o arquivo `prod.db` e reinicie o backend:
```bash
rm prod.db
clj -M:run
```

## 📚 Recursos Adicionais

- [Documentação Clojure](https://clojure.org/)
- [Documentação ClojureScript](https://clojurescript.org/)
- [Shadow-CLJS User Guide](https://shadow-cljs.github.io/docs/UsersGuide.html)
- [Reagent Documentation](https://reagent-project.github.io/)

## 📄 Licença

Este projeto foi desenvolvido para fins educacionais.