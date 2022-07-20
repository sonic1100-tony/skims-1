--
-- Table structure for table `fin_spcf_bsns_auth_adm`
--

DROP TABLE IF EXISTS `fin_spcf_bsns_auth_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_spcf_bsns_auth_adm` (
  `ac_spcf_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경리특정업무구분코드',
  `stdt` date NOT NULL COMMENT '기준일자',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `bj_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상기관코드',
  `bj_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상직원번호',
  `dl_psbdt` date DEFAULT NULL COMMENT '처리가능일자',
  `dl_av_str_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리가능시작시각',
  `dl_av_nd_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리가능종료시각',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '사용여부',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `dlgmg_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위임자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ac_spcf_bsns_flgcd`,`stdt`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특정업무권한관리';
