BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;
CREATE EXTENSION IF NOT EXISTS "moddatetime" WITH SCHEMA extensions;
CREATE EXTENSION IF NOT EXISTS "unaccent" WITH SCHEMA extensions;

CREATE OR REPLACE FUNCTION generate_slug(TEXT)
RETURNS TEXT AS 
$body$
  DECLARE
    input_text ALIAS FOR $1;
    slug TEXT;
  BEGIN
    -- convert to lowercase and replace spaces with hyphens
    slug := lower(regexp_replace(input_text, '\s+', '-', 'g'));
    -- remove accents (diacritic signs)
    slug := unaccent(slug);
    -- remove any remaining non-alphanumeric characters
    slug := regexp_replace(slug, '[^\w-]', '', 'g');
    -- remove leading and trailing hyphens
    slug := regexp_replace(slug, '^[-]+|[-]+$', '', 'g');
    RETURN slug;
  END;
$body$
LANGUAGE plpgsql STABLE SECURITY INVOKER;

CREATE TABLE "customer" (
  "id" UUID PRIMARY KEY REFERENCES "auth"."users" ON DELETE CASCADE,
  "email" VARCHAR(255) NOT NULL, 
  "date_of_birth" DATE NULL,
  "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
  "updated_at" TIMESTAMPTZ NULL,
);

ALTER TABLE "customer" ENABLE ROW LEVEL SECURITY;

CREATE TABLE "profile" (
  "id" UUID PRIMARY KEY REFERENCES "customer" ON DELETE CASCADE,
  "full_name" VARCHAR(100) NOT NULL,
  "avatar_url" VARCHAR(255) NOT NULL,
  "is_public" BOOLEAN NOT NULL DEFAULT FALSE,
);

ALTER TABLE "profile" ENABLE ROW LEVEL SECURITY;

CREATE OR REPLACE FUNCTION handle_new_user()
RETURNS TRIGGER AS
$body$
  BEGIN
      INSERT INTO "customer" ("id", "email") VALUES
        (
          NEW.id,
          NEW.email
        );

      INSERT INTO "profile" ("id", "full_name", "avatar_url") VALUES
        (
          NEW.id,
          NEW.raw_user_meta_data ->> 'full_name',
          NEW.raw_user_meta_data ->> 'avatar_url'
        );
    END IF;

    RETURN NEW;
  END;
$body$
LANGUAGE plpgsql SECURITY DEFINER SET search_path = "public";

COMMIT;

CREATE TABLE "cake" (
  "id" UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  "name" VARCHAR(30) NOT NULL UNIQUE,
  "slug" VARCHAR(30) NOT NULL UNIQUE GENERATED ALWAYS AS generate_slug("name") STORED,
  "price",
  "description" TEXT,
);

ALTER TABLE "cake" ENABLE ROW LEVEL SECURITY;

CREATE TABLE "topping" (
  "id"
);

CREATE TABLE "ingredient" ();

CREATE TABLE "cake_ingredients" ();

CREATE TABLE "pizza" ();

CREATE TABLE "wishlist" ();

CREATE TABLE "order" (
  "customer_id" UUID NOT NULL REFERENCES "customer" ON DELETE RESTRICT,
);

CREATE TABLE "order_item" ();

CREATE TABLE "promotion" ();