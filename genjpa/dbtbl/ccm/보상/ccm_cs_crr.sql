--
-- Table structure for table `ccm_cs_crr`
--

DROP TABLE IF EXISTS `ccm_cs_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cs_crr` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cs_crr_seqno` decimal(3,0) NOT NULL COMMENT 'CS이력순번',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `cs_ntc_tp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CS안내유형코드',
  `cs_ntc_mtd_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CS안내방법코드',
  `cs_ntc_bj_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CS안내대상코드',
  `ctm_prpns_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객성향코드',
  `rmdy_ty_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치료형태코드',
  `no1_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번불만여부',
  `no2_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번불만여부',
  `no3_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번불만여부',
  `no4_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번불만여부',
  `no5_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5번불만여부',
  `no6_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '6번불만여부',
  `no7_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '7번불만여부',
  `no8_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '8번불만여부',
  `no9_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '9번불만여부',
  `no10_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '10번불만여부',
  `no11_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '11번불만여부',
  `no12_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '12번불만여부',
  `no13_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '13번불만여부',
  `no14_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '14번불만여부',
  `no15_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '15번불만여부',
  `no16_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '16번불만여부',
  `no17_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '17번불만여부',
  `no18_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '18번불만여부',
  `no19_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '19번불만여부',
  `no20_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '20번불만여부',
  `no21_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '21번불만여부',
  `no22_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '22번불만여부',
  `no23_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '23번불만여부',
  `no24_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '24번불만여부',
  `no25_cmpl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '25번불만여부',
  `chrps_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자의견',
  `memo_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모내용',
  `dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리여부',
  `cmp_dl_prg_pr_st_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상처리진행예정상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cs_crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='CS이력';
