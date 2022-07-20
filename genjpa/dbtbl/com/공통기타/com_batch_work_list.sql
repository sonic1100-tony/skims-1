--
-- Table structure for table `com_batch_work_list`
--

DROP TABLE IF EXISTS `com_batch_work_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_work_list` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_wrk_gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업그룹번호',
  `batch_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치관리번호',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_batch_work_list_00` (`batch_wrk_gpno`,`batch_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치작업리스트';
