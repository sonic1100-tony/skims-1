--
-- Table structure for table `ins_cr_ud_udrtk_bltgu_cn`
--

DROP TABLE IF EXISTS `ins_cr_ud_udrtk_bltgu_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_ud_udrtk_bltgu_cn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `cn_seqno` decimal(5,0) NOT NULL COMMENT '내용순번',
  `udrtk_vltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수위배코드',
  `vlt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배내용',
  `vlt_ipan_cn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배함축내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_ud_udrtk_bltgu_cn_00` (`udno`,`ndv_ud_seqno`,`cn_seqno`,`udrtk_vltcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차심사인수지침위배내용';
