--
-- Table structure for table `ins_ntclt_snd_crst`
--

DROP TABLE IF EXISTS `ins_ntclt_snd_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ntclt_snd_crst` (
  `snd_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '발송년월',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `cntrt_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '접촉방법코드',
  `ntc_ct` decimal(7,0) NOT NULL COMMENT '안내건수',
  `sccct` decimal(7,0) NOT NULL COMMENT '성공건수',
  `faict` decimal(7,0) NOT NULL COMMENT '실패건수',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`snd_yymm`,`ikd_grpcd`,`itmcd`,`cntrt_mtdcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='안내장발송현황';
