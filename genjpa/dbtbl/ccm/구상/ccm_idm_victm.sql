--
-- Table structure for table `ccm_idm_victm`
--

DROP TABLE IF EXISTS `ccm_idm_victm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_idm_victm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `idm_victm_seqno` decimal(3,0) NOT NULL COMMENT '구상피해자순번',
  `idm_victm_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '구상피해자상태코드',
  `idm_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '구상업무구분코드',
  `xp_rgt_dthms` datetime DEFAULT NULL COMMENT '예상등록일시',
  `cr_rgt_dthms` datetime DEFAULT NULL COMMENT '발생등록일시',
  `end_dthms` datetime DEFAULT NULL COMMENT '종결일시',
  `xtn_prsc_cpldt` date DEFAULT NULL COMMENT '소멸시효완료일자',
  `idm_xpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '구상예상금액',
  `idm_av_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상실적팀기관코드',
  `idmdm_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상피해담당자직원번호',
  `reqpl_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰처고객번호',
  `reqpl_cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '의뢰처협력업체순번',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `cmp_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상접수년월',
  `cmp_rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상접수조사순번',
  `cmp_dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상피해서열',
  `lsetm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사접수년월',
  `lsetm_rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사접수조사순번',
  `lsetm_clmps_seqno` decimal(3,0) DEFAULT NULL COMMENT '손사사고자순번',
  `lsetm_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사증권번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_idm_victm_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`clm_cvrcd`,`idm_victm_seqno`),
  KEY `idx_ccm_idm_victm_10` (`lsetm_rcp_yymm`,`lsetm_rcp_nv_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상피해자';
