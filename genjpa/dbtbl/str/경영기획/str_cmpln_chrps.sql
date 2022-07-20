--
-- Table structure for table `str_cmpln_chrps`
--

DROP TABLE IF EXISTS `str_cmpln_chrps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_cmpln_chrps` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `cmpln_chr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '준법감시담당상태코드',
  `apodt` date NOT NULL COMMENT '위촉일자',
  `cmpln_adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '준법감시관리기관코드',
  `psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '소속기관코드',
  `clpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직급코드',
  `lwad_part_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법부문구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='준법감시담당자';
