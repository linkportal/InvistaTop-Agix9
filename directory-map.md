# 📁 Mapa de Diretórios - AGIX Invest

## 🌟 Estrutura Completa do Projeto

\`\`\`
C:\inetpub\wwwroot\Reservas3\Invest2\
│
├── 📄 index.html                           # Página principal do sistema
├── 📖 README.md                            # Documentação completa
├── 🗺️  directory-map.md                    # Este arquivo de mapeamento
│
├── 📁 assets/                              # Recursos estáticos
│   ├── 🖼️  images/                          # Imagens dos projetos
│   │   ├── solar-tech.jpg                 # Imagem Solar Tech
│   │   ├── electronics-factory.jpg        # Imagem Fábrica Eletrônicos
│   │   ├── biodiesel-plant.jpg            # Imagem Usina Biodiesel
│   │   └── logo-agix.png                  # Logo principal
│   ├── 🎨 icons/                           # Ícones do sistema
│   │   ├── favicon.ico                    # Favicon principal
│   │   ├── apple-touch-icon.png           # Ícone Apple
│   │   └── android-chrome-192x192.png     # Ícone Android
│   └── 📄 manifest.json                    # Manifest PWA
│
├── 🎨 css/                                 # Folhas de estilo
│   ├── styles.css                         # Estilos customizados
│   ├── components.css                     # Estilos de componentes
│   └── responsive.css                     # Media queries
│
├── ⚡ js/                                  # Scripts JavaScript
│   ├── app.js                             # Aplicação React principal
│   ├── components/                        # Componentes React
│   │   ├── Dashboard.js                   # Componente Dashboard
│   │   ├── Portfolio.js                   # Componente Portfólio
│   │   ├── Projects.js                    # Componente Projetos
│   │   └── Financial.js                   # Componente Financeiro
│   ├── utils/                             # Utilitários
│   │   ├── api.js                         # Funções de API
│   │   ├── helpers.js                     # Funções auxiliares
│   │   └── constants.js                   # Constantes
│   └── services/                          # Serviços
│       ├── dataService.js                 # Serviço de dados
│       └── downloadService.js             # Serviço de downloads
│
├── 💾 data/                                # Dados mockados
│   ├── projetos.json                      # Base de projetos industriais
│   ├── usuarios.json                      # Base de usuários
│   ├── investimentos.json                 # Dados de investimentos
│   ├── transacoes.json                    # Histórico de transações
│   ├── tabelas_usuarios.csv               # Tabela usuários (Excel)
│   ├── tabelas_projetos.csv               # Tabela projetos (Excel)
│   ├── tabelas_investimentos.csv          # Tabela investimentos (Excel)
│   └── tabelas_transacoes.csv             # Tabela transações (Excel)
│
├── 🖥️  server/                             # Servidor Node.js (opcional)
│   ├── app.js                             # Servidor Express principal
│   ├── package.json                       # Dependências NPM
│   ├── routes/                            # Rotas da API
│   │   ├── auth.js                        # Rotas de autenticação
│   │   ├── projects.js                    # Rotas de projetos
│   │   ├── users.js                       # Rotas de usuários
│   │   └── transactions.js                # Rotas de transações
│   ├── middleware/                        # Middlewares
│   │   ├── auth.js                        # Middleware de autenticação
│   │   └── validation.js                  # Middleware de validação
│   └── utils/                             # Utilitários do servidor
│       ├── database.js                    # Conexão com banco
│       └── helpers.js                     # Funções auxiliares
│
├── ⚙️  config/                             # Configurações
│   ├── database.sql                       # Script PostgreSQL
│   ├── iis-config.xml                     # Configuração IIS
│   ├── nginx.conf                         # Configuração Nginx (alternativa)
│   └── env.example                        # Variáveis de ambiente
│
├── 📚 docs/                               # Documentação adicional
│   ├── api-docs.md                        # Documentação da API
│   ├── deployment.md                      # Guia de implantação
│   ├── user-manual.md                     # Manual do usuário
│   └── developer-guide.md                 # Guia do desenvolvedor
│
├── 🧪 tests/                              # Testes (futuro)
│   ├── unit/                              # Testes unitários
│   ├── integration/                       # Testes de integração
│   └── e2e/                               # Testes end-to-end
│
└── 📦 dist/                               # Build de produção
    ├── index.html                         # HTML otimizado
    ├── bundle.js                          # JavaScript bundled
    └── styles.css                         # CSS otimizado

## 🔧 Arquivos de Configuração

### **IIS (Internet Information Services)**
- `web.config` - Configuração principal do IIS
- `applicationhost.config` - Configuração do application pool

### **Node.js (Opcional)**
- `package.json` - Dependências e scripts
- `server.js` - Servidor Express alternativo

### **Banco de Dados**
- `database.sql` - Estrutura PostgreSQL
- `migrations/` - Scripts de migração

## 📊 Dados e Tabelas

### **Formato JSON (Atual)**
- Desenvolvimento e prototipagem
- Dados mockados realistas
- Estrutura flexível

### **Formato CSV/Excel**
- Compatibilidade com ferramentas existentes
- Importação/exportação fácil
- Análises externas

### **PostgreSQL (Futuro)**
- Banco de produção
- Integridade referencial
- Performance otimizada

## 🌐 URLs e Endpoints

### **Frontend Routes**
- `/` - Dashboard principal
- `/#portfolio` - Página do portfólio
- `/#projetos` - Lista de projetos
- `/#financeiro` - Área financeira
- `/#conta` - Minha conta

### **API Endpoints (Futuro)**
- `GET /api/users/:id` - Dados do usuário
- `GET /api/projects` - Lista de projetos
- `POST /api/investments` - Criar investimento
- `GET /api/transactions/:userId` - Transações

## 🔐 Segurança e Permissões

### **Diretórios Protegidos**
- `/config/` - Apenas administradores
- `/server/` - Apenas desenvolvedores
- `/data/` - Acesso controlado

### **Arquivos Sensíveis**
- `database.sql` - Scripts de banco
- `env.example` - Variáveis de ambiente
- `auth.js` - Lógica de autenticação

## 📱 Responsividade

### **Breakpoints**
- **Mobile**: < 768px
- **Tablet**: 768px - 1024px
- **Desktop**: > 1024px

### **Componentes Responsivos**
- Grid adaptável
- Cards flexíveis
- Navegação móvel
- Gráficos redimensionáveis

## 🚀 Deploy e Produção

### **Ambiente Local**
\`\`\`
http://localhost:8071/invest2/
\`\`\`

### **Ambiente de Produção**
\`\`\`
http://186.206.85.26:8071/invest2/
\`\`\`

### **Comandos de Deploy**
\`\`\`bash
# Copiar arquivos
xcopy source dest /E /I /Y

# Reiniciar IIS
iisreset

# Verificar status
netstat -an | findstr :8071
\`\`\`

## 🔄 Versionamento

### **Estrutura de Versões**
- `v1.0.0` - Versão inicial (atual)
- `v1.1.0` - Próximas funcionalidades
- `v2.0.0` - Integrações reais

### **Backups**
- `/backups/v1.0.0/` - Backup versão atual
- `/backups/data/` - Backup dos dados
- `/backups/config/` - Backup das configurações

---

**Gerado em**: 28/06/2025 06:06:28  
**Sistema**: AGIX Invest v1.0.0  
**Ambiente**: Produção