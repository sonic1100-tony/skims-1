--
-- Table structure for table `ins_dln_pout_mtt`
--

DROP TABLE IF EXISTS `ins_dln_pout_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dln_pout_mtt` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `pout_mtt_seqno` decimal(5,0) NOT NULL COMMENT '특이사항순번',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `crtdt` date DEFAULT NULL COMMENT '생성일자',
  `crtr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생성자명',
  `gd_flg_spc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품구분내역',
  `pout_spc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이내역',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`pout_mtt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래선특이사항';
