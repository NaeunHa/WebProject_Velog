
const modify = document.querySelectorAll('.info_modify_box');
const info_save = document.querySelectorAll('.info_save_box');

const info_creative = document.querySelector('.top_info_creative');
const top_info = document.querySelector('.top_info');

const contents_box = document.querySelector('.contents_box');
const title_box_hidden = document.querySelectorAll('.title_box_hidden');
const inputs = document.querySelectorAll('.user_ip');
const user_id = document.querySelector('#id');
const name = document.querySelector('.name');
const comment = document.querySelector('.comment');
const username = document.querySelector('.username');
const img_insert = document.querySelector('.img_insert');
const insert_img = document.querySelector('#insert_img');
const profileimg = document.querySelector('.profileimg');
const img = document.querySelector('.img');
const img_delete = document.querySelector('.img_delete');
// 이미지 업로드


function img_Upload() {
	let formData = new FormData(insert_img);
	
	$.ajax({
		type: 'patch',
		url: '/mypage/imgUpload/' + user_id.value,
		data: formData,
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		success: function(data){
			profileimg.src = "/image/profile/"+ user_id.value + '/' +data;
			img.src = "/image/profile/"+ user_id.value+ '/'  +data;
		},
		error: function(){
			alert('실패');
		}
	})
}

img_delete.onclick = () => {
	$.ajax({
		type: 'delete',
		url: '/mypage/imgDelete/' + user_id.value,
		success: function(){
			alert('삭제 성공');
			profileimg.src = "/image/profile/"+'user_icon.png';
			img.src = "/image/profile/"+'user_icon.png';
		},
		error: function(){
			alert('삭제 실패');
		}
	})
	
}


modify[0].onclick = () => {
	top_info.style.display = 'none';
	info_creative.style.display = 'block';

}

var user_info = {
	name: '',
	comment: ''
}

info_save[0].onclick = () => {
	info_creative.style.display = 'none';
	top_info.style.display = 'block';
	user_info.name = inputs[0].value;
	user_info.comment = inputs[1].value;
	user_name();
}

function user_name() {
	alert(JSON.stringify(user_info))
	$.ajax({
		type: "patch",
		url: "/mypage/front/" + user_id.value,
		data: JSON.stringify(user_info),
		contentType: "application/json; charset=UTF-8",
		dataType: "text",
		success: function(data) {
			if (data == '1') {
				name.textContent = inputs[0].value;
				comment.textContent = inputs[1].value;
			} else {
				alert('회원 정보 수정 실패');
			}
		},
		error: function() {
			alert('비동기 처리 오류');
		}

	})
}

var user_info_title = {
	username: ''
}

modify[1].onclick = () => {
	contents_box.style.display = 'none';
	modify[1].style.display = 'none';
	title_box_hidden[0].style.display = 'block';
}

info_save[1].onclick = () => {
	modify[1].style.display = 'block';
	contents_box.style.display = 'block';
	title_box_hidden[0].style.display = 'none';
	user_info_title.username = inputs[2].value;
	user_username();
}


function user_username() {
	alert(JSON.stringify(user_info_title));

	$.ajax({
		type: "patch",
		url: "/mypage/username/" + user_id.value,
		data: JSON.stringify(user_info_title),
		contentType: "application/json; charset=UTF-8",
		dataType: "text",
		success: function(data) {
			if (data == '1') {
				username.textContent = inputs[2].value;
			} else {
				alert('수정 실패')
			}
		},
		error: function() {
			alert('비동기 처리 오류');
		}
	})
}
/*
const social_modify = document.querySelector('.social_modify');
const social_icon = document.querySelectorAll('.social_icon');
const social_span = document.querySelectorAll('.social_icon span');
const social_box_block = document.querySelector('.social_box_block');
const icon_box_block = document.querySelector('.icon_box_block');

modify[2].onclick = () => {
	modify[2].style.display = 'none';
	social_box_block.style.display = 'none';
	title_box_hidden[1].style.display = 'block';
}

info_save[2].onclick = () => {
	icon_box_block.style.display ='none';
	for (i = 0; i < social_span[i].length; i++) {
		social_span[i] = inputs[i + 3].value;
		social_span[i].style.display = 'none';
		if (social_span[i] != null) {
			social_box_block.style.display = 'block';
			social_span[i].style.display = 'block';

		}
	}
}

social_modify.onclick = () => {
	title_box_hidden[1].style.display = 'block';
	social_box_block.style.display = 'none';
	icon_box_block.style.display = 'block';
}
*/


// 스위치 온오프 기능
const switch_off = document.querySelectorAll('.switch_off');
const switch_on = document.querySelectorAll('.switch_on');
const circle = document.querySelectorAll('.circle');

switch_off[0].onclick = () => {
	switch_off[0].style.background = '#12b886';
}

switch_off[1].onclick = () => {
	switch_off[1].style.background = '#12b886';
}

/* 회원 탈퇴 msg */
const info_out = document.querySelector('.info_out');
const so_container = document.querySelector('.so_container');
const cancel = document.querySelector('.cancel');
const sign_out = document.querySelector('.signout');
so_container.style.display = 'none';

info_out.onclick = () => {
	if (so_container.style.display == 'none') {
		so_container.style.display = 'block';
	} else {
		so_container.style.display == 'none'
	}
}


sign_out.onclick = () => {
	$.ajax({
		type: 'delete',
		url: '/mypage/delete/' + user_id.value,
		success: function(data) {
			if (data == '1') {
				alert('회원 탈퇴 완료');
				location.replace('/logout');
			} else {
				alert('회원 탈퇴 오류');
			}
		},
		error: function() {
			alert('비동기 처리 오류');
		}
	})
}

cancel.onclick = () => {
	so_container.style.display = 'none';
}

