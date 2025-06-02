const { Client } = require('pg');

async function createTables() {
  const client = new Client();
  await client.connect();

  try {
    await client.query('BEGIN');

    await client.query(`
      CREATE TABLE IF NOT EXISTS account (
        account_number INTEGER PRIMARY KEY,
        balance NUMERIC(12, 2) NOT NULL
      )
    `);

    await client.query(`
      CREATE TABLE IF NOT EXISTS account_changes (
        change_number SERIAL PRIMARY KEY,
        account_number INTEGER REFERENCES account(account_number),
        amount NUMERIC(12, 2) NOT NULL,
        changed_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        remark TEXT
      )
    `);

    await client.query('COMMIT');
    console.log('Tables created successfully');
  } catch (err) {
    await client.query('ROLLBACK');
    console.error('Error creating tables:', err);
  } finally {
    await client.end();
  }
}

createTables();
