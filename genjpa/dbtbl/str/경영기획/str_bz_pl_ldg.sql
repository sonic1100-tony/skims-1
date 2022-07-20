--
-- Table structure for table `str_bz_pl_ldg`
--

DROP TABLE IF EXISTS `str_bz_pl_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bz_pl_ldg` (
  `cy_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년월',
  `bz_pl_itcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획항목코드',
  `bz_pl_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획기관코드',
  `bz_pl_ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획보험종목코드',
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `cm_plamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월계획금액',
  `bfmm_cls_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월마감실적금액',
  `bfmm_av_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월실적누계금액',
  `cm_cls_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월마감실적금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yymm`,`bz_pl_itcd`,`bz_pl_orgcd`,`bz_pl_ins_imcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업계획원장';
