--
-- Table structure for table `fin_wdrc_agre_dhaf_chk`
--

DROP TABLE IF EXISTS `fin_wdrc_agre_dhaf_chk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_wdrc_agre_dhaf_chk` (
  `iptdt` date NOT NULL COMMENT '입력일자',
  `rq_finm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '요청파일명',
  `dhaf_chk_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사후점검업무구분코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `dat_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터구분코드',
  `fn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관코드',
  `wdrc_agre_us_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의이용기관코드',
  `wdrc_agre_dat_sno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의데이터일련번호',
  `firm_re_sl_org_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FIRM재판매기관여부',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `t_rq_qant` decimal(15,0) DEFAULT NULL COMMENT '총요청수량',
  `wdrc_agre_rq_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의요청유형코드',
  `pyr_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납부자번호',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `wdrc_agre_srv_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의서비스종류코드',
  `wdrc_agre_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의자료구분코드',
  `rq_rst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청결과여부',
  `file_xts_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일확장자명',
  `dat_lngth` decimal(4,0) DEFAULT NULL COMMENT '데이터길이',
  `wdrc_agre_da_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의자료파일경로',
  `wdrc_agre_da_finm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의자료파일명',
  `trsdt` date DEFAULT NULL COMMENT '송신일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`iptdt`,`rq_finm`,`dhaf_chk_bsns_flgcd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출금동의사후점검';
