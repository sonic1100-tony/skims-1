--
-- Table structure for table `fin_fc_rm_rcpnt`
--

DROP TABLE IF EXISTS `fin_fc_rm_rcpnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fc_rm_rcpnt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpnt_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '수취인관리번호',
  `rm_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '송금방법코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `rtpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취인명',
  `rcpnt_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취인주소',
  `rcpnt_ntl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수취인국적구분코드',
  `rcpnt_ntlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취인국적코드',
  `rcpnt_ntl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취인국적명',
  `ovse_rqapl_rel_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '해외신청인관계구분코드',
  `ovse_rqapl_rel_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외신청인관계내용',
  `paym_bk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수취은행구분코드',
  `paym_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취은행코드',
  `paym_bknm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취은행명',
  `swf` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SWIFT',
  `paym_bk_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취은행주소',
  `rcpnt_ovse_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취인해외계좌번호',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `ovse_py_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외지급사유구분코드',
  `ovse_py_rs_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외지급사유내용',
  `wdrc_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금은행코드',
  `wdrc_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금계좌번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_fc_rm_rcpnt_00` (`rcpnt_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외화송금수취인';
