--
-- Table structure for table `lse_lsetm_bsns_tm_cs`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_tm_cs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_tm_cs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀기관코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비용구분코드',
  `clm_nv_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사종류코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `dpsr_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주주민사업자번호',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `cs_amt` decimal(17,2) DEFAULT NULL COMMENT '비용금액',
  `cs_cr_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비용발생업무구분코드',
  `cs_clc_stdy_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비용산정기준일구분코드',
  `py_dl_o2_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처리2차구분코드',
  `cs_ud_vl_rst` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비용심사평가결과',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_bsns_tm_cs_00` (`tm_orgcd`,`ikd_grpcd`,`cs_flgcd`,`clm_nv_kndcd`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무팀비용';
