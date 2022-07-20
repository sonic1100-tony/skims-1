--
-- Table structure for table `gea_rnt_rstm_bnd_vl`
--

DROP TABLE IF EXISTS `gea_rnt_rstm_bnd_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rnt_rstm_bnd_vl` (
  `rstm_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '부동산등록번호',
  `bnd_es_rank` decimal(5,0) NOT NULL COMMENT '채권설정순위',
  `bnd_esrgp_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '채권설정권자명',
  `prs_mvi_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표입주기관코드',
  `thcp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사여부',
  `bnd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채권구분코드',
  `bld_esamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '건물설정금액',
  `land_esamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '토지설정금액',
  `hot_rgtno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임대차등록번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rstm_rgtno`,`bnd_es_rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='임차부동산채권평가';
