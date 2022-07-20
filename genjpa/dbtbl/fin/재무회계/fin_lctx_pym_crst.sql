--
-- Table structure for table `fin_lctx_pym_crst`
--

DROP TABLE IF EXISTS `fin_lctx_pym_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_lctx_pym_crst` (
  `rr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속년월',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `evdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '증빙번호',
  `jrd_uofcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관할관청코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `pymdt` date NOT NULL COMMENT '납부일자',
  `pym_bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '납부은행코드',
  `pym_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부금액',
  `dp_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '발의기관코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rr_yymm`,`ntacc_cd`,`evdno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지방세납부현황';
