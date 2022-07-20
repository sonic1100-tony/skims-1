--
-- Table structure for table `ccm_rccil_abd_adm`
--

DROP TABLE IF EXISTS `ccm_rccil_abd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rccil_abd_adm` (
  `rccil_abd_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '화해포기년도',
  `rccil_abd_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '화해포기일련번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `cidps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자명',
  `rq_sclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청범위코드',
  `rccil_abd_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화해포기사유코드',
  `idm_amt` decimal(15,0) DEFAULT '0' COMMENT '구상금액',
  `ntamt` decimal(15,0) DEFAULT '0' COMMENT '이자금액',
  `cs_amt` decimal(17,2) DEFAULT '0.00' COMMENT '비용금액',
  `rccil_abd_rqamt` decimal(15,0) DEFAULT '0' COMMENT '화해포기신청금액',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `repy_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변제방법코드',
  `repy_dt` date DEFAULT NULL COMMENT '변제일자',
  `sep_repy_mntct` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분할변제개월수',
  `sep_rpamt` decimal(15,0) DEFAULT '0' COMMENT '분할변제금액',
  `repy_man_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변제인구분코드',
  `md_abd_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정포기사유',
  `prv_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rccil_abd_yr`,`rccil_abd_sno`,`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화해포기관리';
