--
-- Table structure for table `ins_pl_cvr_isamt_cl_prm`
--

DROP TABLE IF EXISTS `ins_pl_cvr_isamt_cl_prm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cvr_isamt_cl_prm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_spqu_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '담보특성구분코드',
  `isamt_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입금액코드',
  `ap_prm` decimal(17,2) NOT NULL COMMENT '적용보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pl_cvr_isamt_cl_prm_00` (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_spqu_flgcd`,`isamt_cd`)
) ENGINE=InnoDB AUTO_INCREMENT=694 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계담보가입금액별보험료';
