--
-- Table structure for table `gea_cmpu_ase_adm`
--

DROP TABLE IF EXISTS `gea_cmpu_ase_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cmpu_ase_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmpu_admno` varchar(23) COLLATE utf8mb4_bin NOT NULL COMMENT '전산관리번호',
  `aseno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산번호',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `cmpu_ase_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전산자산상태코드',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리직원번호',
  `cmpu_itmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전산품목코드',
  `mdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모델명',
  `hardd_typ` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하드디스크타입',
  `cpu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPU구분코드',
  `cpu_clock_typ` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPU클록타입',
  `ram_typ` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '램타입',
  `tot_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전체주소',
  `chbf_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전전화번호',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `st_chdt` date DEFAULT NULL COMMENT '상태변경일자',
  `ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IP주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_cmpu_ase_adm_00` (`cmpu_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산자산관리';
