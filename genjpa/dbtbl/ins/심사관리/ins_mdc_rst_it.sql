--
-- Table structure for table `ins_mdc_rst_it`
--

DROP TABLE IF EXISTS `ins_mdc_rst_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mdc_rst_it` (
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `requ_seqno` decimal(5,0) NOT NULL COMMENT '의뢰순번',
  `mdc_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '검진항목구분코드',
  `mdc_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '검진항목코드',
  `mdc_it_seqno` decimal(5,0) NOT NULL DEFAULT '1' COMMENT '검진항목순번',
  `mdc_itvl` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '검진항목값',
  `mdc_it_nml_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검진항목정상여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`udno`,`ndv_ud_seqno`,`requ_seqno`,`mdc_it_flgcd`,`mdc_itcd`,`mdc_it_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='검진결과항목';
