--
-- Table structure for table `fin_slp`
--

DROP TABLE IF EXISTS `fin_slp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_slp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `slp_prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표결재상태코드',
  `slp_prv_dthms` datetime DEFAULT NULL COMMENT '전표결재일시',
  `slp_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표결재직원번호',
  `cr_dl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생거래기관코드',
  `cr_deldt` date DEFAULT NULL COMMENT '발생거래일자',
  `cr_dlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생거래번호',
  `slp_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전표상태코드',
  `ers_dthms` datetime DEFAULT NULL COMMENT '삭제일시',
  `act_atrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회계속성코드',
  `hdcft_slp_prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수기전표결재상태코드',
  `elec_evd_img_bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자증빙이미지업무번호',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자결재문서아이디',
  `tacc_ldg_crt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총계정원장생성구분코드',
  `ifrs_slpdt` date DEFAULT NULL COMMENT 'IFRS전표일자',
  `ifrs_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IFRS전표번호',
  `act_ldg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '01' COMMENT '회계원장구분코드',
  `erp_ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ERP전송여부',
  `erp_tsdt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ERP전송일자',
  `erp_sync_ta_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ERP동시이관여부',
  `erp_slpno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ERP전표번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`,`st_yymm`),
  KEY `idx_fin_slp_01` (`slpdt`,`slpno`,`st_yymm`)
) ENGINE=InnoDB AUTO_INCREMENT=67012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전표'
