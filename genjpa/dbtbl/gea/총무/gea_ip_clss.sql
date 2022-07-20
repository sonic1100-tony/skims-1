--
-- Table structure for table `gea_ip_clss`
--

DROP TABLE IF EXISTS `gea_ip_clss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ip_clss` (
  `ip_a_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피A클래스',
  `ip_b_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피B클래스',
  `ip_c_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피C클래스',
  `ip_d_clss_strno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피D클래스시작번호',
  `ip_d_clss_ndno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피D클래스종료번호',
  `vpn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'VPN구분코드',
  `gwno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '게이트웨이번호',
  `pst_adm_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '거점관리여부',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ip_a_clss`,`ip_b_clss`,`ip_c_clss`,`ip_d_clss_strno`,`ip_d_clss_ndno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='아이피클래스';
