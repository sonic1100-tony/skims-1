--
-- Table structure for table `str_sfrgl_chk_it`
--

DROP TABLE IF EXISTS `str_sfrgl_chk_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_sfrgl_chk_it` (
  `sfrgl_domn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자율규제영역분류코드',
  `sfrgl_chk_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자율규제점검항목코드',
  `sfrgl_chk_it_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자율규제점검항목분류코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `chk_itlvl` decimal(1,0) NOT NULL COMMENT '점검항목레벨',
  `it_idc_ordr` decimal(3,0) NOT NULL COMMENT '항목표시순서',
  `chk_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '점검내용',
  `sfrgl_ppr_chk_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자율규제상위점검항목코드',
  `sfrgl_ppr_chk_slcvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자율규제상위점검선택값',
  `chk_rst_slc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '점검결과선택유형코드',
  `slcvl_gpno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택값그룹번호',
  `mng_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`sfrgl_domn_csfcd`,`sfrgl_chk_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자율규제점검항목';
