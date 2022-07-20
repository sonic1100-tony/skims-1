--
-- Table structure for table `igd_gd_atr_apcd`
--

DROP TABLE IF EXISTS `igd_gd_atr_apcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_atr_apcd` (
  `gd_atrno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품속성번호',
  `atr_ap_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성적용분류코드',
  `atr_ap_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성적용세부코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `us_av_strdt` date NOT NULL COMMENT '사용가능시작일자',
  `us_av_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '사용가능종료일자',
  `coobj_is_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공동물건가입가능여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gd_atrno`,`atr_ap_csfcd`,`atr_ap_dtcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품속성적용코드';
