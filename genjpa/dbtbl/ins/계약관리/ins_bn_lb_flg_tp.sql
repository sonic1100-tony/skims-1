--
-- Table structure for table `ins_bn_lb_flg_tp`
--

DROP TABLE IF EXISTS `ins_bn_lb_flg_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bn_lb_flg_tp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종분류코드',
  `ins_btpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험업종코드',
  `lb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배상구분코드',
  `cmp_lmamt_untcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상한도금액단위코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_bn_lb_flg_tp_00` (`bn_csfcd`,`ins_btpcd`,`lb_flgcd`,`cmp_lmamt_untcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업종배상구분유형';
