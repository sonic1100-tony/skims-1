--
-- Table structure for table `lse_issu_clm_admit`
--

DROP TABLE IF EXISTS `lse_issu_clm_admit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_issu_clm_admit` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `issu_clm_admit_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '문제사고관리항목순번',
  `issu_clm_admit_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문제사고관리항목구분코드',
  `issu_clm_adm_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '문제사고관리내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_issu_clm_admit_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`issu_clm_admit_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='문제사고관리항목';
