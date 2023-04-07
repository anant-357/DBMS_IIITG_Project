from sqlalchemy import Column, Integer, String, Date, ForeignKey, Boolean
from application.database import db


class Clients(db.Model):
    __tablename__ = "Clients"
    Client_ID = Column(Integer, primary_key=True, autoincrement=True)
    Name = Column(String)
    Phone_no = Column(Integer)


class Properties(db.Model):
    __tablename__ = "Properties"
    P_ID = Column(Integer, primary_key=True, autoincrement=True)
    Address = Column(String)
    Locality = Column(String)
    Area = Column(Integer)
    Price = Column(Integer)
    Rent = Column(Boolean)
    Date_Of_Construction = Column(Date)
    No_Of_Bedrooms = Column(Integer)
    Status = Column(String)
    Sell_Date = Column(Date)
    Sell_Price = Column(Integer)


class Sellers(db.Model):
    __tablename__ = "Sellers"
    Seller_ID = Column(Integer, primary_key=True, autoincrement=True)
    Name = Column(String)
    Phone_no = Column(Integer)


class Brokers(db.Model):
    __tablename__ = "Brokers"
    License_ID = Column(Integer, primary_key=True, autoincrement=True)
    Name = Column(String)
    Phone_no = Column(Integer)
    Brokerage = Column(Integer)
    Locality = Column(String)


class Holds(db.Model):
    __tablename__ = "Holds"
    Client_ID = Column(Integer, ForeignKey("Clients.Client_ID"), primary_key=True)
    P_ID = Column(Integer, ForeignKey("Properties.P_ID"), primary_key=True)


class Sells(db.Model):
    __tablename__ = "Sells"
    Seller_ID = Column(Integer, ForeignKey("Sellers.Seller_ID"))
    P_ID = Column(Integer, ForeignKey("Properties.P_ID"), primary_key=True)


class Shows(db.Model):
    __tablename__ = "Shows"
    License_ID = Column(Integer, ForeignKey("Brokers.License_ID"), primary_key=True)
    P_ID = Column(Integer, ForeignKey("Properties.P_ID"), primary_key=True)


class Photos(db.Model):
    __tablename__ = "Photos"
    P_ID = Column(Integer, ForeignKey("Properties.P_ID"), primary_key=True)
    Photo_URL = Column(String, primary_key=True)
