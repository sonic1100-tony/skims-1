--
-- Table structure for table `ins_cmrat_crst`
--

DROP TABLE IF EXISTS `ins_cmrat_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmrat_crst` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `inq_stf_lvl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조회직원레벨구분코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `inq_mtd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조회방법구분코드',
  `tf_dcn_ct` decimal(7,0) NOT NULL COMMENT '이체확정건수',
  `tf_cm_ct` decimal(7,0) NOT NULL COMMENT '이체수금건수',
  `tf_dcn_prm` decimal(15,0) NOT NULL COMMENT '이체확정보험료',
  `tf_cm_prm` decimal(15,0) NOT NULL COMMENT '이체수금보험료',
  `crdtf_dcn_ct` decimal(7,0) NOT NULL COMMENT '카드이체확정건수',
  `crdtf_cm_ct` decimal(7,0) NOT NULL COMMENT '카드이체수금건수',
  `crdtf_dcn_prm` decimal(15,0) NOT NULL COMMENT '카드이체확정보험료',
  `crdtf_cm_prm` decimal(15,0) NOT NULL COMMENT '카드이체수금보험료',
  `vis_dcn_ct` decimal(7,0) NOT NULL COMMENT '방문확정건수',
  `vis_cm_ct` decimal(7,0) NOT NULL COMMENT '방문수금건수',
  `vis_dcn_prm` decimal(15,0) NOT NULL COMMENT '방문확정보험료',
  `vis_cm_prm` decimal(15,0) NOT NULL COMMENT '방문수금보험료',
  `gir_dcn_ct` decimal(7,0) NOT NULL COMMENT '지로확정건수',
  `gir_cm_ct` decimal(7,0) NOT NULL COMMENT '지로수금건수',
  `gir_dcn_prm` decimal(15,0) NOT NULL COMMENT '지로확정보험료',
  `gir_cm_prm` decimal(15,0) NOT NULL COMMENT '지로수금보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`inq_stf_lvl_flgcd`,`stfno`,`inq_mtd_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수금율현황'
