--
-- Table structure for table `ins_inr_cr`
--

DROP TABLE IF EXISTS `ins_inr_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_inr_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `inr_cr_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통합계약자료구분코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `crt_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자고객번호',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `cr_dt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약세부상태코드',
  `st_chdt` date DEFAULT NULL COMMENT '상태변경일자',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본부기관코드',
  `aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지역단기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfcd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원코드',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `inr_naamt` decimal(15,0) DEFAULT NULL COMMENT '통합계약금액',
  `inr_cr_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합계약처리여부',
  `inr_cr_nt` decimal(15,0) DEFAULT NULL COMMENT '통합계약이자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_inr_cr_00` (`plyno`,`st_yymm`,`inr_cr_da_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합계약';
