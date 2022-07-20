--
-- Table structure for table `str_sfrgl_chk_exec`
--

DROP TABLE IF EXISTS `str_sfrgl_chk_exec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_sfrgl_chk_exec` (
  `chk_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '점검년월',
  `sfrgl_domn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자율규제영역분류코드',
  `chk_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '점검기관코드',
  `chk_seq` decimal(5,0) NOT NULL COMMENT '점검회차',
  `wrt_dthms` datetime NOT NULL COMMENT '작성일시',
  `wrter_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작성자직원번호',
  `chk_strdt` date NOT NULL COMMENT '점검시작일자',
  `chk_nddt` date NOT NULL COMMENT '점검종료일자',
  `fnl_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종결재직원번호',
  `fnl_prvmn_psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종결재자소속기관코드',
  `fnl_prvdt` date DEFAULT NULL COMMENT '최종결재일자',
  `sfrgl_prv_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자율규제결재상태코드',
  `sfrgl_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자율규제문서아이디',
  `cmpln_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법감시직원번호',
  `cmpln_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법감시기관코드',
  `cmpln_cnfdt` date DEFAULT NULL COMMENT '준법감시확인일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`chk_yymm`,`sfrgl_domn_csfcd`,`chk_orgcd`,`chk_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자율규제점검수행';
