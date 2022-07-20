--
-- Table structure for table `lse_hlion_dt`
--

DROP TABLE IF EXISTS `lse_hlion_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hlion_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `glfcs_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '골프장명',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `hlion_no` decimal(3,0) DEFAULT NULL COMMENT '홀인원번호',
  `t_htct` decimal(7,0) DEFAULT NULL COMMENT '총타수',
  `cady_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캐디명',
  `no1_acpy_ps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번동반자명',
  `no2_acpy_ps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번동반자명',
  `no3_acpy_ps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번동반자명',
  `no4_acpy_ps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번동반자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hlion_dt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='홀인원상세';
