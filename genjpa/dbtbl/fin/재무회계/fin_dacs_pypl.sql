--
-- Table structure for table `fin_dacs_pypl`
--

DROP TABLE IF EXISTS `fin_dacs_pypl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dacs_pypl` (
  `py_dl_o1_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처리1차구분코드',
  `py_dl_o2_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처리2차구분코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `pypl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처구분코드',
  `pylno` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처번호',
  `pylnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처명',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `pypl_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`py_dl_o1_flgcd`,`py_dl_o2_flgcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해사정비지급처';
