-- Seconde Vie : pièce par défaut liée à une réparation du catalogue (onglet "Réparations & Mods").
-- À coller dans Supabase > SQL Editor, puis « Run ». Peut être relancé sans risque.

alter table public.catalogue add column if not exists piece_sku text;
