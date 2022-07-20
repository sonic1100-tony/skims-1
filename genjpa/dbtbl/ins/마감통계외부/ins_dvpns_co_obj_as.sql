--
-- Table structure for table `ins_dvpns_co_obj_as`
--

DROP TABLE IF EXISTS `ins_dvpns_co_obj_as`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_co_obj_as` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `co_obj_asno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '공동물건배정번호',
  `cr_rgtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량등록지코드',
  `cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량용도코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `as_rq_dthms` datetime DEFAULT NULL COMMENT '배정요청일시',
  `cr_dbcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대구분코드',
  `cr_or_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량/차대번호',
  `nrdps_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호구분코드',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `co_obj_rq_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공동물건요청회사코드',
  `rq_br` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청지점',
  `rq_bzp` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청영업소',
  `rq_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청담당자명',
  `co_obj_as_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공동물건배정회사코드',
  `asdt` date DEFAULT NULL COMMENT '배정일자',
  `da_tsdt` date DEFAULT NULL COMMENT '자료전송일자',
  `dvpns_ikdcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보종코드',
  `bdin1_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대인1가입여부',
  `bdin2_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대인2가입여부',
  `prdm_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대물가입여부',
  `obi_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자손가입여부',
  `owcr_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자차가입여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dvpns_co_obj_as_00` (`co_obj_asno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원공동물건배정';
