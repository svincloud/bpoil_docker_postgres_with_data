-- Creation of product table
CREATE TABLE IF NOT EXISTS tickers (
  ticker_id INT NOT NULL,
  name varchar(250) NOT NULL,
  PRIMARY KEY (ticker_id)
);

-- Creation of user table
CREATE TABLE IF NOT EXISTS traders (
  trader_id INT NOT NULL,
  name varchar(250) NOT NULL,
  PRIMARY KEY (trader_id)
);

-- Creation of book table
CREATE TABLE IF NOT EXISTS books (
  book_id INT NOT NULL,
  book_name varchar(450) NOT NULL,
  PRIMARY KEY (book_id)
);

-- Creation of currency table
CREATE TABLE IF NOT EXISTS  currencies(
  currency_id INT NOT NULL,
  currency_name varchar(450) NOT NULL,
  PRIMARY KEY (currency_id)
);



-- Creation of status_name table
CREATE TABLE IF NOT EXISTS dealstatus (
  status_name_id INT NOT NULL,
  status_name varchar(450) NOT NULL,
  PRIMARY KEY (status_name_id)
);

-- Creation of sale table
CREATE TABLE IF NOT EXISTS deals (
  deal_id varchar(200) NOT NULL,
  notional DECIMAL(20,3) NOT NULL,
  date_date TIMESTAMP,
  ticker_id INT NOT NULL,
  trader_id INT NOT NULL,
  book_id INT NOT NULL, 
  currency_id INT NOT NULL, 
  status_name_id INT NOT NULL,
  PRIMARY KEY (deal_id),
  CONSTRAINT fk_ticker
      FOREIGN KEY(ticker_id) 
	  REFERENCES tickers(ticker_id),
  CONSTRAINT fk_trader
      FOREIGN KEY(trader_id) 
	  REFERENCES traders(trader_id),
  CONSTRAINT fk_book
      FOREIGN KEY(book_id) 
	  REFERENCES books(book_id),
  CONSTRAINT fk_currency
      FOREIGN KEY(currency_id) 
	  REFERENCES currencies(currency_id),
  CONSTRAINT fk_dealstatus
      FOREIGN KEY(status_name_id) 
	  REFERENCES dealstatus(status_name_id)  	  
);
