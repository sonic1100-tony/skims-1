--
-- Table structure for table `str_cscl_rcv_rtn_cr_spc`
--

DROP TABLE IF EXISTS `str_cscl_rcv_rtn_cr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_cscl_rcv_rtn_cr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rcv_cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '환수마감년월',
  `rcv_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환수방법코드',
  `aw_cr_seqno` decimal(7,0) NOT NULL COMMENT '수당발생순번',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_cscl_rcv_rtn_cr_spc_00` (`plyno`,`rcv_cls_yymm`,`rcv_mtdcd`,`aw_cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='건별환수환급발생내역';
