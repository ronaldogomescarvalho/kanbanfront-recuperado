# Frontend Kanban recuperado

Este repositório contém os arquivos estáticos recuperados da imagem
`astraonline/kanbanfront:1.0.4`. O código-fonte do frontend não fazia parte da
imagem; portanto, os arquivos em `frontend/assets` são compilados.

## Publicação

Ao enviar a branch `main` ao GitHub, o workflow publica a imagem no GitHub
Container Registry (GHCR):

`ghcr.io/<usuario-ou-organizacao>/kanbanfront-recuperado:latest`

Na primeira publicação, deixe o pacote **público** na página *Packages* do
GitHub; assim o Portainer pode baixá-lo sem uma credencial de registry. Caso o
pacote seja privado, cadastre no Portainer uma credencial para `ghcr.io` com
um token que possua `read:packages`.

## Alteração da stack atual

Não modifique os serviços `backend`, PostgreSQL ou Redis. No serviço
`frontend`, substitua apenas a linha `image` pela imagem do GHCR e mantenha as
variáveis atuais. Há um exemplo mínimo em `stack-frontend.yml`.

Use primeiro uma stack de teste com outro domínio/roteador. Depois de validar,
atualize a stack de produção. O container gera `config.js` no início usando
`VITE_API_URL`, preservando o comportamento da imagem original.

## Segurança

Nunca faça commit de senhas, tokens ou arquivos `.env`. As credenciais devem
ficar somente nas variáveis de ambiente/segredos do Portainer.
