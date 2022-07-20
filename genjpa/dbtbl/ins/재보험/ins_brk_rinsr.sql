--
-- Table structure for table `ins_brk_rinsr`
--

DROP TABLE IF EXISTS `ins_brk_rinsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_brk_rinsr` (
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `brk_rinsr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자유형코드',
  `brk_rinnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자명',
  `rinsr_ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험자국가코드',
  `brk_rinsr_kornm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자국문명',
  `brk_rinsr_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자영문명',
  `mnbrn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본지점구분코드',
  `tl_ntnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국가번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작전화일련번호',
  `end_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '끝전화일련번호',
  `fx_ntnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX국가번호',
  `fx_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX지역번호',
  `fx_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX국번',
  `fx_str_sno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX시작일련번호',
  `fx_end_sno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX끝일련번호',
  `brk_rinsr_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자주소',
  `hmpag_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '홈페이지주소',
  `chaf_brk_rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후브로커재보험자코드',
  `chaf_brk_rinnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후브로커재보험자명',
  `ch_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경사유코드',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inr_brk_rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합브로커재보험자코드',
  `inr_brk_us_strdt` date DEFAULT NULL COMMENT '통합브로커사용시작일자',
  `inr_brk_us_nddt` date DEFAULT NULL COMMENT '통합브로커사용종료일자',
  `rm_bknm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금은행명',
  `rm_bk_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금은행계좌번호',
  `swf_cd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SWIFT코드',
  `rm_nots_mtt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`brk_rincd`),
  KEY `idx_ins_brk_rinsr_10` (`brk_rinsr_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='브로커재보험자';
