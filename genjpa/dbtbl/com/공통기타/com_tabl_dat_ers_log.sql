--
-- Table structure for table `com_tabl_dat_ers_log`
--

DROP TABLE IF EXISTS `com_tabl_dat_ers_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_tabl_dat_ers_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `wrk_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작업일시',
  `tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '테이블명',
  `rst_msg_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '결과메시지내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='테이블데이터삭제로그';
