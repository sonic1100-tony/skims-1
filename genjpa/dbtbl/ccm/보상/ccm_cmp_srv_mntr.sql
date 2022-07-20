--
-- Table structure for table `ccm_cmp_srv_mntr`
--

DROP TABLE IF EXISTS `ccm_cmp_srv_mntr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cmp_srv_mntr` (
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `mntr_flg_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링구분코드',
  `mntr_qust_tp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문유형코드',
  `mntr_qust_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문구분코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원명',
  `pln_mvops_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현장출동자구분코드',
  `rpair_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리업체명',
  `mntr_dthms` datetime DEFAULT NULL COMMENT '모니터링일시',
  `mntr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모니터링직원번호',
  `mntr_recal_flg_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모니터링리콜구분코드',
  `mntr_call_flg_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모니터링콜구분코드',
  `snd_dthms` datetime DEFAULT NULL COMMENT '발송일시',
  `victm_gd_nm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자물명',
  `enddt` date DEFAULT NULL COMMENT '종결일자',
  `rcvnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자명',
  `rst_poct` decimal(10,2) DEFAULT NULL COMMENT '결과점수',
  `gpc_xstf_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그룹사임직원관계코드',
  `nsccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계열사코드',
  `nsc_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계열사명',
  `ptn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직위',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adm_yymm`,`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`mntr_flg_cd`,`mntr_qust_tp_cd`,`mntr_qust_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상서비스모니터링';
