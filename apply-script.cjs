// apply-script.js — Aplica o apenas_script.js no index.html com UTF-8 correto
const fs = require('fs');

const html = fs.readFileSync('index.html', 'utf8');
const script = fs.readFileSync('apenas_script.js', 'utf8');

const startIdx = html.indexOf('<script>');
const endIdx = html.lastIndexOf('</script>') + 9;

if (startIdx === -1 || endIdx === 8) {
  console.error('ERRO: tag <script> não encontrada no index.html');
  process.exit(1);
}

const newHtml = html.substring(0, startIdx) + script + html.substring(endIdx);
fs.writeFileSync('index.html', newHtml, 'utf8');
console.log('✅ Pronto! Script aplicado com UTF-8 correto. Chars: ' + newHtml.length);
