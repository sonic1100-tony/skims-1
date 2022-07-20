--
-- Table structure for table `ins_cmp_lmamt_pl`
--

DROP TABLE IF EXISTS `ins_cmp_lmamt_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmp_lmamt_pl` (
  `cmp_lmamt_pl_seqno` decimal(5,0) NOT NULL COMMENT '보상한도액설계순번',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `bn_lvlcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종레벨코드',
  `ins_btpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험업종코드',
  `lb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배상구분코드',
  `cmp_lmamt_untcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상한도금액단위코드',
  `amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금액구분코드',
  `pl_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '설계금액',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cmp_lmamt_pl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상한도액설계';
