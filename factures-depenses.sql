-- Seconde Vie : lie une facture PDF (stockée dans le bucket "photos", dossier factures/) à chaque dépense créée par import.
-- À coller dans Supabase > SQL Editor, puis « Run ». Peut être relancé sans risque.

alter table public.depenses add column if not exists facture_path text;
