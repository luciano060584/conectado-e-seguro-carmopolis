# Conectado e Seguro
### Projeto de Extensão Universitária | UNINTER

## Sobre o projeto

O **Conectado e Seguro** nasceu da proposta de levar conhecimento sobre inclusão financeira, cooperativismo e segurança digital à comunidade de Carmópolis de Minas, em Minas Gerais.

A ideia foi desenvolver uma solução simples e acessível, que permitisse às pessoas aprender sobre esses assuntos de forma prática, utilizando o próprio celular ou computador.

Mais do que apresentar informações, o projeto busca estimular a reflexão sobre situações do dia a dia, principalmente os cuidados necessários ao utilizar serviços financeiros digitais.

## O que queremos alcançar

O principal objetivo é contribuir para que as pessoas se sintam mais preparadas e seguras ao utilizar os canais digitais.

Para isso, a jornada aborda três temas:

- **Inclusão financeira:** a importância do acesso e da utilização consciente dos serviços financeiros.
- **Cooperativismo:** seus princípios e como esse modelo pode contribuir para a comunidade.
- **Segurança digital:** cuidados para reconhecer golpes, proteger informações e evitar fraudes.

## Como funciona a jornada

Desenvolvi uma aplicação web que pode ser acessada diretamente pelo navegador, sem necessidade de instalar nenhum aplicativo.

Ao entrar na plataforma, o participante informa seu nome, autoriza o registro da participação e inicia uma jornada educativa.

A experiência inclui um diagnóstico inicial, conteúdos explicativos, cinco desafios interativos e uma avaliação ao final.

Durante a navegação, o sistema registra as interações para que seja possível acompanhar a utilização da plataforma e avaliar os resultados da atividade.

**Acesse a aplicação:**

https://conectado-e-seguro-v11.luciano060584.workers.dev/

## Como o projeto foi desenvolvido

Para colocar a solução em funcionamento, utilizei algumas tecnologias que permitiram construir e disponibilizar a aplicação na internet:

| Tecnologia | Utilização |
|---|---|
| HTML, CSS e JavaScript | Construção da aplicação e das interações |
| Cloudflare Workers | Publicação e hospedagem do site |
| Supabase | Registro dos participantes e das interações |
| GitHub | Organização e compartilhamento do código-fonte |

A aplicação foi desenvolvida para funcionar tanto em computadores quanto em dispositivos móveis.

## Registro das participações

Uma parte importante do projeto é conseguir acompanhar a participação das pessoas e os resultados da jornada.

Para isso, foram criadas duas estruturas de armazenamento no Supabase:

- `participantes_jornada`: registra a identificação e o consentimento de cada participante.
- `eventos_jornada`: registra as interações realizadas ao longo da experiência.

Esses registros são relacionados por um identificador de sessão, permitindo acompanhar o percurso realizado pelo participante.

Os dados pessoais são mantidos em ambiente de acesso restrito. Na apresentação dos resultados acadêmicos, serão utilizadas informações mascaradas ou consolidadas, evitando a exposição desnecessária dos participantes.

## Aplicação na comunidade

O projeto será aplicado na comunidade de Carmópolis de Minas/MG.

A proposta é compartilhar o acesso à plataforma para que cada pessoa possa realizar a jornada no seu próprio ritmo, utilizando o celular ou computador.

Após a aplicação, os registros permitirão avaliar quantas pessoas participaram, quantas concluíram a jornada, como interagiram com os desafios e quais foram suas percepções sobre a experiência.

Essas informações serão utilizadas na elaboração do relatório final da Atividade Extensionista II, juntamente com as evidências da aplicação na comunidade.

## Conexão com os Objetivos de Desenvolvimento Sustentável

O projeto também está relacionado a dois Objetivos de Desenvolvimento Sustentável (ODS) da ONU:

**ODS 4 — Educação de Qualidade**

Ao compartilhar conhecimentos e orientações práticas sobre inclusão financeira e segurança digital.

**ODS 10 — Redução das Desigualdades**

Ao contribuir para ampliar o acesso à informação e estimular uma participação mais segura e consciente no ambiente financeiro digital.

## Código-fonte

O código da aplicação está disponível neste repositório, no arquivo `worker_conectado_seguro_v11.js`.

A solução está publicada no Cloudflare Workers e utiliza o Supabase para armazenamento dos registros da jornada.

## Responsável

**Luciano Silva**

Atividade Extensionista II — UNINTER

Comunidade de aplicação: Carmópolis de Minas/MG
