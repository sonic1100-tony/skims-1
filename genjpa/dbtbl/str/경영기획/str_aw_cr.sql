--
-- Table structure for table `str_aw_cr`
--

DROP TABLE IF EXISTS `str_aw_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_aw_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `aw_cr_seqno` decimal(7,0) NOT NULL COMMENT '수당발생순번',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `aw_crdt` date DEFAULT NULL COMMENT '수당발생일자',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매유형코드',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_aw_cr_00` (`plyno`,`incm_prm_cr_seqno`,`aw_cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수당발생';
