--
-- Table structure for table `fin_mnts_prm`
--

DROP TABLE IF EXISTS `fin_mnts_prm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_mnts_prm` (
  `crtdt` date NOT NULL COMMENT '생성일자',
  `gu_cr_slpno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '구발생전표번호',
  `stdt` date NOT NULL COMMENT '기준일자',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장종류코드',
  `dp_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금종류코드',
  `dp_dp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금입금구분코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `deldt` date DEFAULT NULL COMMENT '거래일자',
  `sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일련번호',
  `dl_hms` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래시각',
  `dprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자명',
  `woamt` decimal(15,0) DEFAULT NULL COMMENT '원화금액',
  `fcamt` decimal(17,2) DEFAULT NULL COMMENT '외화금액',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `dh_offc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급점포기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`crtdt`,`gu_cr_slpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가수보험료';
