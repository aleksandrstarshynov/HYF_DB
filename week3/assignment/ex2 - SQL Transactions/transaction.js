const { Client } = require('pg');

async function transferAmount() {
  const client = new Client();
  await client.connect();

  const fromAccount = 101;
  const toAccount = 102;
  const amount = 1000.00;

  try {
    await client.query('BEGIN');

    // Deduct from sender
    await client.query(
      'UPDATE account SET balance = balance - $1 WHERE account_number = $2',
      [amount, fromAccount]
    );
    await client.query(
      'INSERT INTO account_changes (account_number, amount, remark) VALUES ($1, $2, $3)',
      [fromAccount, -amount, 'Transferred to 102']
    );

    // Add to recipient
    await client.query(
      'UPDATE account SET balance = balance + $1 WHERE account_number = $2',
      [amount, toAccount]
    );
    await client.query(
      'INSERT INTO account_changes (account_number, amount, remark) VALUES ($1, $2, $3)',
      [toAccount, amount, 'Received from 101']
    );

    await client.query('COMMIT');
    console.log('Transaction completed successfully');
  } catch (err) {
    await client.query('ROLLBACK');
    console.error('Transaction failed:', err);
  } finally {
    await client.end();
  }
}

transferAmount();
