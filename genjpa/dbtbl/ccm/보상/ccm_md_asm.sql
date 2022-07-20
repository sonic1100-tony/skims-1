--
-- Table structure for table `ccm_md_asm`
--

DROP TABLE IF EXISTS `ccm_md_asm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_md_asm` (
  `md_asmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료보조기코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `wear_parcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '착용부위코드',
  `md_asmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '의료보조기명',
  `syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급가액',
  `md_asm_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료보조기영문명',
  `md_asm_use` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '의료보조기용도',
  `endrc_yyprd` decimal(5,0) NOT NULL COMMENT '내구년한',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`md_asmcd`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료보조기';
