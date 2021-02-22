# This scripts will pull data from the database and transform and load back to the database

try:
    import pandas as pd
    # Python SQL toolkit and Object Relational Mapper
    import sqlalchemy
    from sqlalchemy.ext.automap import automap_base
    from sqlalchemy.orm import Session
    from sqlalchemy import create_engine, inspect, func
    import os, sys

    # Import DB key
    sys.path.append('config')
    from config import db_key
    
except Exception as e:
    print(f"a module(s) have not been imported {e}" )


# generate connection to DB
engine = create_engine('postgresql://postgres:'+db_key+'@localhost:5432/"Brazilian E-Commerce"')
connection = engine.connect()