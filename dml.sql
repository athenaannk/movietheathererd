INSERT INTO customer(
    first_name,
    last_name,
    email,
    age
) VALUES (
    'Athena',
    'Kostro',
    'ak@gmail.com',
    35
) , (
    'Maggie',
    'Terhune',
    'mt@spark-bmore.com',
    29
)

INSERT INTO movies(
    film_name,
    film_description,
    rating,
    customer_id
) VALUES (
    'Gone Girl',
    'Crazy woman',
    '4.5',
    '1'
), (
    'Harry Potter',
    'Wizard with a scar and a story.',
    '3.4',
    '2'
)

INSERT INTO tickets(
    showing_date,
    price,
    payment_method,
    customer_id,
    film_id
) VALUES (
    '5/29/2023',
    '15.00',
    'Visa',
    '1',
    '1'

), (
    '4/15/2023',
    '15.00',
    'Cash',
    '2',
    '2'
)


INSERT INTO concessions(
    price,
    payment_method,
    customer_id
) VALUES(
    '9.00',
    'Cash',
    '1'
), (
    '17.00',
    'Visa',
    '2'
)

