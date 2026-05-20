# inject-campos.ps1
# Execute este arquivo no PowerShell para adicionar campos extras ao modal de edicao
# Coloque este arquivo dentro da pasta mimo-store e execute

Set-Location $PSScriptRoot

Write-Host "Injetando campos extras no modal de edicao..." -ForegroundColor Cyan

$content = Get-Content admin\index.html -Raw

# Verifica se ja foi injetado
if ($content -match "ef-wrap") {
    Write-Host "Campos ja foram injetados anteriormente!" -ForegroundColor Yellow
    exit
}

$script = '<script>(function(){var eF={};var oF=window.fetch;window.fetch=function(u,o){if(u&&u.toString().includes("updateProduto")&&o&&o.body){try{var b=JSON.parse(o.body);if(eF.cor)b.cor=eF.cor;if(eF.armazenamento)b.armazenamento=eF.armazenamento;if(eF.tipo)b.tipo=eF.tipo;if(eF.bateria)b.bateria=eF.bateria;if(eF.preco_m&&parseFloat(eF.preco_m)>0)b.preco=parseFloat(eF.preco_m);o.body=JSON.stringify(b);}catch(e){}}return oF.apply(this,arguments);};function watch(){var m=document.getElementById("edit-prod-modal");if(!m){setTimeout(watch,500);return;}new MutationObserver(function(ms){ms.forEach(function(mut){if(mut.attributeName==="style"&&m.style.display!=="none"&&m.style.display!==""){setTimeout(inject,200);}});}).observe(m,{attributes:true});}function inject(){if(document.getElementById("ef-wrap"))document.getElementById("ef-wrap").remove();var m=document.getElementById("edit-prod-modal");if(!m)return;var ta=m.querySelector("textarea");if(!ta)return;var ref=ta.closest("div");var d=document.createElement("div");d.id="ef-wrap";d.style.cssText="margin-top:14px;padding:14px;background:#fdf2f8;border-radius:12px;border:1px solid rgba(236,72,153,.25)";d.innerHTML="<div style=\"font-size:10px;font-weight:700;color:#9d7389;letter-spacing:.06em;text-transform:uppercase;margin-bottom:10px\">Campos Adicionais</div><div style=\"display:grid;grid-template-columns:1fr 1fr;gap:8px\"><div><label style=\"font-size:11px;font-weight:600;color:#9d7389;display:block;margin-bottom:3px\">Cor</label><input id=\"ef-cor\" type=\"text\" placeholder=\"Preto, Azul...\" style=\"width:100%;padding:7px 9px;border:1.5px solid rgba(236,72,153,.3);border-radius:8px;font-size:13px\"></div><div><label style=\"font-size:11px;font-weight:600;color:#9d7389;display:block;margin-bottom:3px\">Capacidade</label><input id=\"ef-cap\" type=\"text\" placeholder=\"128GB, 256GB...\" style=\"width:100%;padding:7px 9px;border:1.5px solid rgba(236,72,153,.3);border-radius:8px;font-size:13px\"></div><div><label style=\"font-size:11px;font-weight:600;color:#9d7389;display:block;margin-bottom:3px\">Condicao</label><select id=\"ef-tipo\" style=\"width:100%;padding:7px 9px;border:1.5px solid rgba(236,72,153,.3);border-radius:8px;font-size:13px;height:36px\"><option value=\"\">-- manter atual --</option><option value=\"novo\">Novo</option><option value=\"semi-novo\">Semi-novo</option><option value=\"usado\">Usado</option></select></div><div><label style=\"font-size:11px;font-weight:600;color:#9d7389;display:block;margin-bottom:3px\">Bateria %</label><input id=\"ef-bat\" type=\"number\" placeholder=\"85\" min=\"0\" max=\"100\" style=\"width:100%;padding:7px 9px;border:1.5px solid rgba(236,72,153,.3);border-radius:8px;font-size:13px\"></div><div><label style=\"font-size:11px;font-weight:600;color:#9d7389;display:block;margin-bottom:3px\">Origem</label><select id=\"ef-orig\" style=\"width:100%;padding:7px 9px;border:1.5px solid rgba(236,72,153,.3);border-radius:8px;font-size:13px;height:36px\"><option value=\"\">-- manter atual --</option><option value=\"Nacional\">Nacional</option><option value=\"CPO\">CPO</option><option value=\"ANATEL\">ANATEL</option><option value=\"Americano\">Americano</option></select></div><div><label style=\"font-size:11px;font-weight:600;color:#9d7389;display:block;margin-bottom:3px\">Preco manual R$ (0=auto)</label><input id=\"ef-preco\" type=\"number\" placeholder=\"0\" min=\"0\" style=\"width:100%;padding:7px 9px;border:1.5px solid rgba(236,72,153,.3);border-radius:8px;font-size:13px\"></div></div>";if(ref&&ref.parentElement)ref.parentElement.insertBefore(d,ref.nextSibling);["ef-cor","ef-cap","ef-tipo","ef-bat","ef-orig","ef-preco"].forEach(function(id){var el=document.getElementById(id);if(el)el.addEventListener("input",upd);});}function upd(){eF.cor=(document.getElementById("ef-cor")||{}).value||"";eF.armazenamento=(document.getElementById("ef-cap")||{}).value||"";eF.tipo=(document.getElementById("ef-tipo")||{}).value||"";eF.bateria=(document.getElementById("ef-bat")||{}).value||"";eF.preco_m=(document.getElementById("ef-preco")||{}).value||"";}watch();})();</script>'

$content = $content -replace '<!DOCTYPE html>', "<!DOCTYPE html>`n$script"
Set-Content admin\index.html $content -Encoding UTF8

Write-Host "Campos injetados com sucesso!" -ForegroundColor Green
Write-Host "Fazendo git commit e push..." -ForegroundColor Cyan

git add admin/index.html
git commit -m "feat: campos extras no modal de edicao do produto"
git push

Write-Host ""
Write-Host "Pronto! Aguarde 1 minuto e teste no admin." -ForegroundColor Green
Write-Host "Abra o lapis de qualquer produto e vera a secao 'Campos Adicionais'" -ForegroundColor Green
