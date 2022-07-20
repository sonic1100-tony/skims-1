--
-- Table structure for table `igd_gd_relpc`
--

DROP TABLE IF EXISTS `igd_gd_relpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_relpc` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `relpc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자유형코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `relpc_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자등급코드',
  `essn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '필수여부',
  `scr_idc_ordr` decimal(5,0) NOT NULL DEFAULT '1' COMMENT '화면표시순서',
  `mx_relct` decimal(5,0) NOT NULL COMMENT '최대관계자수',
  `adr_adm_need_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '주소관리필요여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`rk_tpcd`,`relpc_tpcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품관계자';
