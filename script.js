let entradaSelecionada;
let pratoPrincipalSelecionado;
let sobremesaSelecionada;

function selecionarOpcao(nomeGrupo, valor) {
    switch (nomeGrupo) {
        case 'entrada':
            entradaSelecionada = valor;
            break;
        case 'prato-principal':
            pratoPrincipalSelecionado = valor;
            break;
        case 'sobremesa':
            sobremesaSelecionada = valor;
            break;
    }
}

document.querySelectorAll('input[type="radio"]').forEach(input => {
    input.addEventListener('click', () => selecionarOpcao(input.name, input.value));
});

function exibirMenuFinal() {
    const menuFinal = document.getElementById('menu-final');
    if (menuFinal) {
        menuFinal.innerHTML = `
            <h2>Seu Pedido:</h2>
            <p>Entrada: ${entradaSelecionada}</p>
            <p>Prato Principal: ${pratoPrincipalSelecionado}</p>
            <p>Sobremesa: ${sobremesaSelecionada}</p>
            <div id="imagens">
                <img src="${document.querySelector('input[name="entrada"]:checked').getAttribute('data-img')}" alt="Entrada" class="imagem-prato">
                <img src="${document.querySelector('input[name="prato-principal"]:checked').getAttribute('data-img')}" alt="Prato Principal" class="imagem-prato">
                <img src="${document.querySelector('input[name="sobremesa"]:checked').getAttribute('data-img')}" alt="Sobremesa" class="imagem-prato">
            </div>
        `;
    } else {
        console.error('Elemento #menu-final não encontrado.');
    }
}


    // Aplicar estilo para as imagens
    document.querySelectorAll('.imagem-prato').forEach(imagem => {
        imagem.style.maxWidth = '300px';
        imagem.style.maxHeight = '300px';
    });

