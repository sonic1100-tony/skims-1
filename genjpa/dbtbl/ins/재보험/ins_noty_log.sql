--
-- Table structure for table `ins_noty_log`
--

DROP TABLE IF EXISTS `ins_noty_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_noty_log` (
  `noty_dt` date NOT NULL COMMENT '알림일자',
  `bsns_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무대분류코드',
  `noty_seqno` decimal(10,0) NOT NULL COMMENT '알림순번',
  `noty_bj_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '알림대상직원번호',
  `noty_ref_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알림참조대상구분코드',
  `noty_1_refno` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '알림1참조번호',
  `noty_2_refno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림2참조번호',
  `noty_3_refno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림3참조번호',
  `noty_4_refno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림4참조번호',
  `noty_5_refno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림5참조번호',
  `re_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재진행상태코드',
  `re_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재업무구분코드',
  `noty_msg` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림메시지',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`noty_dt`,`bsns_lclcd`,`noty_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='알림로그';
