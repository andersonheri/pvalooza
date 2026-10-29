# Tutorial: instalar R, RStudio e os pacotes do curso

Faça isto **com pelo menos uma semana de antecedência**: alguns pacotes demoram para instalar.

## 1. R e RStudio

1. Instale o **R** (versão 4.1 ou superior; recomendamos a mais recente): https://cran.r-project.org
2. Instale o **RStudio Desktop**: https://posit.co/download/rstudio-desktop
3. **Windows:** instale também o **Rtools** (a versão que corresponde ao seu R) em https://cran.r-project.org/bin/windows/Rtools. **macOS:** rode `xcode-select --install` no Terminal.

## 2. Abrir o projeto

> **Importante:** guarde a pasta do projeto em um caminho **sem acentos e, de preferência, sem espaços**, por exemplo `C:/cursos/acr-curso-2027` (Windows) ou `~/cursos/acr-curso-2027` (macOS). Caminhos como `C:/Users/João/Área de Trabalho/...` quebram a leitura de arquivos em alguns computadores.

1. Baixe o repositório (veja o tutorial "Conta no GitHub", no menu Preparação).
2. Abra `acr-curso-2027.Rproj` no RStudio.
3. Confira que o diretório de trabalho é a raiz do projeto: o comando `getwd()` deve terminar em `acr-curso-2027`.

## 3. Instalar os pacotes

No console do RStudio, rode:

```r
source("scripts/00_setup.R")
```

O script confere o que já está instalado, instala o que falta (incluindo o **acR** direto do GitHub) e mostra um quadro final com `OK` ou `FALTA` para cada pacote. Se algum aparecer como `FALTA`, abra uma Issue com a mensagem de erro.

## 4. Problemas comuns

| Sintoma | Solução |
|---|---|
| `package ... is not available` | Atualize o R para a versão mais recente |
| Erro de compilação no Windows | Instale o Rtools |
| Acentos quebrados nos gráficos | Em `Tools > Global Options > Code > Saving`, defina a codificação como UTF-8 |
| `topicmodels` não instala (macOS) | Instale o `gfortran` pelo site do CRAN para macOS e tente de novo |
| Falha ao ler PDF escaneado | O OCR (`tesseract`) é opcional e usado só em um exemplo do dia 1 |
| Rede da instituição bloqueia o GitHub | Use outra rede ou venha ao dia 0, em que indicamos uma instalação alternativa do acR |

## 5. Dia 0 (opcional)

Se, mesmo assim, algo não funcionar, venha ao dia 0 (1h, ao vivo no Meet): ajudamos a resolver instalação, GitHub e chave de API.
