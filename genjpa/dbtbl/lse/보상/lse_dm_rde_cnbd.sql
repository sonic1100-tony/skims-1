--
-- Table structure for table `lse_dm_rde_cnbd`
--

DROP TABLE IF EXISTS `lse_dm_rde_cnbd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dm_rde_cnbd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `cnbr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '기여자직원번호',
  `cnbd` decimal(5,2) NOT NULL COMMENT '기여도',
  `dm_rde_chrps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손해절감담당자구분코드',
  `cnbr_psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기여자소속기관코드',
  `cnb_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '기여내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dm_rde_cnbd_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`stfno`,`cnbr_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감기여도';
