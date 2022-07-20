--
-- Table structure for table `ins_cr_ud_it`
--

DROP TABLE IF EXISTS `ins_cr_ud_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_ud_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `ud_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사항목코드',
  `rq_numvl` decimal(17,4) DEFAULT NULL COMMENT '요청숫자값',
  `rq_chrvl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청문자값',
  `ap_numvl` decimal(17,4) DEFAULT NULL COMMENT '승인숫자값',
  `ap_chrvl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인문자값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_ud_it_00` (`udno`,`ndv_ud_seqno`,`ud_itcd`)
) ENGINE=InnoDB AUTO_INCREMENT=616 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차심사항목';
