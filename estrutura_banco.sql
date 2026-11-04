-- CONECTADO E SEGURO | Documentacao da estrutura do Supabase
-- Arquivo de consulta e documentacao. Nao cria nem modifica tabelas.
-- Estrutura conferida em 04/11/2026.
-- Nao contem dados pessoais nem credenciais.

-- Tabela public.eventos_jornada:
-- id         bigint                   NOT NULL
-- session_id text                     NOT NULL
-- evento     text                     NOT NULL
-- etapa      text                     NULL
-- dados      jsonb                    NULL
-- criado_em  timestamp with time zone NOT NULL

-- Tabela public.participantes_jornada:
-- session_id     uuid                     NOT NULL
-- nome           text                     NOT NULL
-- consentimento  boolean                  NOT NULL
-- registrado_em  timestamp with time zone NOT NULL

-- Politicas RLS observadas:
-- eventos_jornada: INSERT para anon, WITH CHECK (true)
-- participantes_jornada: INSERT para anon,
--   WITH CHECK ((consentimento = true) AND (nome IS NOT NULL))
-- RLS habilitado nas duas tabelas; FORCE RLS desabilitado.
-- Na data da consulta, a role anon tinha permissoes SQL de SELECT,
-- INSERT, UPDATE e DELETE em eventos_jornada, mas nenhuma politica
-- RLS de SELECT/UPDATE/DELETE foi encontrada. A permissao efetiva
-- depende da combinacao de grants e politicas RLS.
-- Em participantes_jornada, anon tinha apenas INSERT como permissao SQL.

-- Consulta somente leitura: estrutura atual das tabelas
SELECT table_name, ordinal_position, column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name IN ('eventos_jornada', 'participantes_jornada')
ORDER BY table_name, ordinal_position;

-- Consulta somente leitura: politicas atuais
SELECT tablename, policyname, cmd, roles, qual, with_check
FROM pg_policies
WHERE schemaname = 'public'
  AND tablename IN ('eventos_jornada', 'participantes_jornada')
ORDER BY tablename, policyname;

-- Consulta somente leitura: RLS e permissoes da role anon
SELECT c.relname AS tabela,
       c.relrowsecurity AS rls_ativo,
       c.relforcerowsecurity AS rls_forcado,
       has_table_privilege('anon', c.oid, 'SELECT') AS anon_select,
       has_table_privilege('anon', c.oid, 'INSERT') AS anon_insert,
       has_table_privilege('anon', c.oid, 'UPDATE') AS anon_update,
       has_table_privilege('anon', c.oid, 'DELETE') AS anon_delete
FROM pg_class c
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE n.nspname = 'public'
  AND c.relname IN ('eventos_jornada', 'participantes_jornada')
  AND c.relkind IN ('r', 'p')
ORDER BY c.relname;

-- Observacao: defaults, chaves primarias, indices e constraints adicionais
-- nao foram verificados. Este arquivo e documentacao, nao um backup
-- restauravel nem uma migracao de criacao do banco.
