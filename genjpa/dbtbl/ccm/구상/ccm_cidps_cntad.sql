--
-- Table structure for table `ccm_cidps_cntad`
--

DROP TABLE IF EXISTS `ccm_cidps_cntad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cidps_cntad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `cidps_cntad_seqno` decimal(3,0) NOT NULL COMMENT '피구상자연락처순번',
  `cnt_av_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '연락가능여부',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전화일련번호',
  `brd_tl_ntnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국전화국가번호',
  `brd_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국전화번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cidps_cntad_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`cidps_rank`,`cidps_cntad_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피구상자연락처';
