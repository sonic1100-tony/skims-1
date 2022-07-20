--
-- Table structure for table `cus_ctm_hobby_nr_mtt`
--

DROP TABLE IF EXISTS `cus_ctm_hobby_nr_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_hobby_nr_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `hobby_nr_mttcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취미관심사항코드',
  `hobby_nr_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취미관심사항구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_hobby_nr_mtt_00` (`ctmno`,`hobby_nr_mttcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객취미관심사항';
