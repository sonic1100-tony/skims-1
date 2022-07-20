--
-- Table structure for table `gea_scil_ctd_act`
--

DROP TABLE IF EXISTS `gea_scil_ctd_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_scil_ctd_act` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctvno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '활동번호',
  `act_strdt` date NOT NULL COMMENT '활동시작일자',
  `act_nddt` date NOT NULL COMMENT '활동종료일자',
  `actnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '활동명',
  `act_hms` decimal(4,0) NOT NULL DEFAULT '0' COMMENT '활동시간',
  `act_plc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '활동장소',
  `act_bjpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '활동대상코드',
  `act_spc` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '활동내역',
  `xcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '집행금액',
  `xc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '집행구분코드',
  `xc_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '집행형태코드',
  `xc_bsc_da_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '집행근거자료내용',
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `orgn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조직기관코드',
  `pgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '프로그램코드',
  `rq_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신청상태코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) DEFAULT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) DEFAULT NULL COMMENT '신청내역순번',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_scil_ctd_act_00` (`ctvno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사회공헌활동';
