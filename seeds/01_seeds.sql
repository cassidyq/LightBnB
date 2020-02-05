INSERT INTO users (name, email, PASSWORD)
  VALUES ('Joe Shmoe', 'joe@shmoe.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), ('Alice Wonder', 'madhatter@tea.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), ('Winnie Bear', 'tutu@rain.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
  VALUES (1, 'Speed Lamp', 'description', 'https://images.pexels.com/photos/2086545', 'https://images.pexels.com/photos/208613435', 300, 3, 2, 3, 'Canada', 'Store St.', 'Victoria', 'BC', 'v5v 6y8', TRUE);

INSERT INTO reservations (guest_id, property_id, start_date, end_date)
  VALUES (1, 1, '2018-09-11', '2018-09-26'), (3, 1, '2019-01-04', '2019-02-01'), (2, 1, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
  VALUES (1, 1, 1, 4, 'messages');

