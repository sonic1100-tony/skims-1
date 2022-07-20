--
-- Table structure for table `fin_bz_avtb_instm`
--

DROP TABLE IF EXISTS `fin_bz_avtb_instm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bz_avtb_instm` (
  `bz_avtb_acc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표계정구분코드',
  `bz_avtb_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표종류코드',
  `bz_avtb_ins_imcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표보험종목코드',
  `bz_avtb_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표상태코드',
  `idc_ordr` decimal(7,0) DEFAULT '0' COMMENT '표시순서',
  `lvl_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨분류코드',
  `ins_imnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목명',
  `lvl_1_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨1분류코드',
  `lvl_2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨2분류코드',
  `lvl_3_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨3분류코드',
  `lvl_4_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨4분류코드',
  `lvl_5_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨5분류코드',
  `lvl_6_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨6분류코드',
  `lvl_7_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨7분류코드',
  `lvl_8_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨8분류코드',
  `lvl_9_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨9분류코드',
  `lvl_10_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨10분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bz_avtb_acc_flgcd`,`bz_avtb_kndcd`,`bz_avtb_ins_imcd`,`bz_avtb_stcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업실적표보험종목';
