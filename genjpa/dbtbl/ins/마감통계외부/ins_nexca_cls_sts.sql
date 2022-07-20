--
-- Table structure for table `ins_nexca_cls_sts`
--

DROP TABLE IF EXISTS `ins_nexca_cls_sts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nexca_cls_sts` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `rtamt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환급금유형코드',
  `bfmm_remn_ct` decimal(5,0) DEFAULT NULL COMMENT '전월잔여건수',
  `bfmm_tblam` decimal(15,0) DEFAULT NULL COMMENT '전월잔액',
  `cm_nwct` decimal(5,0) DEFAULT NULL COMMENT '당월신규건수',
  `cm_nw_amt` decimal(15,0) DEFAULT NULL COMMENT '당월신규금액',
  `cm_xc_ct` decimal(5,0) DEFAULT NULL COMMENT '당월정산건수',
  `cm_xaamt` decimal(15,0) DEFAULT NULL COMMENT '당월정산금액',
  `cm_remn_ct` decimal(5,0) DEFAULT NULL COMMENT '당월잔여건수',
  `cm_tblam` decimal(15,0) DEFAULT NULL COMMENT '당월잔액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`rtamt_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='미정산마감통계';
