--
-- Table structure for table `fin_wn_py_rq`
--

DROP TABLE IF EXISTS `fin_wn_py_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_wn_py_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ap_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '승인관리번호',
  `py_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급방법코드',
  `pydt` date NOT NULL COMMENT '지급일자',
  `pynct_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급금권유형코드',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금상대처코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `chk_wdrwl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수표인출증구분코드',
  `chk_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수표식별번호',
  `self_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '본인여부',
  `rcr_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '수령자주민번호',
  `rcr_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '수령자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_wn_py_rq_00` (`ap_admno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='창구지급요청';
