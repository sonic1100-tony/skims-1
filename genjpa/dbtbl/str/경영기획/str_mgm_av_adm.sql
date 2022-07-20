--
-- Table structure for table `str_mgm_av_adm`
--

DROP TABLE IF EXISTS `str_mgm_av_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_mgm_av_adm` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `bz_adm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업관리구분코드',
  `bz_plcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획코드',
  `bz_pl_itcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획항목코드',
  `bz_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영업항목코드',
  `cm_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월발생금액',
  `cm_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월누계금액',
  `cm_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월원화잔액',
  `bfyy_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전년도발생금액',
  `bfyy_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전년도누계금액',
  `bfyy_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전년도원화잔액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`ikd_grpcd`,`ntacc_cd`,`bz_adm_flgcd`,`bz_plcd`,`bz_pl_itcd`,`bz_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='경영실적관리';
