--
-- Table structure for table `ccm_bd_par_dgn_it`
--

DROP TABLE IF EXISTS `ccm_bd_par_dgn_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_bd_par_dgn_it` (
  `dgn_parcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단부위코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `dgnnm` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '진단명',
  `inj_rnk` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '부상급수',
  `inj_it` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '부상항목',
  `main_dgn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '주요진단여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dgn_parcd`,`dgncd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신체부위진단항목';
