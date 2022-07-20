--
-- Table structure for table `ins_rins_dcu_dt`
--

DROP TABLE IF EXISTS `ins_rins_dcu_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_dcu_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rins_dcu_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서번호',
  `rcv_plac_gp_seqno` decimal(5,0) NOT NULL COMMENT '수신처그룹순번',
  `dcu_dt_seqno` decimal(5,0) NOT NULL COMMENT '문서상세순번',
  `clm_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '사고접수번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rins_dcu_bsns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서업무유형코드',
  `instm_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목영문명',
  `ins_crt_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험계약자영문명',
  `clm_cas_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고원인영문명',
  `clm_plc_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고장소영문명',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보명',
  `oj_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물상세내용',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `vslnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선박명',
  `rert` decimal(12,6) DEFAULT NULL COMMENT '출재율',
  `dpcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발신자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_dcu_dt_00` (`rins_dcu_no`,`rcv_plac_gp_seqno`,`dcu_dt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험문서상세';
