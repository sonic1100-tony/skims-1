--
-- Table structure for table `str_bzcs_ins_imcd`
--

DROP TABLE IF EXISTS `str_bzcs_ins_imcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_ins_imcd` (
  `bzcs_ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비보험종목코드',
  `bzcs_ins_imnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비보험종목명',
  `ins_itm_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목실체구분코드',
  `ordr_ordr` decimal(5,0) NOT NULL COMMENT '정렬순서',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bzcs_ins_imcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비보험종목코드';
