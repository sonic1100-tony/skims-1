--
-- Table structure for table `cus_bzps_cntrt_bjps`
--

DROP TABLE IF EXISTS `cus_bzps_cntrt_bjps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bzps_cntrt_bjps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `bjps_seqno` decimal(3,0) NOT NULL COMMENT '대상자순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `cntrt_bjpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉대상자명',
  `cntrt_bjps_ptn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉대상자직위',
  `wpc_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장전화지역번호',
  `wpc_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장전화국번',
  `wpc_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장전화일련번호',
  `hp_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화지역번호',
  `hp_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화국번',
  `hp_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화일련번호',
  `fx_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX지역번호',
  `fx_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX국번',
  `fx_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX일련번호',
  `mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일아이디',
  `mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일도메인',
  `drct_inp_mail_domn_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직접입력이메일도메인명',
  `ch_dlno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경처리번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bzps_cntrt_bjps_00` (`ctmno`,`bjps_seqno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업자접촉대상자';
