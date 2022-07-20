--
-- Table structure for table `ccm_obs_xmn`
--

DROP TABLE IF EXISTS `ccm_obs_xmn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_obs_xmn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `st_rptg_seqno` decimal(3,0) NOT NULL COMMENT '상태보고서순번',
  `xmn_dt` date DEFAULT NULL COMMENT '검토일자',
  `dgn_hsp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단병원고객번호',
  `isdt` date DEFAULT NULL COMMENT '발급일자',
  `ap_drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감정의사명',
  `hnd_ap_itmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애감정과목명',
  `obs_cn` varchar(400) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해내용',
  `md_cnst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료자문여부',
  `ntc_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내대상여부',
  `ntc_dt` date DEFAULT NULL COMMENT '안내일자',
  `xmn_ctn_memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검토의견메모',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_obs_xmn_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`st_rptg_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장해검토';
