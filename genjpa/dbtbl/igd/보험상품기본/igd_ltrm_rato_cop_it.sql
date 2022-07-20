--
-- Table structure for table `igd_ltrm_rato_cop_it`
--

DROP TABLE IF EXISTS `igd_ltrm_rato_cop_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ltrm_rato_cop_it` (
  `ltrm_rt_tabl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장기요율테이블구분코드',
  `in_out_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT 'INOUT구분코드',
  `it_idc_ordr` decimal(3,0) NOT NULL COMMENT '항목표시순서',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `rt_itcd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '요율항목코드속성값',
  `rt_it_cdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '요율항목코드명',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ltrm_rt_tabl_flgcd`,`in_out_flgcd`,`it_idc_ordr`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기이율구성항목';
