#!/usr/bin/env bash
# Copia os textos do repositório privado (acr-curso-2027) para este repositório público.
# Uso: ./sincronizar.sh /caminho/para/acr-curso-2027
set -euo pipefail
ORIGEM="${1:?informe o caminho do repositório privado acr-curso-2027}"
cp "$ORIGEM"/docs/*.md docs/
cp "$ORIGEM"/site/*.qmd "$ORIGEM"/site/_quarto.yml "$ORIGEM"/site/styles.scss site/
echo "Sincronizado. Confira com 'git diff' antes de dar commit."
