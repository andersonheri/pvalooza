# Tutorial: criar sua chave de API (Gemini ou Groq)

No dia 4, o R vai enviar textos a um modelo de linguagem (LLM) pela internet. Para isso, cada pessoa usa **sua própria chave de API**. Você precisa de apenas **uma** das duas; recomendamos criar as duas, caso uma falhe.

> **Aviso importante.** Os planos gratuitos têm limites de requisições e **podem mudar sem aviso**. As regras e os nomes dos modelos devem ser conferidos nos sites oficiais na semana do curso. Se a sua cota acabar, use o plano B (`resultados_precomputados/`).

> **Privacidade.** Em geral, os planos gratuitos podem usar o que você envia para melhorar os modelos. **Não envie dados pessoais, sensíveis ou confidenciais** pela API gratuita. Os dados do curso são públicos.

## Opção A: Google Gemini

1. Entre em https://aistudio.google.com com uma conta Google.
2. Clique em **Get API key** e depois em **Create API key**.
3. Copie a chave (uma sequência longa de letras e números).

## Opção B: Groq

1. Entre em https://console.groq.com e crie uma conta (pode usar o login do Google).
2. No menu, abra **API Keys** e clique em **Create API Key**.
3. Dê um nome (por exemplo, `curso-acr`) e copie a chave. Ela só aparece **uma vez**.

## Guardar a chave no R (sem deixá-la em scripts)

No console do RStudio:

```r
install.packages("usethis")   # se ainda não tiver
usethis::edit_r_environ()
```

Abre-se o arquivo `.Renviron`. Acrescente **uma linha por chave**, sem aspas e sem espaços:

```
GOOGLE_API_KEY=cole_aqui_sua_chave_do_gemini
GROQ_API_KEY=cole_aqui_sua_chave_do_groq
```

Salve o arquivo, **reinicie o R** (`Session > Restart R`) e confira:

```r
nzchar(Sys.getenv("GOOGLE_API_KEY"))
nzchar(Sys.getenv("GROQ_API_KEY"))
```

Deve aparecer `TRUE` para as chaves que você criou.

## Testar

Rode:

```r
source("scripts/00_teste_api.R")
```

O script envia uma pergunta curta a cada provedor com chave configurada e informa `OK` ou o motivo do erro.

## Segurança

- **Nunca** cole a chave em scripts, Issues, Discussions, prints ou e-mails.
- O arquivo `.Renviron` fica na sua pasta pessoal, fora do projeto, e o `.gitignore` do repositório também o bloqueia.
- Se a chave vazar, apague-a no painel do provedor e crie outra.

## Problemas comuns

| Mensagem | O que fazer |
|---|---|
| `401` ou `API key not valid` | A chave foi copiada errada ou o R não foi reiniciado |
| `429` ou `quota exceeded` | Limite gratuito atingido. Espere alguns minutos, troque de provedor ou use o plano B |
| `Sem chave` no teste | O `.Renviron` não foi salvo ou o nome da variável está errado |
| Falha só na rede da instituição | Teste em outra rede (por exemplo, o celular como roteador) |
