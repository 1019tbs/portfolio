CREATE TABLE contact_messages (

    id SERIAL PRIMARY KEY,

    name VARCHAR(50) NOT NULL,

    email VARCHAR(255) NOT NULL,

    subject VARCHAR(100) NOT NULL,

    category VARCHAR(50),

    message VARCHAR(1000) NOT NULL,

    status VARCHAR(20) NOT NULL DEFAULT '未対応',

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

);