--
-- Table structure for table `ins_udwr`
--

DROP TABLE IF EXISTS `ins_udwr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_udwr` (
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '심사직원번호',
  `ud_pl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사설계구분코드',
  `ud_prio_rancd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사우선순위코드',
  `udlmi_tp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수제한유형구분코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `as_autcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배정권한코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ud_stfno`,`ud_pl_flgcd`,`ud_prio_rancd`,`udlmi_tp_flgcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사자';
