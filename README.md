## Creating and filling a Postgres DB with Docker Compose

This project create tables and fill the tables in a Postgres data base. The tables and data that create are in sql/ folder

Read the explanation here [Creating and filling a Postgres DB with Docker compose](https://bp.com/interview)
## Console Diagram
After running docker-compose:

<img width="809" alt="ER_Diagram" src="https://github.com/svincloud/bpoil_docker_postgres_with_data/blob/main/images/dockercomposeconsole.JPG">

## DB Variables
Set the variables in `sql/fill_tables.sql`
| Parameter | Description |
| ------ | ------ |
| number_of_deals | Number of rows to create in the table deals |
| number_of_traders | Number of rows to create in the table traders |
| number_of_tickers | Number of rows to create in the table tickers |
| number_of_books | Number of rows to create in the table books |
| number_of_currencies | Number of rows to create in the table curencies |
| number_of_status_names| Number of rows to create in the table dealstatus |
| start_date | Date of the first deal |
| end_date | Date of the last deal |

## Params
If want change this params in `docker-compose.yaml`
| Parameter | Description |
| ------ | ------ |
| POSTGRES_USER | The Postgres user to connect **postgres** |
| POSTGRES_PASSWORD | The Postgres password to connect **postgres** |
| POSTGRES_DB | The Postgres database name to connect **postgres** |
| port | The port mapped by Postgres is **5432** in your container. In this example, use the port **5438** on the host machine |

## Run
```sh
$ docker-compose up
```

