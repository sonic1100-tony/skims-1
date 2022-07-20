--
-- Table structure for table `ccm_siu_coonv_sptps`
--

DROP TABLE IF EXISTS `ccm_siu_coonv_sptps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_coonv_sptps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nv_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '조사년도',
  `bscrl_coonv_seqno` decimal(10,0) NOT NULL COMMENT '업계공동조사순번',
  `siu_inp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU입력구분코드',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `sptps_seqno` decimal(5,0) NOT NULL COMMENT '혐의자순번',
  `ins_itm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목구분코드',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `clmps_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `inssw_relcc_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기관련자주민사업자번호',
  `inssw_relnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기관련자명',
  `jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업명',
  `dramt` decimal(15,0) DEFAULT NULL COMMENT '편취금액',
  `rcamt` decimal(15,0) DEFAULT NULL COMMENT '환수금액',
  `rcv_dt` date DEFAULT NULL COMMENT '환수일자',
  `psc_pcenm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰서명',
  `clm_cmlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고형제번호',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `rulng_cnfdt` date DEFAULT NULL COMMENT '판결문확인일자',
  `coonv_jg_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공동조사판결결과코드',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `just_rq_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재판요청결과코드',
  `prg_rnd_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진행경과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_siu_coonv_sptps_00` (`nv_yr`,`bscrl_coonv_seqno`,`siu_inp_flgcd`,`ch_seqno`,`sptps_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU공동조사혐의자';
