--
-- Table structure for table `cus_reno_db`
--

DROP TABLE IF EXISTS `cus_reno_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_reno_db` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `db_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복원인코드',
  `mng_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치여부',
  `mng_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치사항',
  `rgt_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록요청직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_reno_db_00` (`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주민번호중복';
