--
-- Table structure for table `fin_bzwpl`
--

DROP TABLE IF EXISTS `fin_bzwpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bzwpl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bzwpl_bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업장사업자번호',
  `kornm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '한글명',
  `hngl_prtnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글인쇄명',
  `ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문명',
  `eng_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문주소',
  `bzwpl_strdt` date NOT NULL COMMENT '사업장시작일자',
  `bzwpl_clodt` date DEFAULT NULL COMMENT '사업장폐쇄일자',
  `hdof_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '본사여부',
  `tgnrt_pym_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총괄납부대상여부',
  `bzps_bstnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자업태명',
  `bzps_imnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자종목명',
  `jrd_txonm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관할세무서명',
  `crpno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인번호',
  `prs_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '대표기관코드',
  `tx_bj_bzwpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과세대상사업장여부',
  `jrd_txocd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관할세무서코드',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금상대처코드',
  `tlno_info` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호정보',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bzwpl_00` (`bzwpl_bzmno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업장';
