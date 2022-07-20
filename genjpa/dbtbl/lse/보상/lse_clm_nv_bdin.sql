--
-- Table structure for table `lse_clm_nv_bdin`
--

DROP TABLE IF EXISTS `lse_clm_nv_bdin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_nv_bdin` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `fsvs_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금감원병원구분코드',
  `hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원명',
  `auili_srtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수상레저기구코드',
  `auili_rsvyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수상레저예약여부',
  `cg_prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요금결재구분코드',
  `nrdps_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자직업코드',
  `nrdps_jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자직업명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_nv_bdin_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사대인';
