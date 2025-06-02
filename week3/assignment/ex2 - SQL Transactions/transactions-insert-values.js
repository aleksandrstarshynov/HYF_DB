const { Client } = require('pg');

async function insertValues() {
  const client = new Client();
  await client.connect();

  try {
    await client.query('BEGIN');

    await client.query("INSERT INTO account (account_number, balance) VALUES (101, 5000.00), (102, 3000.00)");

    await client.query("INSERT INTO account_changes (account_number, amount, remark) VALUES (101, 5000.00, 'Initial deposit'), (102, 3000.00, 'Initial deposit')");

    await client.query('COMMIT');
    console.log('Values inserted successfully');
  } catch (err) {
    await client.query('ROLLBACK');
    console.error('Error inserting values:', err);
  } finally {
    await client.end();
  }
}

insertValues();
