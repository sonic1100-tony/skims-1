--
-- Table structure for table `ccm_prcdt`
--

DROP TABLE IF EXISTS `ccm_prcdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_prcdt` (
  `crtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법원코드',
  `acdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호',
  `lwjd` decimal(2,0) DEFAULT NULL COMMENT '심급',
  `jgdt` date NOT NULL COMMENT '판결일자',
  `thcp_otcm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사타사구분코드',
  `planm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '원고명',
  `plat_agtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원고대리인명',
  `defnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '피고명',
  `deft_agtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피고대리인명',
  `prcdt_titl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '판례제목',
  `img_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지유무',
  `prcdt_pnt` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '판례요지내용',
  `missu_spc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주쟁점내역',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`crtcd`,`acdno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='판례';
