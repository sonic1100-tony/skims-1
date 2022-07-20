--
-- Table structure for table `ins_if_dmgrt_dt_spc`
--

DROP TABLE IF EXISTS `ins_if_dmgrt_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_if_dmgrt_dt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `rldgr_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대도세부구분코드',
  `rldgr_dt_flgnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대도세부구분명',
  `ordr_ordr` decimal(5,0) DEFAULT NULL COMMENT '정렬순서',
  `bdin_1_ap_vl` decimal(20,7) DEFAULT NULL COMMENT '대인1적용값',
  `bdin_2_ap_vl` decimal(20,7) DEFAULT NULL COMMENT '대인2적용값',
  `prdm_ap_vl` decimal(20,7) DEFAULT NULL COMMENT '대물적용값',
  `obi_ap_vl` decimal(20,7) DEFAULT NULL COMMENT '자손적용값',
  `unins_ap_vl` decimal(20,7) DEFAULT NULL COMMENT '무보험적용값',
  `owcr_ap_vl` decimal(20,7) DEFAULT NULL COMMENT '자차적용값',
  `trt_ap_vl` decimal(20,7) DEFAULT NULL COMMENT '특약적용값',
  `prm_trt_typ_vl` decimal(20,7) DEFAULT NULL COMMENT '보험료특약타입값',
  `fxrt_trt_typ_vl` decimal(20,7) DEFAULT NULL COMMENT '정율특약타입값',
  `fxamt_trt_typ_vl` decimal(20,7) DEFAULT NULL COMMENT '정액특약타입값',
  `cvrpr_trt_typ_vl` decimal(20,7) DEFAULT NULL COMMENT '담보성향특약타입값',
  `sm_ap_vl` decimal(20,7) DEFAULT NULL COMMENT '합계적용값',
  `atrvl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성값구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_if_dmgrt_dt_spc_00` (`plno`,`cgaf_ch_seqno`,`atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='추정손해율상세내역';
