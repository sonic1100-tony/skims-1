--
-- Table structure for table `ccm_pstpo_snd_crr`
--

DROP TABLE IF EXISTS `ccm_pstpo_snd_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pstpo_snd_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `pstpo_seqno` decimal(3,0) NOT NULL COMMENT '우편물순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `pstpo_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '우편물종류코드',
  `pstpo_snd_no` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편물발송번호',
  `cmp_pstpo_snd_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상우편물발송상태코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `chrps_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자의견',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_pstpo_snd_crr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`pstpo_seqno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우편물발송이력';
