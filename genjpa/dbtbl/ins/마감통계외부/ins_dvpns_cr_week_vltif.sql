--
-- Table structure for table `ins_dvpns_cr_week_vltif`
--

DROP TABLE IF EXISTS `ins_dvpns_cr_week_vltif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_cr_week_vltif` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `menu_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '메뉴구분코드',
  `crdt` date NOT NULL COMMENT '발생일자',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `vlt_seqno` decimal(3,0) NOT NULL COMMENT '위반순번',
  `oper_vltdt` date DEFAULT NULL COMMENT '운행위반일자',
  `oper_vlt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운행위반유형코드',
  `vlt_oper_dst` decimal(7,1) DEFAULT NULL COMMENT '위반운행거리',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dvpns_cr_week_vltif_00` (`plyno`,`menu_flgcd`,`crdt`,`cr_seqno`,`vlt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원승용차요일위반정보';
