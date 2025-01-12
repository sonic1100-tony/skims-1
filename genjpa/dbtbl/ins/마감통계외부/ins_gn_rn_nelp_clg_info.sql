--
-- Table structure for table `ins_gn_rn_nelp_clg_info`
--

DROP TABLE IF EXISTS `ins_gn_rn_nelp_clg_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gn_rn_nelp_clg_info` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `rn_rtro_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원수수재계약구분코드',
  `rertr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출수재구분코드',
  `cls_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `relpc_oj_seqno` decimal(10,0) NOT NULL COMMENT '관계자목적물순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ap_prm` decimal(17,2) DEFAULT NULL COMMENT '적용보험료',
  `acm_rpprm` decimal(17,2) DEFAULT NULL COMMENT '누적영수보험료',
  `nelp_prm` decimal(17,2) DEFAULT NULL COMMENT '미경과보험료',
  `woncr_ap_prm` decimal(15,0) DEFAULT NULL COMMENT '원화적용보험료',
  `woncr_acm_rpprm` decimal(15,0) DEFAULT NULL COMMENT '원화누적영수보험료',
  `woncr_nelp_prm` decimal(15,0) DEFAULT NULL COMMENT '원화미경과보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  PRIMARY KEY (`cls_yymm`,`rn_rtro_cr_flgcd`,`rertr_flgcd`,`cls_da_flgcd`,`plyno`,`ndsno`,`relpc_oj_seqno`,`cvrcd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반원수미경과결산정보'
