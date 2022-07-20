--
-- Table structure for table `aud_rtx_us_info`
--

DROP TABLE IF EXISTS `aud_rtx_us_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_rtx_us_info` (
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증종류코드',
  `rtx_ss_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증발행년도',
  `rtx_bk_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증책일련번호',
  `tgnrt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총괄기관코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관코드',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `rpdt` date DEFAULT NULL COMMENT '영수일자',
  `rvdt` date DEFAULT NULL COMMENT '수납일자',
  `prm` decimal(17,2) DEFAULT NULL COMMENT '보험료',
  `pym_seq` decimal(5,0) DEFAULT NULL COMMENT '납입회차',
  `pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입년월',
  `rtx_plyno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증증권번호',
  `rtx_plyno_dgre` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증증권번호차수',
  `rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민사업자번호',
  `ins_strdt` date DEFAULT NULL COMMENT '보험시작일자',
  `ins_nddt` date DEFAULT NULL COMMENT '보험종료일자',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `us_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rtx_kndcd`,`rtx_ss_yr`,`rtx_bk_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증사용정보';
