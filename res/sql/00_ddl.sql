-- 単語テーブル
DROP TABLE IF EXISTS words;
CREATE TABLE words (
  id serial PRIMARY key,  -- 単語ID
  surface text NOT NULL,  -- 単語の表層
  pos text NOT NULL,      -- 単語の品詞
  meaning text NOT NULL,  -- 単語の意味
  supplement text,        -- 補足
  created_at timestamp NOT NULL DEFAULT NOW(),
  updated_at timestamp NOT NULL DEFAULT NOW()
);

-- 名詠テーブル
DROP TABLE IF EXISTS oratorios;
CREATE TABLE oratorios (
  id serial PRIMARY key,  -- 名詠ID
  oratoree text,          -- 名詠者の名前
  created_at timestamp NOT NULL DEFAULT NOW(),
  updated_at timestamp NOT NULL DEFAULT NOW()
);

-- 名詠文テーブル
DROP TABLE IF EXISTS sentences;
CREATE TABLE sentences (
  id serial PRIMARY key,      -- 名詠文ID
  oratorio_id integer NOT NULL REFERENCES oratorios (id), -- 名詠ID
  sentence text NOT NULL,     -- 名詠文
  sentence_ja text NOT NULL,  -- 名詠和訳
  volume int NOT NULL,        -- 名詠文収録巻
  page int NOT NULL,          -- 名詠文収録ページ
  created_at timestamp NOT NULL DEFAULT NOW(),
  updated_at timestamp NOT NULL DEFAULT NOW()
);
