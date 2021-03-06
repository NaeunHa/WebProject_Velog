
const modify = document.querySelectorAll('.info_modify_box');
const info_save = document.querySelectorAll('.info_save_box');

const info_creative = document.querySelector('.top_info_creative');
const top_info = document.querySelector('.top_info');

const contents_box = document.querySelector('.contents_box');
const title_box_hidden = document.querySelectorAll('.title_box_hidden');


modify[0].onclick = () => {
    top_info.style.display  = 'none';
    info_creative.style.display = 'block';
}

info_save[0].onclick = () => {
    info_creative.style.display = 'none';
    top_info.style.display = 'block';
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
    
}

const social_modify = document.querySelector('.social_modify');
const social_icon = document.querySelectorAll('.social_icon');
const social_text = document.querySelectorAll('.icon input');
const social_box_block = document.querySelector('.social_box_block');
const icon_box_block = document.querySelector('.icon_box_block');

modify[2].onclick = () => {  
    modify[2].style.display = 'none';
    social_box_block.style.display = 'none';
    title_box_hidden[1].style.display = 'block';
    
}

info_save[2].onclick = () => {
    for (let i = 0; i < social_text.length; i++) {
        social_icon[i].style.display='none';
        if (social_text[i].value != null) {
            icon_box_block.style.display='none';
            social_box_block.style.display = 'block';
            social_icon[i].style.display='block';
        } else{
            title_box_hidden[1].style.display = 'none';
            modify[2].style.display = 'block';
        }
    }
}

social_modify.onclick = () => {
    title_box_hidden[1].style.display = 'block';
    social_box_block.style.display = 'none';
    icon_box_block.style.display='block';
}

// ????????? ????????? ??????
const switch_off = document.querySelectorAll('.switch_off');
const switch_on = document.querySelectorAll('.switch_on');
const circle = document.querySelectorAll('.circle');

switch_off[0].onclick = () => {
    switch_off[0].style.background = '#12b886';
}

switch_off[1].onclick = () => {
    switch_off[1].style.background = '#12b886';
}

const sign_out = document.querySelector('.info_out');
const so_container = document.querySelector('.so_container');
const cancel = document.querySelector('.cancel');
sign_out.onclick = () => {
    if(so_container.style.display == 'none'){
        so_container.style.display = 'block';
    } else {
        so_container.style.display == 'none'
    }
}

cancel.onclick = () => {
    so_container.style.display = 'none';
}