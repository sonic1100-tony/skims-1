--
-- Table structure for table `gea_ip`
--

DROP TABLE IF EXISTS `gea_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ip` (
  `ip_a_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피A클래스',
  `ip_b_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피B클래스',
  `ip_c_clss` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피C클래스',
  `ip_sno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '아이피일련번호',
  `rsc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리소스구분코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `aseno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ip_a_clss`,`ip_b_clss`,`ip_c_clss`,`ip_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='아이피';
