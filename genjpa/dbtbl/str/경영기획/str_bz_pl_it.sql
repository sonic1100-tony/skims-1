--
-- Table structure for table `str_bz_pl_it`
--

DROP TABLE IF EXISTS `str_bz_pl_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bz_pl_it` (
  `bz_pl_itcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획항목코드',
  `bz_pl_itnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획항목명',
  `bz_pl_it_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업계획항목설명',
  `bz_pl_itcal_ordr` decimal(3,0) NOT NULL COMMENT '사업계획항목계산순서',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `bz_plcd` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업계획코드',
  `bz_pl_acc_itcd` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업계획계정항목코드',
  `adm_it_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리항목여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bz_pl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업계획항목';
