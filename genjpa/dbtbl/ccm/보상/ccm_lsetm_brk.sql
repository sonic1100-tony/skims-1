--
-- Table structure for table `ccm_lsetm_brk`
--

DROP TABLE IF EXISTS `ccm_lsetm_brk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lsetm_brk` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `lsetm_brk_seqno` decimal(3,0) NOT NULL COMMENT '손사브로커순번',
  `lsetm_brk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사브로커구분코드',
  `lsetm_brknm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '손사브로커명',
  `lsetm_brk_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사브로커고객번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전화일련번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `rvtdt` date DEFAULT NULL COMMENT '보정일자',
  `snrt_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '선임구분코드',
  `rgtno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '등록번호',
  `entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체명',
  `entp_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체전화지역번호',
  `entp_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체전화국번',
  `entp_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체전화일련번호',
  `rqudt` date DEFAULT NULL COMMENT '의뢰일자',
  `dlay_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lsetm_brk_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`lsetm_brk_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사브로커';
