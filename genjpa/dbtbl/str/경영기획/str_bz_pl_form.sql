--
-- Table structure for table `str_bz_pl_form`
--

DROP TABLE IF EXISTS `str_bz_pl_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bz_pl_form` (
  `bz_plcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획코드',
  `form_seq` decimal(3,0) NOT NULL COMMENT '양식회차',
  `bz_pl_itcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획항목코드',
  `it_lvl` decimal(3,0) NOT NULL COMMENT '항목레벨',
  `it_cc_metcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목산출방식코드',
  `ordr_ordr` decimal(5,0) NOT NULL COMMENT '정렬순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bz_plcd`,`form_seq`,`bz_pl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업계획양식';
