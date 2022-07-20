--
-- Table structure for table `cus_ctm_ntn`
--

DROP TABLE IF EXISTS `cus_ctm_ntn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_ntn` (
  `ntncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '국가코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `hngl_ntnnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글국가명',
  `eng_ntnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문국가명',
  `dl_rj_ntn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래거절국가여부',
  `oecd_ntn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OECD국가여부',
  `hgrk_ntn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고위험국가여부',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ntncd`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객국가';
