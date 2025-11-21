let mario = document.querySelector('.mario');
let pipe = document.querySelector('.pipe');
let pipe2 = document.querySelector('.pipe2');

const jump = () => {
    mario.classList.add('jump');

    setTimeout(() => {
        mario.classList.remove('jump');
    }, 500);
}

const loop = setInterval(() => {

    //console.log('loop');

    const pipePosition = pipe.offsetLeft;
	const pipePosition2 = pipe2.offsetLeft;
    const marioPosition = +window.getComputedStyle(mario).bottom.replace('px', '');

    //console.log(marioPosition);
    
    if (pipePosition <= 120 && pipePosition > 0 && marioPosition < 80) {
        pipe.style.animation = 'none';
        pipe.style.left = '${pipePosition}px'; 

        mario.style.animation = 'none';
        mario.style.bottom = '${marioPosition}px'; 
        mario.src = './images/game-over.png';
        mario.style.width = '75px';
        mario.style.marginLeft = '0px';
		mario.style.marginBottom = '45px';
        clearInterval(loop);
    }
	
	if (pipePosition2 <= 120 && pipePosition2 > 0 && marioPosition < 80) {
        pipe2.style.animation = 'none';
        pipe2.style.left = '${pipePosition}px'; 

        mario.style.animation = 'none';
        mario.style.bottom = '${marioPosition}px'; 

        mario.src = './images/game-over.png';
        mario.style.width = '75px';
        mario.style.marginLeft = '0px';
		mario.style.marginBottom = '45px';
        clearInterval(loop);
    }

}, 10);
 
document.addEventListener('keydown', jump);