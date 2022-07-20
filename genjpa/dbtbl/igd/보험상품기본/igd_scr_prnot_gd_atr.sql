--
-- Table structure for table `igd_scr_prnot_gd_atr`
--

DROP TABLE IF EXISTS `igd_scr_prnot_gd_atr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_scr_prnot_gd_atr` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `atr_use_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성용도구분코드',
  `gd_sys_atr_ennm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상품시스템속성영문명',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `gd_sys_atr_ncknm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품시스템속성별명',
  `scr_us_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면사용구분코드',
  `out_us_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력사용구분코드',
  `idc_ordr` decimal(7,0) NOT NULL COMMENT '표시순서',
  `atr_prmvl` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성허용값',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`atr_use_flgcd`,`gd_sys_atr_ennm`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화면출력물상품속성';
