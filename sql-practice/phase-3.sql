-- Find Hermione's cats
SELECT cats.name
FROM cats
JOIN cat_owners ON (cats.id = cat_owners.cat_id)
JOIN owners ON (cat_owners.owner_id = owners.id)
WHERE owners.first_name = 'Hermione';


-- Find All the Toys for Hermione's cats
-- SELECT toys.name
-- FROM cats
-- JOIN cat_owners ON (cats.id = cat_owners.cat_id)
-- JOIN owners ON (cat_owners.owner_id = owners.id)
-- JOIN toys ON (cats.id = toys.cat_id)
-- WHERE owners.first_name = 'Hermione';

SELECT toys.name
FROM toys
JOIN cat_owners ON (cat_owners.cat_id = toys.cat_id)
JOIN owners ON (cat_owners.owner_id = owners.id)
WHERE owners.first_name = 'Hermione';