import pandas as pd
from sqlalchemy import create_engine

engine = create_engine('postgresql://root:root@localhost:5432/ny_taxi')
csv_file = 'taxi_zone_lookup.csv'
df = pd.read_csv('taxi_zone_lookup.csv')
df.to_sql('taxi_zone_lookup', engine, if_exists='replace', index=False)


