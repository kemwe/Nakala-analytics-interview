SELECT perf_actual_table.kpi_code1
  FROM
  /*subqueries to select all columns where perf_actual > 10% */
  (
 SELECT
     nakala_schema.kpi_performance_tracker.kpi_code As kpi_code1,
    nakala_schema.kpi_performance_tracker.sbu_code As sbu_code1,
    nakala_schema.kpi_performance_tracker.role_code As role_code1,
    nakala_schema.kpi_performance_tracker.staff_position As staff_position1,
    nakala_schema.kpi_performance_tracker.staff_kpi_objective,
    nakala_schema.kpi_performance_tracker.perf_target,
	  /*Removing % sign and changing the values to integers to easly use > operator*/
    cast(RTRIM(nakala_schema.kpi_performance_tracker.perf_actual,'%') AS integer) AS perf_actual,
	nakala_schema.kpi_performance_tracker.perf_score_prediction,
    nakala_schema.kpi_performance_tracker.perf_score,
    nakala_schema.kpi_performance_tracker.kpi_season_change,
    nakala_schema.kpi_performance_tracker.perf_status,
    nakala_schema.kpi_performance_tracker.sbu_dependency
    
FROM
    nakala_schema.kpi_performance_tracker
	WHERE 
	
  nakala_schema.kpi_performance_tracker.perf_actual ~* '%' AND perf_actual > '10') perf_actual_table WHERE 
  perf_actual_table.perf_target in
  /*subquery to select perf_target with percentage*/
  (SELECT
    nakala_schema.kpi_performance_tracker.perf_target
FROM
    nakala_schema.kpi_performance_tracker
WHERE
    nakala_schema.kpi_performance_tracker.perf_target ~* '%');