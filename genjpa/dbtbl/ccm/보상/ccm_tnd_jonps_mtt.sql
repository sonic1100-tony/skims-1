--
-- Table structure for table `ccm_tnd_jonps_mtt`
--

DROP TABLE IF EXISTS `ccm_tnd_jonps_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_tnd_jonps_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `tnddt` date DEFAULT NULL COMMENT '입찰일자',
  `tnd_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입찰시간',
  `tnd_dgre` decimal(3,0) NOT NULL COMMENT '입찰차수',
  `tnd_jonps_seqno` decimal(3,0) NOT NULL COMMENT '입찰참가자순번',
  `tnd_jonps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰참가자구분코드',
  `tndr_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰자성명',
  `tndr_tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰자전화지역번호',
  `tndr_tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰자전화국번',
  `tndr_tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰자전화일련번호',
  `tndr_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입찰자업체명',
  `tnamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '입찰금액',
  `pr_cmp_tnd_rt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '예정대비입찰비율',
  `bi_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '낙찰여부',
  `biamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '낙찰금액',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_tnd_jonps_mtt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`tnd_dgre`,`tnd_jonps_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입찰참가자사항';
