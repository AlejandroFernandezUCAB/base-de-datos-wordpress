TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER validate_exist_user_evaluation\n\nBEFORE INSERT ON user_evaluation\n\nFOR EACH ROW\n\nBEGIN\n\n  IF (SELECT count(*) FROM user_evaluation WHERE user = NEW.user AND id_lesson = NEW.id_lesson \n\n  AND id_evaluation = NEW.id_evaluation) > 0 THEN SIGNAL SQLSTATE \'45000\' SET MESSAGE_TEXT = \'You can not insert record\';\n\n  END IF ;\n\nEND'
sql_modes=1168113696
definers='root@localhost'
client_cs_names='latin1'
connection_cl_names='latin1_swedish_ci'
db_cl_names='latin1_swedish_ci'
created=158035534004
