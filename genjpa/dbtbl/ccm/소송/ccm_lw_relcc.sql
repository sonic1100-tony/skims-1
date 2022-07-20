--
-- Table structure for table `ccm_lw_relcc`
--

DROP TABLE IF EXISTS `ccm_lw_relcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw_relcc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '소송일련번호',
  `lw_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '소송서열',
  `lw_relcc_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관련자고객번호',
  `lw_relcc_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관련자고객명',
  `lw_relcc_rgtdt` date NOT NULL COMMENT '소송관련자등록일자',
  `lw_relcc_jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관련자직업명',
  `xp_jgamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예상판결액',
  `end_pend_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '종결미결구분코드',
  `lw_relcc_pout_mtt` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관련자특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lw_relcc_00` (`lw_rcp_yr`,`lw_sno`,`lw_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송관련자';
