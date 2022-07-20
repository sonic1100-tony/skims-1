--
-- Table structure for table `ins_mthy_re_prm_xc`
--

DROP TABLE IF EXISTS `ins_mthy_re_prm_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mthy_re_prm_xc` (
  `xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '정산번호',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `riamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험금액구분코드',
  `xaamt` decimal(17,2) NOT NULL COMMENT '정산금액',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무파일KEY',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산일계번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`xcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='월별출재보험료정산';
