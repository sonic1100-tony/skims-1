--
-- Table structure for table `lse_lsetm_opcd_adm`
--

DROP TABLE IF EXISTS `lse_lsetm_opcd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_opcd_adm` (
  `opcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수술코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `op_kornm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술한글명',
  `op_ennm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술영문명',
  `lcl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대분류구분코드',
  `op_mdcl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술중분류구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`opcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사수술코드관리';
