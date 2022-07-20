--
-- Table structure for table `str_org_csf`
--

DROP TABLE IF EXISTS `str_org_csf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_org_csf` (
  `pr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예정마감구분코드',
  `ppr_bzcs_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '상위사업비기관코드',
  `sbd_bzcs_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '하위사업비기관코드',
  `ap_nd_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL DEFAULT '999912' COMMENT '적용종료년월',
  `ap_str_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '적용시작년월',
  `coprt_cc_rk` decimal(5,0) DEFAULT NULL COMMENT '구성비산출단계',
  `coprt_cc_rk_seqno` decimal(5,0) DEFAULT NULL COMMENT '구성비산출단계순번',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`pr_cls_flgcd`,`ppr_bzcs_orgcd`,`sbd_bzcs_orgcd`,`ap_nd_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기관분류';
