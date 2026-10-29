# Análise de Conteúdo Automatizada em R: texto, R e LLMs

**Programa do curso · edição de janeiro de 2027**

---

## 1. Dados gerais

| Item | Descrição |
|---|---|
| **Evento** | Festival Pvalooza (Edição 1): Análise de Conteúdo Automatizada em R |
| **Título do curso** | Análise de Conteúdo Automatizada em R: texto, R e LLMs |
| **Coordenação e docência** | Anderson Henrique (CEM/USP) |
| **Apoio** | 2 monitores (a definir) |
| **Modalidade** | Online, síncrona, pelo Google Meet |
| **Datas** | 11 a 15 de janeiro de 2027 (segunda a sexta), a confirmar em dezembro de 2026 |
| **Carga horária** | 15 horas (5 encontros de 3h) |
| **Turnos** | Manhã: 9h às 12h · Noite: 18h30 às 21h30 (horário de Brasília). Conteúdo idêntico nos dois turnos |
| **Vagas** | 160 (80 por turno), por sorteio entre inscritos elegíveis, com cotas por região, nível acadêmico e raça, e paridade de gênero |
| **Público** | Estudantes de graduação, mestrado e doutorado, pós-doutorandos e profissionais de qualquer área, com projeto que envolva texto |
| **Pré-requisitos** | R básico/intermediário (importar dados, usar pacotes, rodar scripts), computador com R e RStudio, conta Google e conta no GitHub |
| **Software** | R (≥ 4.1), RStudio, pacote **acR**, `renv` para versões fixas dos pacotes |
| **Materiais** | Repositório privado `acr-curso-2027` (aberto ao público após o curso) e site de apoio em ahenriquecp.com/curso-acr |
| **Suporte** | Discussions e Issues do repositório no GitHub |
| **Gravação** | As aulas não serão gravadas |
| **Certificação** | Não há certificado nesta edição. Pode-se emitir declaração de participação, conforme demanda |
| **Calendário de seleção** | Inscrições até 15 de novembro de 2026 · resultado do sorteio, por e-mail, até 20 de novembro · sorteados expressam interesse até 15 de dezembro · lista final de participantes até 27 de dezembro |
| **Sessão opcional (dia 0)** | 1h de teste técnico de R, GitHub e chave de API, na semana anterior (data a definir). Não conta na carga horária |

---

## 2. Ementa

Fundamentos da análise de conteúdo e sua passagem para o paradigma *text-as-data*. Importação de textos de fontes heterogêneas (planilhas, documentos Word e PDFs) e construção de corpus. Pré-processamento e descrição quantitativa de textos em português. Métodos de contagem, contexto e dicionários. Comparação entre grupos (*keyness*), escalonamento e modelagem de tópicos (LDA). Codificação com modelos de linguagem de grande porte (LLMs): codebook, *prompts*, saída estruturada e classificação em lote. Validação com codificação humana (concordância entre codificadores, métricas de classificação), custo, viés, reprodutibilidade e boas práticas de relato. Uso integrado do pacote **acR**, que combina os módulos qualitativo (LLM) e quantitativo em um mesmo fluxo.

---

## 3. Objetivos

### Objetivo geral
Capacitar pesquisadores de ciências sociais e áreas afins a conduzir, em R, um fluxo reprodutível de análise de conteúdo automatizada em R, do texto bruto à validação dos resultados, combinando métodos quantitativos e classificação por LLM.

### Objetivos específicos
Ao final do curso, a pessoa participante será capaz de:

1. Distinguir análise de conteúdo clássica, métodos quantitativos de texto e codificação por LLM, e escolher o método adequado a uma pergunta de pesquisa.
2. Importar textos de arquivos `.xlsx`, `.docx` e `.pdf` e de fontes abertas (como discursos parlamentares) e organizá-los em um corpus.
3. Pré-processar textos em português e produzir análises descritivas (frequências, TF-IDF, KWIC, colocações, legibilidade, diversidade lexical).
4. Aplicar dicionários, *keyness*, escalonamento e LDA, e interpretar seus resultados e limites.
5. Construir um codebook e usar um LLM, via API, para classificar textos de forma estruturada, estimando custos e riscos.
6. Validar classificações automáticas contra codificação humana com amostragem, kappa, alfa de Krippendorff, AC1 de Gwet, precisão, revocação e F1.
7. Documentar o fluxo de modo reprodutível (projeto R, `renv`, scripts numerados, registro de versões e modelos) e relatar o método com transparência.

---

## 4. Metodologia

- **Aulas expositivas dialogadas** curtas, seguidas de prática guiada, no formato *live coding* com os scripts do repositório.
- **Prática em R** em cada bloco, com scripts numerados e dados fornecidos. Para quem tiver problemas técnicos, há resultados pré-computados em cada etapa.
- **LLM com plano B:** cada participante cria sua chave gratuita (Gemini ou Groq). Quem não conseguir usa as classificações pré-computadas, e o aprendizado não depende da API.
- **Mini-projeto** (dias 4 e 5), em que cada pessoa aplica o fluxo a um corpus de sua escolha ou ao corpus do curso.
- **Suporte assíncrono** por Discussions e Issues no GitHub, com monitores.
- **Participação sem nota.** Não há prova nem aprovação por nota.

---

## 5. Conteúdo programático

**Módulo 1 · Fundamentos e corpus**
Da análise de conteúdo clássica à automatizada; erros típicos da pesquisa com texto; o pipeline do acR; projeto em R com `renv`; importação de `.xlsx`, `.docx` e `.pdf`; coleta de discursos parlamentares; estrutura de um corpus.

**Módulo 2 · Pré-processamento e descrição**
Limpeza e normalização; tokenização; stopwords em português; escolhas de pré-processamento e seus efeitos; frequências e TF-IDF; KWIC e colocações; legibilidade e diversidade lexical; Lei de Zipf; dicionários e léxicos de sentimento e emoção.

**Módulo 3 · Comparação e modelagem**
*Keyness* entre grupos; coocorrência; Wordscores e escalonamento; análise de correspondência; agrupamento de documentos; LDA e escolha do número de tópicos; séries temporais de métricas textuais; noções de *embeddings* (conceitual).

**Módulo 4 · LLMs na análise de conteúdo**
Quando usar LLM; provedores e modelos (Gemini, Groq, outros); chaves de API; construção de codebook; *prompts* e saída estruturada; classificação em lote; estimativa de tokens e de custo; consistência, viés e alucinação; dados sensíveis e LLM local.

**Módulo 5 · Validação e reprodutibilidade**
Amostragem para validação humana; planilha de revisão; concordância entre codificadores (kappa, Krippendorff, Gwet) e o paradoxo do kappa; métricas de classificação; comparação dicionário × LLM × humano; relatório de método; boas práticas de reprodutibilidade; apresentação dos mini-projetos.

---

## 6. Programação por dia

Cada encontro tem 3 blocos e 2 pausas de 10 minutos. Os horários abaixo valem para os dois turnos (manhã: início às 9h00; noite: início às 18h30).

### Dia 0 (opcional) · Teste técnico · 1h
Instalação de R, RStudio e dos pacotes (`renv`), teste de conta no GitHub, criação e teste da chave de API (Gemini e Groq) e *checklist* de ambiente.

### Dia 1 · Fundamentos e corpus
| Tempo | Atividade |
|---|---|
| 0:00 a 0:15 | Boas-vindas, regras do curso, como pedir ajuda (GitHub) |
| 0:15 a 0:50 | **Bloco 1.** Análise de conteúdo: do clássico ao automatizado; o pipeline do acR; *text-as-data* e seus riscos |
| 0:50 a 1:00 | Pausa |
| 1:00 a 1:55 | **Bloco 2.** Projeto em R e `renv`; **importação de arquivos** `.xlsx`, `.docx` e `.pdf` com `ac_import()`; criação de corpus com `ac_corpus()` |
| 1:55 a 2:05 | Pausa |
| 2:05 a 3:00 | **Bloco 3.** Coleta de discursos parlamentares (`ac_fetch_camara()`, `ac_fetch_senado()`); limpeza (`ac_clean()`); atividade: montar o corpus do curso |

### Dia 2 · Pré-processamento e descrição
| Tempo | Atividade |
|---|---|
| 0:00 a 0:15 | Revisão do dia 1 e dúvidas |
| 0:15 a 0:50 | **Bloco 1.** Tokenização, stopwords, efeitos do pré-processamento (`ac_tokenize()`, `ac_clean_stopwords()`); contagem e TF-IDF (`ac_count()`, `ac_top_terms()`, `ac_tf_idf()`) |
| 0:50 a 1:00 | Pausa |
| 1:00 a 1:55 | **Bloco 2.** Leitura em contexto (`ac_kwic()`, `ac_collocations()`); diagnósticos do corpus (`ac_readability()`, `ac_lexical_diversity()`, `ac_plot_zipf()`) |
| 1:55 a 2:05 | Pausa |
| 2:05 a 3:00 | **Bloco 3.** Dicionários e sentimento (`ac_dictionary()`, `ac_sentiment()`, `ac_emotion()`); construir e salvar um dicionário próprio; atividade guiada |

### Dia 3 · Comparação e modelagem
| Tempo | Atividade |
|---|---|
| 0:00 a 0:15 | Revisão e dúvidas |
| 0:15 a 0:50 | **Bloco 1.** *Keyness* entre grupos (`ac_keyness()`, `ac_plot_keyness()`); coocorrência (`ac_cooccurrence()`) |
| 0:50 a 1:00 | Pausa |
| 1:00 a 1:55 | **Bloco 2.** Escalonamento e mapas (`ac_wordscores()`, `ac_ca()`); agrupamento (`ac_cluster_documents()`); séries temporais (`ac_temporal()`) |
| 1:55 a 2:05 | Pausa |
| 2:05 a 3:00 | **Bloco 3.** LDA: escolha de K (`ac_lda_tune()`), estimação e interpretação (`ac_lda()`); limites dos tópicos; visão conceitual de *embeddings*; fechamento do bloco quantitativo |

### Dia 4 · LLMs na análise de conteúdo
| Tempo | Atividade |
|---|---|
| 0:00 a 0:15 | Revisão e checagem das chaves de API |
| 0:15 a 0:50 | **Bloco 1.** Quando usar LLM; provedores e modelos (`ac_qual_list_models()`, `ac_qual_recommend_model()`); custo e tokens (`ac_estimate_tokens()`); dados sensíveis e LLM local |
| 0:50 a 1:00 | Pausa |
| 1:00 a 1:55 | **Bloco 2.** Codebook (`ac_qual_codebook()`, `ac_qual_save_codebook()`); *prompts* e saída estruturada |
| 1:55 a 2:05 | Pausa |
| 2:05 a 3:00 | **Bloco 3.** Classificação em lote com `ac_qual_code()`; consistência e erros; plano B com resultados pré-computados; início do mini-projeto |

### Dia 5 · Validação, reprodutibilidade e mini-projeto
| Tempo | Atividade |
|---|---|
| 0:00 a 0:15 | Revisão e dúvidas |
| 0:15 a 0:50 | **Bloco 1.** Amostragem e revisão humana (`ac_qual_sample()`, `ac_qual_export_for_review()`, `ac_qual_import_human()`) |
| 0:50 a 1:00 | Pausa |
| 1:00 a 1:55 | **Bloco 2.** Concordância e métricas (`ac_qual_irr()`, `ac_qual_reliability()`); paradoxo do kappa; dicionário × LLM × humano (`ac_dictionary_validate()`) |
| 1:55 a 2:05 | Pausa |
| 2:05 a 3:00 | **Bloco 3.** Relatório e exportação (`ac_qual_report()`, `ac_export()`); reprodutibilidade; apresentações curtas dos mini-projetos; encerramento e próximos passos |

---

## 7. Avaliação e frequência

Não há avaliação formal. Recomenda-se participar dos 5 encontros e entregar o mini-projeto como exercício de aprendizagem (não obrigatório). Quem solicitar declaração de participação deve ter presença em pelo menos 4 dos 5 encontros.

---

## 8. Bibliografia

### Básica
GRIMMER, Justin; ROBERTS, Margaret E.; STEWART, Brandon M. **Text as Data**: a new framework for machine learning and the social sciences. Princeton: Princeton University Press, 2022.

KRIPPENDORFF, Klaus. **Content Analysis**: an introduction to its methodology. 4. ed. Thousand Oaks: Sage, 2018.

SAMPAIO, Rafael Cardoso; LYCARIÃO, Diógenes. **Análise de conteúdo categorial**: manual de aplicação. Brasília: Enap, 2021.

GRIMMER, Justin; STEWART, Brandon M. Text as data: the promise and pitfalls of automatic content analysis methods for political texts. **Political Analysis**, v. 21, n. 3, p. 267-297, 2013.

### Complementar: método e texto como dado
DENNY, Matthew J.; SPIRLING, Arthur. Text preprocessing for unsupervised learning: why it matters, when it misleads, and what to do about it. **Political Analysis**, v. 26, n. 2, p. 168-189, 2018.

WILKERSON, John; CASAS, Andreu. Large-scale computerized text analysis in political science: opportunities and challenges. **Annual Review of Political Science**, v. 20, p. 529-544, 2017.

GENTZKOW, Matthew; KELLY, Bryan; TADDY, Matt. Text as data. **Journal of Economic Literature**, v. 57, n. 3, p. 535-574, 2019.

SALGANIK, Matthew J. **Bit by Bit**: social research in the digital age. Princeton: Princeton University Press, 2018.

BARBERÁ, Pablo et al. Automated text classification of news articles: a practical guide. **Political Analysis**, v. 29, n. 1, p. 19-42, 2021.

LAVER, Michael; BENOIT, Kenneth; GARRY, John. Extracting policy positions from political texts using words as data. **American Political Science Review**, v. 97, n. 2, p. 311-331, 2003.

SLAPIN, Jonathan B.; PROKSCH, Sven-Oliver. A scaling model for estimating time-series party positions from texts. **American Journal of Political Science**, v. 52, n. 3, p. 705-722, 2008.

HOPKINS, Daniel J.; KING, Gary. A method of automated nonparametric content analysis for social science. **American Journal of Political Science**, v. 54, n. 1, p. 229-247, 2010.

ROBERTS, Margaret E. et al. Structural topic models for open-ended survey responses. **American Journal of Political Science**, v. 58, n. 4, p. 1064-1082, 2014.

RODRIGUEZ, Pedro L.; SPIRLING, Arthur. Word embeddings: what works, what doesn't, and how to tell the difference for applied research. **Journal of Politics**, v. 84, n. 1, p. 101-115, 2022.

### Confiabilidade e validação
NEUENDORF, Kimberly A. **The Content Analysis Guidebook**. 2. ed. Thousand Oaks: Sage, 2017.

BARDIN, Laurence. **Análise de Conteúdo**. São Paulo: Edições 70, 2011.

COHEN, Jacob. A coefficient of agreement for nominal scales. **Educational and Psychological Measurement**, v. 20, n. 1, p. 37-46, 1960.

LANDIS, J. Richard; KOCH, Gary G. The measurement of observer agreement for categorical data. **Biometrics**, v. 33, n. 1, p. 159-174, 1977.

GWET, Kilem L. Computing inter-rater reliability and its variance in the presence of high agreement. **British Journal of Mathematical and Statistical Psychology**, v. 61, n. 1, p. 29-48, 2008.

GWET, Kilem L. **Handbook of Inter-Rater Reliability**. 4. ed. Gaithersburg: Advanced Analytics, 2014.

FEINSTEIN, Alvan R.; CICCHETTI, Domenic V. High agreement but low kappa: I. The problems of two paradoxes. **Journal of Clinical Epidemiology**, v. 43, n. 6, p. 543-549, 1990.

CICCHETTI, Domenic V.; FEINSTEIN, Alvan R. High agreement but low kappa: II. Resolving the paradoxes. **Journal of Clinical Epidemiology**, v. 43, n. 6, p. 551-558, 1990.

LOVEJOY, Jennette et al. Assessing the reporting of reliability in published content analyses: 1985-2010. **Communication Methods and Measures**, v. 8, n. 3, p. 207-221, 2014.

### Produção brasileira
IZUMI, Mauricio; MOREIRA, Davi. O texto como dado: desafios e oportunidades para as ciências sociais. **BIB**, n. 86, p. 138-174, 2018.

SAMPAIO, Rafael Cardoso et al. Muita Bardin, pouca qualidade: uma avaliação sobre as análises de conteúdo qualitativas no Brasil. **Revista Pesquisa Qualitativa**, v. 10, n. 25, p. 464-494, 2022.

### LLMs e software
GILARDI, Fabrizio; ALIZADEH, Meysam; KUBLI, Maël. ChatGPT outperforms crowd workers for text-annotation tasks. **PNAS**, v. 120, n. 30, 2023.

WANG, Xuezhi et al. Self-consistency improves chain of thought reasoning in language models. **EMNLP**, 2023.

BENOIT, Kenneth et al. quanteda: an R package for the quantitative analysis of textual data. **Journal of Open Source Software**, v. 3, n. 30, 2018.

HENRIQUE, Anderson. **acR**: análise de conteúdo em R. Pacote R. Disponível em: https://ahenriquecp.com/acR/.

> Itens acima: da lista do SICSS-Brazil 2026. A versão do acR deve ser atualizada na citação (o pacote está na 0.6.0; a citação do SICSS menciona 0.3.2).

### Sugestões adicionais
WELBERS, Kasper; VAN ATTEVELDT, Wouter; BENOIT, Kenneth. Text analysis in R. **Communication Methods and Measures**, v. 11, n. 4, p. 245-265, 2017. DOI: 10.1080/19312458.2017.1387238.

SILGE, Julia; ROBINSON, David. **Text Mining with R**: a tidy approach. Sebastopol: O'Reilly, 2017.

TÖRNBERG, Petter. ChatGPT-4 outperforms experts and crowd workers in annotating political Twitter messages with zero-shot learning. **arXiv**, 2304.06588, 2023.

ZIEMS, Caleb et al. Can large language models transform computational social science? **Computational Linguistics**, v. 50, n. 1, p. 237-291, 2024. DOI: 10.1162/coli_a_00502.

---

## 9. Pontos a confirmar

- Data definitiva, no fim de dezembro de 2026.
- Nome dos 2 monitores e, se for o caso, de convidados.
- Se haverá declaração de participação e como será emitida.
- Corpus final do curso (discursos da Câmara e/ou do Senado, mais exemplos em `.xlsx`, `.docx` e `.pdf`).
- Provedor principal de LLM para a demonstração (Gemini ou Groq) e limites de uso das cotas gratuitas na semana do curso.
