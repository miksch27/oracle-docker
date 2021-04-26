CREATE TABLE MeasurementJ (
  Date DATETIME,
  Sensor INTEGER REFERENCES Sensor(SensorId),
  Value JSON NOT NULL,
  PRIMARY KEY (Date, Sensor)
);