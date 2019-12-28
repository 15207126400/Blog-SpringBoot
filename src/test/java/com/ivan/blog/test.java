package com.ivan.blog;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/*
 *  @Author: Ivan
 *  @Description:
 *  @Date: 2019/11/1 18:49
 */
public class test {

    public static void  main(String [] args) {
        String json = "{\"version\":4,\"terraform_version\":\"0.12.12\",\"serial\":1,\"lineage\":\"02d6bb7c-791a-459d-288d-f9d99bc41965\",\"outputs\":{\"cvm_test_public_ip\":{\"value\":\"106.53.50.33\",\"type\":\"string\"}},\"resources\":[{\"mode\":\"data\",\"type\":\"tencentcloud_availability_zones\",\"name\":\"my_favorate_zones\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"id\":\"1084155620\",\"include_unavailable\":null,\"name\":null,\"result_output_file\":null,\"zones\":[{\"description\":\"广州三区\",\"id\":\"100003\",\"name\":\"ap-guangzhou-3\",\"state\":\"AVAILABLE\"},{\"description\":\"广州四区\",\"id\":\"100004\",\"name\":\"ap-guangzhou-4\",\"state\":\"AVAILABLE\"}]}}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_cbs_storage\",\"name\":\"my_storage\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"attached\":null,\"availability_zone\":\"ap-guangzhou-3\",\"encrypt\":false,\"id\":\"disk-hyzl8xb8\",\"period\":1,\"project_id\":0,\"snapshot_id\":null,\"storage_name\":\"terraform_test_storage\",\"storage_size\":10,\"storage_status\":\"UNATTACHED\",\"storage_type\":\"CLOUD_PREMIUM\",\"tags\":null},\"private\":\"bnVsbA==\",\"depends_on\":[\"data.tencentcloud_availability_zones.my_favorate_zones\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_cbs_storage_attachment\",\"name\":\"my-attachment\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"id\":\"disk-hyzl8xb8\",\"instance_id\":\"ins-rj2fzmx0\",\"storage_id\":\"disk-hyzl8xb8\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_cbs_storage.my_storage\",\"tencentcloud_instance.cvm_test[0]\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_instance\",\"name\":\"cvm_test\",\"each\":\"list\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"index_key\":0,\"schema_version\":0,\"attributes\":{\"allocate_public_ip\":true,\"availability_zone\":\"ap-guangzhou-3\",\"create_time\":\"2019-10-29T04:32:30Z\",\"data_disks\":[],\"disable_monitor_service\":false,\"disable_security_service\":false,\"expired_time\":\"\",\"hostname\":null,\"id\":\"ins-rj2fzmx0\",\"image_id\":\"img-d5bte9sz\",\"instance_charge_type\":\"POSTPAID_BY_HOUR\",\"instance_charge_type_prepaid_period\":null,\"instance_charge_type_prepaid_renew_flag\":\"\",\"instance_name\":\"cvm-test\",\"instance_status\":\"RUNNING\",\"instance_type\":\"S2.SMALL1\",\"internet_charge_type\":\"TRAFFIC_POSTPAID_BY_HOUR\",\"internet_max_bandwidth_out\":10,\"key_name\":null,\"password\":\"qwer@123\",\"placement_group_id\":null,\"private_ip\":\"10.0.1.12\",\"project_id\":0,\"public_ip\":\"106.53.50.33\",\"running_flag\":true,\"security_groups\":[\"sg-miut8ltb\"],\"subnet_id\":\"subnet-6f55xw3a\",\"system_disk_id\":\"disk-o3z5lihy\",\"system_disk_size\":50,\"system_disk_type\":\"CLOUD_PREMIUM\",\"tags\":null,\"user_data\":null,\"user_data_raw\":null,\"vpc_id\":\"vpc-i9iouf7t\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_security_group.sg_test\",\"tencentcloud_subnet.subnet_test\",\"tencentcloud_vpc.vpc_test\"]},{\"index_key\":1,\"schema_version\":0,\"attributes\":{\"allocate_public_ip\":true,\"availability_zone\":\"ap-guangzhou-3\",\"create_time\":\"2019-10-29T04:32:45Z\",\"data_disks\":[],\"disable_monitor_service\":false,\"disable_security_service\":false,\"expired_time\":\"\",\"hostname\":null,\"id\":\"ins-3n16f0oe\",\"image_id\":\"img-d5bte9sz\",\"instance_charge_type\":\"POSTPAID_BY_HOUR\",\"instance_charge_type_prepaid_period\":null,\"instance_charge_type_prepaid_renew_flag\":\"\",\"instance_name\":\"cvm-test\",\"instance_status\":\"RUNNING\",\"instance_type\":\"S2.SMALL1\",\"internet_charge_type\":\"TRAFFIC_POSTPAID_BY_HOUR\",\"internet_max_bandwidth_out\":10,\"key_name\":null,\"password\":\"qwer@123\",\"placement_group_id\":null,\"private_ip\":\"10.0.1.10\",\"project_id\":0,\"public_ip\":\"134.175.53.191\",\"running_flag\":true,\"security_groups\":[\"sg-miut8ltb\"],\"subnet_id\":\"subnet-6f55xw3a\",\"system_disk_id\":\"disk-6vp9kbu0\",\"system_disk_size\":50,\"system_disk_type\":\"CLOUD_PREMIUM\",\"tags\":null,\"user_data\":null,\"user_data_raw\":null,\"vpc_id\":\"vpc-i9iouf7t\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_security_group.sg_test\",\"tencentcloud_subnet.subnet_test\",\"tencentcloud_vpc.vpc_test\"]},{\"index_key\":2,\"schema_version\":0,\"attributes\":{\"allocate_public_ip\":true,\"availability_zone\":\"ap-guangzhou-3\",\"create_time\":\"2019-10-29T04:32:40Z\",\"data_disks\":[],\"disable_monitor_service\":false,\"disable_security_service\":false,\"expired_time\":\"\",\"hostname\":null,\"id\":\"ins-lhs3hyua\",\"image_id\":\"img-d5bte9sz\",\"instance_charge_type\":\"POSTPAID_BY_HOUR\",\"instance_charge_type_prepaid_period\":null,\"instance_charge_type_prepaid_renew_flag\":\"\",\"instance_name\":\"cvm-test\",\"instance_status\":\"RUNNING\",\"instance_type\":\"S2.SMALL1\",\"internet_charge_type\":\"TRAFFIC_POSTPAID_BY_HOUR\",\"internet_max_bandwidth_out\":10,\"key_name\":null,\"password\":\"qwer@123\",\"placement_group_id\":null,\"private_ip\":\"10.0.1.7\",\"project_id\":0,\"public_ip\":\"106.53.42.190\",\"running_flag\":true,\"security_groups\":[\"sg-miut8ltb\"],\"subnet_id\":\"subnet-6f55xw3a\",\"system_disk_id\":\"disk-oja3el3g\",\"system_disk_size\":50,\"system_disk_type\":\"CLOUD_PREMIUM\",\"tags\":null,\"user_data\":null,\"user_data_raw\":null,\"vpc_id\":\"vpc-i9iouf7t\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_security_group.sg_test\",\"tencentcloud_subnet.subnet_test\",\"tencentcloud_vpc.vpc_test\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_route_table\",\"name\":\"rtb_test\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"create_time\":\"2019-10-2912:32:07\",\"id\":\"rtb-rn6opwf4\",\"is_default\":false,\"name\":\"rtb-test\",\"route_entry_ids\":[],\"subnet_ids\":[],\"tags\":null,\"vpc_id\":\"vpc-i9iouf7t\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_vpc.vpc_test\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_security_group\",\"name\":\"sg_test\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"description\":\"\",\"id\":\"sg-miut8ltb\",\"name\":\"sg-test\",\"project_id\":0,\"tags\":null},\"private\":\"bnVsbA==\"}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_security_group_rule\",\"name\":\"sg_rule_ssh\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"cidr_ip\":\"0.0.0.0/0\",\"description\":\"\",\"id\":\"eyJzZ19pZCI6InNnLW1pdXQ4bHRiIiwicG9saWN5X3R5cGUiOiJpbmdyZXNzIiwiY2lkcl9pcCI6IjAuMC4wLjAvMCIsInByb3RvY29sIjoidGNwIiwicG9ydF9yYW5nZSI6IjIyIiwiYWN0aW9uIjoiYWNjZXB0Iiwic291cmNlX3NnX2lkIjoiIiwiZGVzY3JpcHRpb24iOiIifQ==\",\"ip_protocol\":\"tcp\",\"policy\":\"accept\",\"port_range\":\"22\",\"security_group_id\":\"sg-miut8ltb\",\"source_sgid\":null,\"type\":\"ingress\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_security_group.sg_test\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_security_group_rule\",\"name\":\"sg_rule_test_docker_swarm\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"cidr_ip\":\"0.0.0.0/0\",\"description\":\"\",\"id\":\"eyJzZ19pZCI6InNnLW1pdXQ4bHRiIiwicG9saWN5X3R5cGUiOiJpbmdyZXNzIiwiY2lkcl9pcCI6IjAuMC4wLjAvMCIsInByb3RvY29sIjoidGNwIiwicG9ydF9yYW5nZSI6IjIzNzciLCJhY3Rpb24iOiJhY2NlcHQiLCJzb3VyY2Vfc2dfaWQiOiIiLCJkZXNjcmlwdGlvbiI6IiJ9\",\"ip_protocol\":\"tcp\",\"policy\":\"accept\",\"port_range\":\"2377\",\"security_group_id\":\"sg-miut8ltb\",\"source_sgid\":null,\"type\":\"ingress\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_security_group.sg_test\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_security_group_rule\",\"name\":\"sg_rule_test_k8s_dashboard\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"cidr_ip\":\"0.0.0.0/0\",\"description\":\"\",\"id\":\"eyJzZ19pZCI6InNnLW1pdXQ4bHRiIiwicG9saWN5X3R5cGUiOiJpbmdyZXNzIiwiY2lkcl9pcCI6IjAuMC4wLjAvMCIsInByb3RvY29sIjoidGNwIiwicG9ydF9yYW5nZSI6IjMyMjgxIiwiYWN0aW9uIjoiYWNjZXB0Iiwic291cmNlX3NnX2lkIjoiIiwiZGVzY3JpcHRpb24iOiIifQ==\",\"ip_protocol\":\"tcp\",\"policy\":\"accept\",\"port_range\":\"32281\",\"security_group_id\":\"sg-miut8ltb\",\"source_sgid\":null,\"type\":\"ingress\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_security_group.sg_test\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_security_group_rule\",\"name\":\"sg_rule_web\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"cidr_ip\":\"0.0.0.0/0\",\"description\":\"\",\"id\":\"eyJzZ19pZCI6InNnLW1pdXQ4bHRiIiwicG9saWN5X3R5cGUiOiJpbmdyZXNzIiwiY2lkcl9pcCI6IjAuMC4wLjAvMCIsInByb3RvY29sIjoidGNwIiwicG9ydF9yYW5nZSI6IjgwLDQ0Myw4MDgwLDkwOTAiLCJhY3Rpb24iOiJhY2NlcHQiLCJzb3VyY2Vfc2dfaWQiOiIiLCJkZXNjcmlwdGlvbiI6IiJ9\",\"ip_protocol\":\"tcp\",\"policy\":\"accept\",\"port_range\":\"80,443,8080,9090\",\"security_group_id\":\"sg-miut8ltb\",\"source_sgid\":null,\"type\":\"ingress\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_security_group.sg_test\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_subnet\",\"name\":\"subnet_test\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"availability_zone\":\"ap-guangzhou-3\",\"available_ip_count\":253,\"cidr_block\":\"10.0.1.0/24\",\"create_time\":\"2019-10-2912:32:08\",\"id\":\"subnet-6f55xw3a\",\"is_default\":false,\"is_multicast\":true,\"name\":\"subnet-test\",\"route_table_id\":\"rtb-rn6opwf4\",\"tags\":null,\"vpc_id\":\"vpc-i9iouf7t\"},\"private\":\"bnVsbA==\",\"depends_on\":[\"tencentcloud_route_table.rtb_test\",\"tencentcloud_vpc.vpc_test\"]}]},{\"mode\":\"managed\",\"type\":\"tencentcloud_vpc\",\"name\":\"vpc_test\",\"provider\":\"provider.tencentcloud\",\"instances\":[{\"schema_version\":0,\"attributes\":{\"cidr_block\":\"10.0.0.0/16\",\"create_time\":\"2019-10-2912:32:06\",\"dns_servers\":[\"183.60.82.98\",\"183.60.83.19\"],\"id\":\"vpc-i9iouf7t\",\"is_default\":false,\"is_multicast\":true,\"name\":\"vpc-test\",\"tags\":null},\"private\":\"bnVsbA==\"}]}]}";

        List<HashMap<String,String>> typeIskeyJsonList = new ArrayList<>();
        HashMap<String,String> typeIskeyJsonMap = new HashMap<>();
        typeIskeyJsonMap.put("type","tencentcloud_security_group_rule");
        typeIskeyJsonMap.put("values","id,ip_protocol");
        typeIskeyJsonList.add(typeIskeyJsonMap);
        HashMap<String,String> typeIskeyJsonMap1 = new HashMap<>();
        typeIskeyJsonMap1.put("type","tencentcloud_instance");
        typeIskeyJsonMap1.put("values","image_id,internet_max_bandwidth_out,password");
        typeIskeyJsonList.add(typeIskeyJsonMap1);
        HashMap<String,String> typeIskeyJsonMap2 = new HashMap<>();
        typeIskeyJsonMap2.put("type","tencentcloud_cbs_storage_attachment");
        typeIskeyJsonMap2.put("values","storage_id");
        typeIskeyJsonList.add(typeIskeyJsonMap2);

        for (HashMap<String,String> typeIskeyJson:typeIskeyJsonList){
            System.out.println(typeIskeyJson.get("type")+"这个类型匹配的结果:"+jsonTest(json,typeIskeyJson.get("type"),typeIskeyJson.get("values")));
        }

    }


    /*
     * json 入参json串
     * resourcesType 区分使用resources下哪一个下标
     * attributesKey 获取哪一张表中的key,支持传多个key key与key用逗号分隔
     * */
    public static String jsonTest(String json,String resourcesType,String attributesKeyList){
        List<JSONObject> returnList = new ArrayList<>();
        try {
            JSONObject jsonObj =  JSON.parseObject(json);
            JSONArray resourcesJsonArr = jsonObj.getJSONArray("resources");
            for(Object resourcesObj:resourcesJsonArr){
                JSONObject resourcesJsonObj = JSON.parseObject(resourcesObj.toString());
                if(resourcesType.equals(resourcesJsonObj.getString("type"))){
                    JSONArray instancesJsonArr = resourcesJsonObj.getJSONArray("instances");
                    for (Object instancesObj:instancesJsonArr){
                        JSONObject instancesJsonObj = JSON.parseObject(instancesObj.toString());
                        JSONObject attributesJsonObj = instancesJsonObj.getJSONObject("attributes");
                        JSONObject attributesKeyJson = new JSONObject();
                        for (String attributesKey:attributesKeyList.split(",")){
                            attributesKeyJson.put(attributesKey,attributesJsonObj.getString(attributesKey));
                        }
                        returnList.add(attributesKeyJson);
                    }
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return JSON.toJSONString(returnList);
    }

}


