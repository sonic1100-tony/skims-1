--
-- Table structure for table `ins_pl_cvr_cv_rq`
--

DROP TABLE IF EXISTS `ins_pl_cvr_cv_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cvr_cv_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `cv_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '전환담보코드',
  `cv_prdt` date NOT NULL COMMENT '전환예정일자',
  `cv_isamt` decimal(15,0) NOT NULL COMMENT '전환가입금액',
  `cv_isamt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전환가입금액코드',
  `cv_ndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전환만기코드',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_cvr_cv_rq_00` (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계담보전환신청';
