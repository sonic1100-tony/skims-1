--
-- Table structure for table `ins_oj_accpt_plc`
--

DROP TABLE IF EXISTS `ins_oj_accpt_plc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_oj_accpt_plc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `accpt_plc_oj_seqno` decimal(5,0) NOT NULL COMMENT '수용장소목적물순번',
  `accpt_plc_seqno` decimal(5,0) NOT NULL COMMENT '수용장소순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `accpt_plc_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수용장소발생구분코드',
  `accpt_plc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수용장소구분코드',
  `fldst_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '야적물건구분코드',
  `undg_fl_accpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하층수용여부',
  `bnc_accpt_plc_1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방카수용장소1',
  `bnc_accpt_plc_2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방카수용장소2',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_oj_accpt_plc_00` (`plyno`,`oj_seqno`,`accpt_plc_oj_seqno`,`accpt_plc_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='목적물수용장소';
