--
-- Table structure for table `ccm_cmp_srv_mntr_dt`
--

DROP TABLE IF EXISTS `ccm_cmp_srv_mntr_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cmp_srv_mntr_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `mntr_flg_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링구분코드',
  `mntr_qust_tp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문유형코드',
  `mntr_qust_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문구분코드',
  `mntr_chk_it_no` decimal(3,0) NOT NULL COMMENT '모니터링점검항목번호',
  `mntr_chk_it_seqno` decimal(3,0) NOT NULL COMMENT '모니터링점검항목순번',
  `mntr_chk_it_flg_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모니터링점검항목구분코드',
  `mntr_chk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모니터링점검여부',
  `mntr_chk_poct` decimal(3,0) DEFAULT NULL COMMENT '모니터링점검점수',
  `mntr_chk_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모니터링점검내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cmp_srv_mntr_dt_00` (`adm_yymm`,`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`mntr_flg_cd`,`mntr_qust_tp_cd`,`mntr_qust_flgcd`,`mntr_chk_it_no`,`mntr_chk_it_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상서비스모니터링상세';
