--
-- Table structure for table `fin_ins_ctm_mbrs_ctm_mpp`
--

DROP TABLE IF EXISTS `fin_ins_ctm_mbrs_ctm_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ins_ctm_mbrs_ctm_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `pnt_ctmno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트고객번호',
  `mbrs_ctmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '멤버스고객번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_ins_ctm_mbrs_ctm_mpp_00` (`pnt_ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험고객멤버스고객매핑';
