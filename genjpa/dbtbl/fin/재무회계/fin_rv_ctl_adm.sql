--
-- Table structure for table `fin_rv_ctl_adm`
--

DROP TABLE IF EXISTS `fin_rv_ctl_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rv_ctl_adm` (
  `rv_cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '수납마감년월',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수납기관코드',
  `rv_ctl_ikdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수납통제보종코드',
  `rv_note_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수납금권유형코드',
  `rv_dp_clsdt` date DEFAULT NULL COMMENT '수납입금마감일자',
  `rv_clsdt` date DEFAULT NULL COMMENT '수납마감일자',
  `rv_cls_nd_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납마감종료시각',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rv_cls_yymm`,`rv_orgcd`,`rv_ctl_ikdcd`,`rv_note_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수납통제관리';
