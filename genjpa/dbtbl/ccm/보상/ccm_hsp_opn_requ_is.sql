--
-- Table structure for table `ccm_hsp_opn_requ_is`
--

DROP TABLE IF EXISTS `ccm_hsp_opn_requ_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hsp_opn_requ_is` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `rmdy_crs_seqno` decimal(3,0) NOT NULL COMMENT '치료과정순번',
  `is_ordr` decimal(5,0) NOT NULL COMMENT '발급순차',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `dcu_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서기관코드',
  `dcu_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서년월',
  `dcu_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서일련번호',
  `opn_requ_seq` decimal(3,0) DEFAULT NULL COMMENT '소견의뢰회차',
  `victm_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자고객번호',
  `rmdy_nddt` date DEFAULT NULL COMMENT '치료종료일자',
  `is_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급담당자직원번호',
  `cmpu_isdt` date DEFAULT NULL COMMENT '전산발급일자',
  `form_is_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식발급구분코드',
  `form_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식구분코드',
  `hsp_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원기관코드',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hsp_opn_requ_is_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`rmdy_crs_seqno`,`is_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입원소견의뢰서발급';
