-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Airline_Reviews_Table" (
    "Header" varchar   NOT NULL,
    "Author" varchar   NOT NULL,
    "Date" date   NOT NULL,
    "Place" varchar   NOT NULL,
    "Content" varchar   NOT NULL,
    "Aircraft" varchar   NOT NULL,
    "Traveller_type" varchar   NOT NULL,
    "Seat_type" varchar   NOT NULL,
    "Route" varchar   NOT NULL,
    "Date_flown" date   NOT NULL,
    "Recommendation" boolean   NOT NULL,
    "Trip_verified" varchar   NOT NULL,
    "Rating" int   NOT NULL,
    "Seat_comfort" int   NOT NULL,
    "Cabin_staff_service" int   NOT NULL,
    "Food_beverages" int   NOT NULL,
    "Ground_service" int   NOT NULL,
    "Value_for_money" int   NOT NULL,
    "Entertainment" int   NOT NULL,
    CONSTRAINT "pk_Airline_Reviews_Table" PRIMARY KEY (
        "Aircraft","Traveller_type","Seat_type"
     )
);

select * from Airline_Reviews_Table; 

CREATE TABLE "Airline_Reviews_Ratings" (
    "AircraftSeat" varchar   NOT NULL,
    "Users_Reviews" varchar   NOT NULL,
    "Country" varchar   NOT NULL,
    "Type_of_Travellers" varchar   NOT NULL,
    "Route" varchar   NOT NULL,
	"Seat_Types" varchar   NOT NULL,
	"Seat_Comfort" int   NOT NULL,
    "Date_Flown" varchar   NOT NULL,
    "Cabin_Staff_Service" int   NOT NULL,
    "Ground_Service" int   NOT NULL,
    "Food_Beverages" int   NOT NULL,
    "Wifi_Connectivity" int   NOT NULL,
	"Inflight_Entertainment" int   NOT NULL,
    "Value_For_Money" int   NOT NULL,
    "Recommended" boolean   NOT NULL,
    CONSTRAINT "pk_Airline_Reviews_Ratings" PRIMARY KEY (
        "AircraftSeat","Type_of_Travellers","Seat_Types"
     )
);

select * from "Airline_Reviews_Ratings";

ALTER TABLE "Airline_Reviews_Ratings" ADD CONSTRAINT "fk_Airline_Reviews_Ratings_AircraftSeat_Users_Reviews_Type_of_Travellers_Route_Seat_Types_Ground_Service_Food_&_Beverages_Value_For_Money_Inflight_Entertainment" FOREIGN KEY("AircraftSeat", "Users_Reviews", "Type_of_Travellers", "Route", "Seat_Types", "Ground_Service", "Food_&_Beverages", "Value_For_Money", "Inflight_Entertainment")
REFERENCES "Airline_Reviews_Table" ("Aircraft", "Content", "Traveller_type", "Route", "Seat_type", "Ground_service", "Food_beverages", "Value_for_money", "Entertainment");