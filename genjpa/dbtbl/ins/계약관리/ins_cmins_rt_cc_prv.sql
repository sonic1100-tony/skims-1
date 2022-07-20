--
-- Table structure for table `ins_cmins_rt_cc_prv`
--

DROP TABLE IF EXISTS `ins_cmins_rt_cc_prv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_rt_cc_prv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rt_cc_no` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '요율산출번호',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재상태코드',
  `prv_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재검토내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cmins_rt_cc_prv_00` (`rt_cc_no`,`prv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험요율산출결재';
