DROP TABLE IF EXISTS rates CASCADE;

DROP TABLE IF EXISTS guest_reviews CASCADE;

CREATE TABLE guest_reviews (
  id serial PRIMARY KEY NOT NULL,
  guest_id integer REFERENCES users (id) ON DELETE CASCADE,
  owner_id integer REFERENCES users (id) ON DELETE CASCADE,
  reservation_id integer REFERENCES reservations (id) ON DELETE CASCADE,
  rating smallint NOT NULL DEFAULT 0,
  message text
);

CREATE TABLE rates (
  id serial PRIMARY KEY NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  cost_per_night integer NOT NULL DEFAULT 0,
  property_id integer REFERENCES properties (id) ON DELETE CASCADE
);

