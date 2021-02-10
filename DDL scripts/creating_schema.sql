create table nakala_schema.Kpi_Performance_Tracker(
	sbu_code  						CHAR(10)      	 NOT NULL,
	role_code 						VARCHAR(20)  	 NOT NULL,
	staff_position 					CHAR(50) 		 NOT NULL,
	kpi_code 						VARCHAR(30)    	 NOT NULL,
	staff_kpi_objective 			VARCHAR(50) 	 NOT NULL,
	perf_target 					FLOAT 			 NOT NULL,
	perf_actual  					FLOAT 	         NOT NULL,
	perf_score_prediction 			FLOAT ,
	perf_score_percentage 			INT              NOT NULL,
	kpi_season_change_percentage 	INT              NOT NULL,
	perf_status 					CHAR(15) ,
	sbu_dependency 					CHAR(15),
	PRIMARY KEY (kpi_code)
);