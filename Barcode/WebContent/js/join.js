function inputCheck(){
	if(document.regFrm.id.value==""){
		alert("���̵� �Է��� �ּ���.");
		document.regFrm.id.focus();
		return;
	}
	if(document.regFrm.pass.value==""){
		alert("��й�ȣ�� �Է��� �ּ���.");
		document.regFrm.pass.focus();
		return;
	}
	if(document.regFrm.repass.value==""){
		alert("��й�ȣ�� Ȯ���� �ּ���");
		document.regFrm.repass.focus();
		return;
	}
	if(document.regFrm.pass.value != document.regFrm.repass.value){
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		document.regFrm.repass.value="";
		document.regFrm.repass.focus();
		return;
	}
	if(document.regFrm.name.value==""){
		alert("�̸��� �Է��� �ּ���.");
		document.regFrm.name.focus();
		return;
	}
	if(document.regFrm.birth.value==""){
		alert("���⸦ �Է��� �ּ���.");
		document.regFrm.birth.focus();
		return;
	}
	if(document.regFrm.month.value==""){
		alert("������ �Է��� �ּ���.");
		document.regFrm.month.focus();
		return;
	}
	if(document.regFrm.day.value==""){
		alert("�ϸ� �Է��� �ּ���.");
		document.regFrm.day.focus();
		return;
	}
	if(document.regFrm.email.value==""){
		document.regFrm.email.value="aaa@bbb.ccc";
		document.regFrm.email.focus();
		return;
	}
    var str=document.regFrm.email.value;	   
    var atPos = str.indexOf('@');
    var atLastPos = str.lastIndexOf('@');
    var dotPos = str.indexOf('.'); 
    var spacePos = str.indexOf(' ');
    var commaPos = str.indexOf(',');
    var eMailSize = str.length;
    if (atPos > 1 && atPos == atLastPos && 
	   dotPos > 3 && spacePos == -1 && commaPos == -1 
	   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
    else {
          alert('E-mail�ּ� ������ �߸��Ǿ����ϴ�.\n\r�ٽ� �Է��� �ּ���!');
	      document.regFrm.email.focus();
		  return;
    }
    if(document.regFrm.zipcode.value==""){
		alert("�����ȣ�� �˻��� �ּ���.");
		return;
	}
    document.regFrm.birth.value=document.regFrm.birth.value+document.regFrm.month.value+document.regFrm.day.value;
    alert(document.regFrm.birth.value);
	document.regFrm.submit();
}
function inputCheck1(){
	if(document.regFrm.id.value==""){
		alert("���̵� �Է��� �ּ���.");
		document.regFrm.id.focus();
		return;
	}
	if(document.regFrm.pass.value==""){
		alert("��й�ȣ�� �Է��� �ּ���.");
		document.regFrm.pass.focus();
		return;
	}
	if(document.regFrm.repass.value==""){
		alert("��й�ȣ�� Ȯ���� �ּ���");
		document.regFrm.repass.focus();
		return;
	}
	if(document.regFrm.pass.value != document.regFrm.repass.value){
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		document.regFrm.repass.value="";
		document.regFrm.repass.focus();
		return;
	}
	if(document.regFrm.name.value==""){
		alert("�̸��� �Է��� �ּ���.");
		document.regFrm.name.focus();
		return;
	}

	if(document.regFrm.email.value==""){
		document.regFrm.email.value="aaa@bbb.ccc";
		document.regFrm.email.focus();
		return;
	}
    var str=document.regFrm.email.value;	   
    var atPos = str.indexOf('@');
    var atLastPos = str.lastIndexOf('@');
    var dotPos = str.indexOf('.'); 
    var spacePos = str.indexOf(' ');
    var commaPos = str.indexOf(',');
    var eMailSize = str.length;
    if (atPos > 1 && atPos == atLastPos && 
	   dotPos > 3 && spacePos == -1 && commaPos == -1 
	   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
    else {
          alert('E-mail�ּ� ������ �߸��Ǿ����ϴ�.\n\r�ٽ� �Է��� �ּ���!');
	      document.regFrm.email.focus();
		  return;
    }
    if(document.regFrm.zipcode.value==""){
		alert("�����ȣ�� �˻��� �ּ���.");
		return;
	}
    alert(document.regFrm.birth.value);
	document.regFrm.submit();
}
function win_close(){
	self.close();
}
