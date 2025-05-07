-- Book borrowing transaction
START TRANSACTION;
  UPDATE book SET is_available = FALSE WHERE id = 24;
  INSERT INTO transaction (book_id, user_id, borrow_date)
  VALUES (24, 1, CURRENT_DATE);
COMMIT;

-- Book return transaction
START TRANSACTION;
  UPDATE book SET is_available = TRUE WHERE id = 24;
  UPDATE transaction SET return_date = CURRENT_DATE 
  WHERE book_id = 24 AND return_date IS NULL;
COMMIT;