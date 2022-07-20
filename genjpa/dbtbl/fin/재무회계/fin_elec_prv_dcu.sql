--
-- Table structure for table `fin_elec_prv_dcu`
--

DROP TABLE IF EXISTS `fin_elec_prv_dcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_elec_prv_dcu` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '전자결재문서아이디',
  `elec_prv_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전자결재문서구분코드',
  `wrt_dthms` datetime NOT NULL COMMENT '작성일시',
  `wrter_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작성자직원번호',
  `wrter_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '작성자팀기관코드',
  `fnl_prv_cplt_dthms` datetime NOT NULL COMMENT '최종결재완료일시',
  `fnl_prv_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '최종결재직원번호',
  `fnl_prvmn_psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '최종결재자소속기관코드',
  `elec_prv_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전자결재상태코드',
  `elec_prv_dcuno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '전자결재문서번호',
  `elec_prv_dcu_titl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '전자결재문서제목',
  `evdno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙번호',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표라인번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_elec_prv_dcu_00` (`elec_prv_dcu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자결재문서';
