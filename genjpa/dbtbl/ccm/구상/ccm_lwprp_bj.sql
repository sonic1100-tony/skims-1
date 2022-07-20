--
-- Table structure for table `ccm_lwprp_bj`
--

DROP TABLE IF EXISTS `ccm_lwprp_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lwprp_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `lwprp_sno` decimal(5,0) NOT NULL COMMENT '소제기일련번호',
  `lwprp_rq_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '소제기요청내용',
  `lwprp_pout_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소제기특이사항',
  `lwprp_rq_dthms` datetime NOT NULL COMMENT '소제기요청일시',
  `lwprp_rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '소제기요청직원번호',
  `lwprp_rq_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소제기요청기관코드',
  `lwprp_rq_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소제기요청팀기관코드',
  `lwprp_retn_dthms` datetime DEFAULT NULL COMMENT '소제기반려일시',
  `lwprp_rcv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소제기수신직원번호',
  `retn_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반려사유',
  `lw_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송종류코드',
  `clsdt` date DEFAULT NULL COMMENT '마감일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lwprp_bj_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`lwprp_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소제기대상';
