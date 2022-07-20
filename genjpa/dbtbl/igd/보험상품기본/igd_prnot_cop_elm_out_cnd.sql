--
-- Table structure for table `igd_prnot_cop_elm_out_cnd`
--

DROP TABLE IF EXISTS `igd_prnot_cop_elm_out_cnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_prnot_cop_elm_out_cnd` (
  `prnot_id` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물ID',
  `out_cnd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출력조건구분코드',
  `gd_sys_atr_ennm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상품시스템속성영문명',
  `out_cnd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '출력조건속성값',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `out_ordr` decimal(5,0) NOT NULL COMMENT '출력순서',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`prnot_id`,`out_cnd_flgcd`,`gd_sys_atr_ennm`,`out_cnd_atrvl`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출력물구성요소출력조건';
