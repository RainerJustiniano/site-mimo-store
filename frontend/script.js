fetch("http://192.168.0.40:5000/produtos")
  .then(res => res.json())
  .then(data => {
    const container = document.getElementById("produtos");
    container.innerHTML = "";

    data.forEach(p => {
      const msg = `Olá, tenho interesse no ${p.modelo} ${p.armazenamento} ${p.cor}`;
      const imageUrl = p.imagem || 'https://via.placeholder.com/400x400?text=Imagem+Indispon%C3%ADvel';

      const card = document.createElement("div");
      card.className = "card";

      card.innerHTML = `
        <img src="${imageUrl}" alt="${p.modelo}">
        <div class="card-body">
          <h3>${p.marca} ${p.modelo}</h3>
          <p>${p.armazenamento} • ${p.cor}</p>
          <p class="tag">${p.tipo === 'semi-novo' ? 'Semi-novo' : 'Novo'}</p>
          ${p.bateria ? `<p>Bateria: ${p.bateria}%</p>` : ''}
          <span class="price">R$ ${p.preco.toFixed(2)}</span>
          <button type="button" onclick="window.open('https://wa.me/5565996480119?text=${encodeURIComponent(msg)}', '_blank')">
            Comprar
          </button>
        </div>
      `;

      container.appendChild(card);
    });
  })
  .catch(error => {
    console.error('Erro ao carregar produtos:', error);
    document.getElementById('produtos').innerHTML = '<p class="error">Não foi possível carregar os produtos. Verifique se o servidor está rodando.</p>';
  });