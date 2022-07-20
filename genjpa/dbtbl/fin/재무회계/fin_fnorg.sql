--
-- Table structure for table `fin_fnorg`
--

DROP TABLE IF EXISTS `fin_fnorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fnorg` (
  `fn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '금융기관코드',
  `fn_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관명',
  `fnorg_ofcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관점포명',
  `fn_org_prs_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관대표전화번호',
  `fxno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `fnorg_absnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관축약명',
  `fnorg_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`fn_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금융기관';
