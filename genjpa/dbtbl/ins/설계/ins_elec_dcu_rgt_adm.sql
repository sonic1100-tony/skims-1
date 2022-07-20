--
-- Table structure for table `ins_elec_dcu_rgt_adm`
--

DROP TABLE IF EXISTS `ins_elec_dcu_rgt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_elec_dcu_rgt_adm` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `stdt` date NOT NULL COMMENT '기준일자',
  `img_dcu_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지문서분류코드',
  `img_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지등록여부',
  `ss_dthms` datetime DEFAULT NULL COMMENT '발행일시',
  `rgt_dthms` datetime DEFAULT NULL COMMENT '등록일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_elec_dcu_rgt_adm_00` (`plno`,`cgaf_ch_seqno`,`stdt`,`img_dcu_csfcd`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자문서등록관리';
