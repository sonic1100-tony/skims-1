--
-- Table structure for table `gea_cmpu_ase_ac`
--

DROP TABLE IF EXISTS `gea_cmpu_ase_ac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cmpu_ase_ac` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `cmpu_admno` varchar(23) COLLATE utf8mb4_bin NOT NULL COMMENT '전산관리번호',
  `cpu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPU구분코드',
  `cpu_clock_typ` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPU클록타입',
  `hardd_typ` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하드디스크타입',
  `ram_size` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '램SIZE',
  `ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IP주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_cmpu_ase_ac_00` (`aseno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산자산부품';
