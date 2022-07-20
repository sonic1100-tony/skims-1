--
-- Table structure for table `ins_once_wrk_bj`
--

DROP TABLE IF EXISTS `ins_once_wrk_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_once_wrk_bj` (
  `once_wrk_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일시적작업유형코드',
  `once_wrk_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일시적작업대상구분코드',
  `once_wrk_bjno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '일시적작업대상번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`once_wrk_tpcd`,`once_wrk_bj_flgcd`,`once_wrk_bjno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일시적작업대상';
