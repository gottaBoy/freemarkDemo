$(function(){
		// 手机号码验证
		$.validator.addMethod("isPhone", function(value, element) {
			var length = value.length;
			return this.optional(element) || (/^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value));
		}, "请正确填写正确的手机号码。");
	
		// 电话号码验证
		$.validator.addMethod("isTel", function(value, element) {
			var tel = /^(\d{3,4}-)?\d{7,8}$/g; // 区号－3、4位 号码－7、8位
			return this.optional(element) || (tel.test(value));
		}, "请正确填写您的电话号码。");
		// 匹配密码，以字母开头，长度在6-12之间，必须包含数字和特殊字符。
		$.validator.addMethod("isPwd", function(value, element) {
			var str = value;
			if (str.length < 6 || str.length > 18)
				return false;
			if (!/^[a-zA-Z]/.test(str))
				return false;
			if (!/[0-9]/.test(str))
				return fasle;
			return this.optional(element) || /[^A-Za-z0-9]/.test(str);
		}, "以字母开头，长度在6-12之间，必须包含数字和特殊字符。");
		
		$.validator.addMethod("isMoney", function(value, element) {
			var length = value.length;
			return this.optional(element) || ( value < 99999999.99  && /^([1-9][0-9]*)?[0-9]\.[0-9]{2}$/.test(value));
		}, "请输入有效的金额如：100.00");
		
		$.validator.addMethod("isSelected", function(value, element) {
			return this.optional(element) || ( value < 0);
		}, "请选择收款方类型");

		
		$.validator.addMethod("isNumber", function(value, element) {
			return this.optional(element) || (/^([1-9][0-9]*)$/.test(value));
		}, "请输入有效数字");
		
		$.validator.addMethod("isChinese", function(value, element) {
			return this.optional(element) || (/^[\u4e00-\u9fa5]$/.test(value));
		}, "请输入有效中文名称");
		
		$.validator.addMethod("isBankCard", function(value, element) {
			var str =$.trim(value.replace(/[\_]/g, ""));
			if(str.length==19){
	           return true;
			}
			return this.optional(element);
		}, "请输入19位数字卡号");
		//中文、英文、数字但不包括下划线等符号
		$.validator.addMethod("isName", function(value, element) {
			return this.optional(element) || (/^[\u4E00-\u9FA5A-Za-z0-9]+$/.test(value));
		}, "中文、英文、数字");
		
		//最多带3位小数的正数
		$.validator.addMethod("isDecimal12_3", function(value, element) {
			return this.optional(element) || (/^(0|([1-9][0-9]*))(\.[0-9]{1,3})?$/.test(value));
		}, "最多带3位小数的正数");
		
		//最多带2位小数的正数
		$.validator.addMethod("isDecimal12_2", function(value, element) {
			return this.optional(element) || (/^(0|([1-9][0-9]*))(\.[0-9]{1,2})?$/.test(value));
		}, "最多带2位小数的正数");
		
		//最多带2位小数的signed decimal
		$.validator.addMethod("isSDecimal12_2", function(value, element) {
			return this.optional(element) || (/^(\-?)(0|([1-9][0-9]*))(\.[0-9]{1,2})?$/.test(value));
		}, "最多带2位小数");
			
})