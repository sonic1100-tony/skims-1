--
-- Table structure for table `ins_pl_udrtk_bltgu_prv`
--

DROP TABLE IF EXISTS `ins_pl_udrtk_bltgu_prv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_udrtk_bltgu_prv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cn_seqno` decimal(5,0) NOT NULL COMMENT '내용순번',
  `udrtk_vltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수위배코드',
  `prvln_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재선종류코드',
  `o1_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재직원번호',
  `o1_prv_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재결과코드',
  `o1_prv_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재의견',
  `o1_prvdt` date DEFAULT NULL COMMENT '1차결재일자',
  `o2_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재직원번호',
  `o2_prv_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재결과코드',
  `o2_prv_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재의견',
  `o2_prvdt` date DEFAULT NULL COMMENT '2차결재일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_udrtk_bltgu_prv_00` (`plno`,`cgaf_ch_seqno`,`cn_seqno`,`udrtk_vltcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계인수지침위배결재';
