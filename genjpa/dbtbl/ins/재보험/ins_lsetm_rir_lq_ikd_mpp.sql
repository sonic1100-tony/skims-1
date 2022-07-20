--
-- Table structure for table `ins_lsetm_rir_lq_ikd_mpp`
--

DROP TABLE IF EXISTS `ins_lsetm_rir_lq_ikd_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_lsetm_rir_lq_ikd_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `ac_ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경리보험종목코드',
  `rins_gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험상품코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사재보청산보종매핑';
