--
-- Table structure for table `ins_brk_rinsr_crddg`
--

DROP TABLE IF EXISTS `ins_brk_rinsr_crddg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_brk_rinsr_crddg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `rinsr_crd_vl_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자신용평가기관코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `crd_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용등급코드',
  `crd_grd_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용등급상태코드',
  `dmst_crd_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국내신용등급코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_brk_rinsr_crddg_00` (`brk_rincd`,`rinsr_crd_vl_orgcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=3444 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='브로커재보험자신용도';
