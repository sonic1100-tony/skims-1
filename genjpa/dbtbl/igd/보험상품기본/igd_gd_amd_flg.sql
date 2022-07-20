--
-- Table structure for table `igd_gd_amd_flg`
--

DROP TABLE IF EXISTS `igd_gd_amd_flg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_amd_flg` (
  `gd_admcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품관리코드',
  `gd_adm_seqno` decimal(7,0) NOT NULL COMMENT '상품관리순번',
  `adm_gd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리상품구분코드',
  `ins_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험군코드',
  `gd_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품분류코드',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `vald_strdt` date DEFAULT NULL COMMENT '유효시작일자',
  `vald_nddt` date DEFAULT NULL COMMENT '유효종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gd_admcd`,`gd_adm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품관리구분';
