-- Seconde Vie : plusieurs pièces par défaut (avec quantité) liées à une réparation du catalogue.
-- Remplace catalogue.piece_sku (une seule pièce) par catalogue.pieces_auto (liste de { sku, qte }).
-- Les réparations déjà liées via piece_sku continuent de fonctionner (lues automatiquement en secours).
-- À coller dans Supabase > SQL Editor, puis « Run ». Peut être relancé sans risque.

alter table public.catalogue add column if not exists pieces_auto jsonb default '[]'::jsonb;
