CREATE DATABASE IF NOT EXISTS ups;

USE ups;

CREATE TABLE IF NOT EXISTS locations (
  _id INT NOT NULL AUTO_INCREMENT,
  _name VARCHAR(45) NULL,
  location POINT NOT NULL,
  PRIMARY KEY (_id)
);

CREATE TABLE IF NOT EXISTS delivery_routes (
  _id INT UNIQUE NOT NULL AUTO_INCREMENT,
  _from INT NOT NULL,
  _to INT NOT NULL,
  PRIMARY KEY (_id),
  CONSTRAINT fk_delivery_routes_from
    FOREIGN KEY (_from)
    REFERENCES locations (_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_delivery_routes_to
    FOREIGN KEY (_to)
    REFERENCES locations (_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS retail_centers (
  _id INT UNIQUE NOT NULL AUTO_INCREMENT,
  _type VARCHAR(45) NOT NULL,
  _address VARCHAR(45) NOT NULL,
  _location INT NOT NULL,
  PRIMARY KEY (_id),
  CONSTRAINT fk_retail_centers_location
    FOREIGN KEY (_location)
    REFERENCES locations (_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS transportation_events (
  _scheduleNumber INT UNIQUE NOT NULL AUTO_INCREMENT,
  _type ENUM('truck', 'flight') NULL,
  _route INT NOT NULL,
  PRIMARY KEY (_scheduleNumber),
  CONSTRAINT fk_transportation_events_route
    FOREIGN KEY (_route)
    REFERENCES delivery_routes (_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS shipments (
  _id INT NOT NULL AUTO_INCREMENT,
  _item INT NOT NULL,
  _trans_event INT NOT NULL,
  _date DATE,
  PRIMARY KEY (_id),
  CONSTRAINT fk_shipment_te
    FOREIGN KEY (_trans_event)
    REFERENCES transportation_events (_scheduleNumber)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS shipping_items (
  _item_num INT UNIQUE NOT NULL AUTO_INCREMENT,
  _weight FLOAT NULL,
  _dimensions FLOAT NULL,
  _insuarance FLOAT NULL,
  _destination INT NOT NULL,
  _delivery_date DATE NULL,
  _shipment INT,
  PRIMARY KEY (_item_num),
  CONSTRAINT fk_shipping_items_destination
    FOREIGN KEY (_destination)
    REFERENCES locations (_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_shipping_items_shipment
    FOREIGN KEY (_shipment)
    REFERENCES shipments (_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
); 