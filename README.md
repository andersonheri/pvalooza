# pvalooza

Site do curso **Festival de Métodos Pvalooza · Edição 1: Análise de Conteúdo Automatizada em R** (online, 4 a 8 de janeiro de 2027), com o pacote [acR](https://ahenriquecp.com/acR/).

Este repositório contém **só o site de apoio** (programa, tutoriais de preparação e FAQ). Slides, scripts e dados ficam no repositório privado do curso, aberto a quem for sorteado(a).

- Site: https://ahenriquecp.com/pvalooza
- Docente: Anderson Henrique (CEM/USP)

## Manutenção

Os textos são editados no repositório privado e copiados para cá com `./sincronizar.sh`. A publicação é automática (GitHub Actions) a cada push na `main`.

```bash
./sincronizar.sh ../acr-curso-2027
git add -A && git commit -m "Atualiza site" && git push
```
