--
-- Table structure for table `ccm_hira_paym_gu`
--

DROP TABLE IF EXISTS `ccm_hira_paym_gu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_paym_gu` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rq_seq` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '신청회차',
  `hsp_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원기관코드',
  `hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원명',
  `hsp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원고객번호',
  `vicnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자명',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `sno_seqno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일련번호순번',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `clm_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고차량번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `cpent_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체담당자명',
  `is_bj_hsp_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상병원전화지역번호',
  `is_bj_hsp_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상병원전화국번',
  `is_bj_hsp_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상병원전화일련번호',
  `hira_rq_chk_rstcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원신청점검결과코드',
  `snddt` date DEFAULT NULL COMMENT '발송일자',
  `snd_dthms` datetime DEFAULT NULL COMMENT '발송일시',
  `py_gu_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급보증번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_paym_gu_00` (`rcp_yymm`,`rcp_nv_seqno`,`rq_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원지불보증';
