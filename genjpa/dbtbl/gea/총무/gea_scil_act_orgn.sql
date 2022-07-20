--
-- Table structure for table `gea_scil_act_orgn`
--

DROP TABLE IF EXISTS `gea_scil_act_orgn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_scil_act_orgn` (
  `orgn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조직기관코드',
  `ornnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '조직명',
  `orgn_stbdt` date NOT NULL COMMENT '조직개설일자',
  `orgn_clodt` date NOT NULL COMMENT '조직폐쇄일자',
  `orgn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조직구분코드',
  `act_ledno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '활동단장번호',
  `act_mgno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '활동간사번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `ppr_orgn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위조직기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`orgn_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사회활동조직';
