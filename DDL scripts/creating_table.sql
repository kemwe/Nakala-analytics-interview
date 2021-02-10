create table nakala_schema.Kpi_Performance_Tracker(
	sbu_code  						CHAR(10)      	 NOT NULL,
	role_code 						VARCHAR(20)  	 NOT NULL,
	staff_position 					CHAR(50) 		 NOT NULL,
	kpi_code 						VARCHAR(30)    	 NOT NULL,
	staff_kpi_objective 			VARCHAR(50) 	 NOT NULL,
	/*using VARCHAR data type for perf_target since the values in the column are mixed(integers,float,percentage)*/
	perf_target 					VARCHAR(10) 	 NOT NULL,
	/*using VARCHAR data type for perf_actual since the values in the column are mixed(integers,float,percentage)*/
	perf_actual  					VARCHAR(10) 	 NOT NULL,
	/*using VARCHAR data type for perf_score_prediction since the values in the column are mixed(integers,float,percentage)*/
	perf_score_prediction 			VARCHAR(10) ,
	perf_score_percentage 			INT              NOT NULL,
	kpi_season_change_percentage 	INT              NOT NULL,
	perf_status 					CHAR(15) ,
	sbu_dependency 					CHAR(15),
);