--
-- Table structure for table `cus_ctm_crd`
--

DROP TABLE IF EXISTS `cus_ctm_crd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_crd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `crdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드사코드',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `crd_vald_trm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드유효기간',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `ovse_crd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외카드여부',
  `crd_hdrr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드소지자명',
  `crd_hdrr_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드소지자영문명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객카드';
