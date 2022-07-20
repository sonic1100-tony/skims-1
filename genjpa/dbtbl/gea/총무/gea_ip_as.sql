--
-- Table structure for table `gea_ip_as`
--

DROP TABLE IF EXISTS `gea_ip_as`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ip_as` (
  `ip_a_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피A클래스',
  `ip_b_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피B클래스',
  `ip_c_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피C클래스',
  `ip_d_clss_strno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피D클래스시작번호',
  `ip_d_clss_ndno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피D클래스종료번호',
  `ip_sno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피일련번호',
  `as_bj_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배정대상실체구분코드',
  `as_ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '배정적용종료일자',
  `as_ap_strdt` date NOT NULL COMMENT '배정적용시작일자',
  `as_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배정대상구분코드',
  `as_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '배정기관코드',
  `as_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배정직원번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ip_a_clss`,`ip_b_clss`,`ip_c_clss`,`ip_d_clss_strno`,`ip_d_clss_ndno`,`ip_sno`,`as_bj_ntty_flgcd`,`as_ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='아이피배정';
