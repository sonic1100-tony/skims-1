--
-- Table structure for table `lse_hprm_chek_list`
--

DROP TABLE IF EXISTS `lse_hprm_chek_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_chek_list` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '항목구분코드',
  `oj_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물사항',
  `rt_cclbs_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율산출기초내용',
  `nml_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '정상여부',
  `rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_chek_list_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`it_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM체크리스트';
