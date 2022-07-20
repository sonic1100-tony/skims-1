--
-- Table structure for table `ins_gr_cr_ctm`
--

DROP TABLE IF EXISTS `ins_gr_cr_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gr_cr_ctm` (
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '단체고객번호',
  `gr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체구분코드',
  `bdl_pym_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄납입여부',
  `bdl_cm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄수금방법코드',
  `auto_tf_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체은행코드',
  `auto_tf_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체계좌번호',
  `auto_tf_dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체예금주명',
  `attf_dpsr_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체예금주주민번호',
  `nt_tf_hpdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이자이체희망일코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gr_ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='단체계약고객';
