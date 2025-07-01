const { useState, useEffect } = React;
const { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, PieChart, Pie, Cell } = Recharts;

const InvestmentSystem = () => {
  const [currentPage, setCurrentPage] = useState('inicio');
  
  // Dados do usuário
  const [user] = useState({
    name: 'Renato Fernandes',
    level: 'Gold',
    saldo: 45250.80,
    totalInvestido: 125000.00,
    lucroTotal: 18750.50
  });

  // Dados dos projetos
  const [projetos] = useState([
    {
      id: 1,
      nome: 'Indústria Solar Tech',
      localizacao: 'São Paulo, SP',
      risco: 'Baixo',
      rentabilidade: '12.5% a.a.',
      tempo: '24 meses',
      captado: 750000,
      vgv: 1500000
    }
    // Adicionar mais projetos conforme necessário
  ]);

  // Menu de navegação
  const menuItems = [
    { id: 'inicio', label: 'Início', icon: '🏠' },
    { id: 'portfolio', label: 'Portfólio', icon: '💼' },
    { id: 'projetos', label: 'Projetos', icon: '📊' },
    { id: 'financeiro', label: 'Financeiro', icon: '💰' },
    { id: 'conta', label: 'Minha Conta', icon: '👤' }
  ];

  // Renderização do conteúdo principal
  const renderContent = () => {
    // Implementar renderização baseada na página atual
    return (
      <div className="space-y-6">
        <h2 className="text-2xl font-bold">Sistema AGIX Invest</h2>
        <p>Página: {currentPage}</p>
      </div>
    );
  };

  return (
    <div className="min-h-screen bg-gray-100">
      {/* Header */}
      <header className="bg-white shadow-lg">
        <div className="max-w-7xl mx-auto px-4 py-4">
          <h1 className="text-2xl font-bold text-blue-600">AGIXInvest</h1>
        </div>
      </header>

      <div className="flex">
        {/* Sidebar */}
        <aside className="w-64 bg-white shadow-lg min-h-screen">
          <nav className="mt-8">
            {menuItems.map((item) => (
              <button
                key={item.id}
                onClick={() => setCurrentPage(item.id)}
                className="w-full text-left px-6 py-3 flex items-center gap-3 hover:bg-blue-50"
              >
                <span>{item.icon}</span>
                {item.label}
              </button>
            ))}
          </nav>
        </aside>

        {/* Main Content */}
        <main className="flex-1 p-8">
          {renderContent()}
        </main>
      </div>
    </div>
  );
};

ReactDOM.render(React.createElement(InvestmentSystem), document.getElementById('root'));