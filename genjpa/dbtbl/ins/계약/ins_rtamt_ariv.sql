--
-- Table structure for table `ins_rtamt_ariv`
--

DROP TABLE IF EXISTS `ins_rtamt_ariv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rtamt_ariv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rtamt_cr_stdt` date NOT NULL COMMENT '환급금발생기준일자',
  `py_cr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급발생유형코드',
  `rtamt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환급금유형코드',
  `relpc_seqno` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '관계자순번',
  `rtamt_py_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환급금지급상태코드',
  `uramt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '발생금액',
  `py_bjno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상번호',
  `ariv_pntm_ccbj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '도래시점산출대상여부',
  `septp_gd_trdtn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '분리형상품전통형여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rtamt_ariv_00` (`plyno`,`rtamt_cr_stdt`,`py_cr_tpcd`,`rtamt_tpcd`,`relpc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='환급금도래';
