--
-- Table structure for table `igd_ltrm_gd_rt_crr`
--

DROP TABLE IF EXISTS `igd_ltrm_gd_rt_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ltrm_gd_rt_crr` (
  `ltrm_rt_tabl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장기요율테이블구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ch_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '변경내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ltrm_rt_tabl_flgcd`,`gdcd`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기상품요율이력';
