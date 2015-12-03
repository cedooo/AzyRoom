package com.dhcc.itims.azy.adam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.dhcc.itims.azy.adam.service.ICommonTableService;
import com.dhcc.itims.azy.adam.tools.Data;
import com.dhcc.itims.azy.adam.tools.FormatedData;
import com.dhcc.itims.azy.adam.tools.WrappedData;
import com.dhcc.itims.azy.adam.vo.AzyPower;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
public class DataJsonController {
	private ICommonTableService commonTableService;
	private FormatedData formatedData;

	@Autowired
	public void setFormatedData(FormatedData formatedData) {
		this.formatedData = formatedData;
	}

	@Autowired
	public void setCommonTableService(ICommonTableService commonTableService) {
		this.commonTableService = commonTableService;
	}

	@RequestMapping("/common")
	@ResponseBody
	public HttpEntity<String> common(@RequestParam String mosns) {
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.set("Content-Type", "application/json; charset=UTF-8");

		if (mosns != null) {
			String[] mosn = mosns.split(",");
			String jsonArray = null;
			List<AzyPower> list = commonTableService.listAzyPower(mosn);
			if (list != null && list.size() > 0) {
				//List<Data> listData = formatedData.formatData(list);
				List<WrappedData> listData = formatedData.wrapedData(list);
				ObjectMapper mapper = new ObjectMapper();
				try {
					jsonArray = mapper.writeValueAsString(listData);
				} catch (JsonProcessingException e) {
					e.printStackTrace();
				}

				return new ResponseEntity<String>(jsonArray, responseHeaders,
						HttpStatus.OK);
			}
		}
		return new ResponseEntity<String>("", responseHeaders,
				HttpStatus.NOT_FOUND);
	}

}
