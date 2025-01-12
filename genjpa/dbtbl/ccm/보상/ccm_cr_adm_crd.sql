--
-- Table structure for table `ccm_cr_adm_crd`
--

DROP TABLE IF EXISTS `ccm_cr_adm_crd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_adm_crd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cr_adm_crd_seqno` decimal(3,0) NOT NULL COMMENT '차량관리카드순번',
  `cr_adm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차량관리구분코드',
  `ap_stdt` date NOT NULL COMMENT '적용기준일자',
  `dmgnj_crccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손상정도코드',
  `dmgnj_cncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손상내용코드',
  `dmgnj_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손상내용',
  `wrk_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업사유',
  `appr_st_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인정기준내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_adm_crd_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cr_adm_crd_seqno`,`cr_adm_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='차량관리카드';
