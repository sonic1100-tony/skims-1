--
-- Table structure for table `gea_ase_prprt_nv_schd`
--

DROP TABLE IF EXISTS `gea_ase_prprt_nv_schd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_prprt_nv_schd` (
  `prprt_nv_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '재물조사년월',
  `prprt_nv_strdt` date NOT NULL COMMENT '재물조사시작일자',
  `prprt_nv_nddt` date NOT NULL COMMENT '재물조사종료일자',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '등록직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`prprt_nv_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산재물조사일정';
