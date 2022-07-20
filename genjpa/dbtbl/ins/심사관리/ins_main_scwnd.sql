--
-- Table structure for table `ins_main_scwnd`
--

DROP TABLE IF EXISTS `ins_main_scwnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_main_scwnd` (
  `scwnd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상병코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '성별코드',
  `sct_str_age` decimal(3,0) NOT NULL COMMENT '구간시작연령',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `sct_nd_age` decimal(3,0) NOT NULL COMMENT '구간종료연령',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`scwnd_cd`,`sexcd`,`sct_str_age`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주요상병';
