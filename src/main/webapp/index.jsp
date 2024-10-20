<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leitor de C�digo de Barras</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        #scanner {
            width: 100%; 
            height: 100%; /* O v�deo vai preencher toda a altura da modal */
            background-color: #f0f0f0; /* Cor de fundo, caso o v�deo n�o carregue */
        }

        .modal-body {
            padding: 0; /* Remover padding para o v�deo ocupar todo o espa�o */
        }

        .modal-content {
            max-width: 400px; /* Limitar o tamanho da modal */
            max-height: 300px; /* Definir uma altura m�xima para a modal */
            margin: auto;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Leitor de C�digo de Barras</h1>

        <div class="mb-3">
            <label for="codigo" class="form-label">C�digo de Barras:</label>
            <div class="input-group">
                <input type="text" id="codigo" class="form-control" placeholder="Digite ou escaneie o c�digo de barras">
                <button id="scanBtn" class="btn btn-primary" type="button">Escanear C�digo</button>
            </div>
        </div>

        <!-- Modal -->
        <div id="barcodeModal" class="modal fade" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Escaneie o C�digo de Barras</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body text-center">
                        <div id="scanner"></div> <!-- O scanner preencher� o tamanho da modal -->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" id="fecharScanner">Parar Scanner</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://unpkg.com/quagga/dist/quagga.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Elementos
        const codigoInput = document.getElementById('codigo');
        const scanBtn = document.getElementById('scanBtn');
        const barcodeModal = new bootstrap.Modal(document.getElementById('barcodeModal'), {
            keyboard: false
        });
        const scannerContainer = document.getElementById('scanner');
        const fecharScannerBtn = document.getElementById('fecharScanner');

        // Abrir o modal ao clicar no bot�o de escanear
        scanBtn.addEventListener('click', () => {
            barcodeModal.show();
            iniciarScanner();
        });

        // Fechar o modal ao clicar no bot�o de parar scanner
        fecharScannerBtn.addEventListener('click', () => {
            fecharModal();
        });

        // Fun��o para fechar o modal e parar o scanner
        function fecharModal() {
            barcodeModal.hide();
            Quagga.stop();
        }

        // Fun��o para iniciar o scanner de c�digo de barras usando QuaggaJS
        function iniciarScanner() {
            Quagga.init({
                inputStream: {
                    name: "Live",
                    type: "LiveStream",
                    target: scannerContainer, // ID do cont�iner onde ser� exibido o v�deo
                    constraints: {
                        facingMode: "environment" // Usar a c�mera traseira
                    }
                },
                decoder: {
                    readers: ["ean_reader", "ean_8_reader", "upc_reader", "code_128_reader"] // Tipos de c�digo que ser�o lidos
                }
            }, function(err) {
                if (err) {
                    console.error(err);
                    return;
                }
                Quagga.start();
            });

            Quagga.onDetected(function(result) {
                const codigo = result.codeResult.code;
                codigoInput.value = codigo; // Insere o c�digo no input
                fecharModal();  // Fecha o modal ap�s capturar o c�digo
            });
        }
    </script>
</body>
</html>
