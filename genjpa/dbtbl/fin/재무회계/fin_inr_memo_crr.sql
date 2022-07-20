--
-- Table structure for table `fin_inr_memo_crr`
--

DROP TABLE IF EXISTS `fin_inr_memo_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_inr_memo_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `memo_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '메모번호',
  `wrt_dthms` datetime NOT NULL COMMENT '작성일시',
  `wrter_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작성자직원번호',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_inr_memo_crr_00` (`memo_no`,`wrt_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합메모이력';
