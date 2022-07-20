--
-- Table structure for table `com_batch_work_grp`
--

DROP TABLE IF EXISTS `com_batch_work_grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_work_grp` (
  `batch_wrk_gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업그룹번호',
  `batch_wrk_gpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업그룹명',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`batch_wrk_gpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치작업그룹';
