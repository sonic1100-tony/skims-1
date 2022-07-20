--
-- Table structure for table `cus_ctm_cntrt_scc_load`
--

DROP TABLE IF EXISTS `cus_ctm_cntrt_scc_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_cntrt_scc_load` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cntrt_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '접촉방법코드',
  `cntrt_dthms` datetime NOT NULL COMMENT '접촉일시',
  `cntrt_scc_rcv_dthms` datetime NOT NULL COMMENT '접촉성공수신일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_cntrt_scc_load_00` (`ctmno`,`cntrt_mtdcd`,`cntrt_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객접촉성공적재';
