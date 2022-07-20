--
-- Table structure for table `igd_prnot_cop_elm`
--

DROP TABLE IF EXISTS `igd_prnot_cop_elm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_prnot_cop_elm` (
  `prnot_id` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물ID',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `prnot_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물명',
  `prnot_itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물품목코드',
  `prnot_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물설명',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`prnot_id`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출력물구성요소';
