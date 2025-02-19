document.addEventListener('DOMContentLoaded', () => {
})


function rotateLever(){
    const lever = document.getElementById('lever')
        lever.style.transform = 'rotate(360deg)'
        setTimeout(() => {
            lever.style.transition = 'none'
            setTimeout(() => {
                lever.style.transform = 'rotate(0deg)'
                setTimeout(() => {
                    lever.style.transition = 'ease-in-out 1.5s'
                    setTimeout(() => {
                        lever.style.transform = 'rotate(360deg)'
                        setTimeout(() => {
                            lever.style.transition = 'none'
                            setTimeout(() => {
                                lever.style.transform = 'rotate(0deg)'
                                setTimeout(() => {
                                    lever.style.transition = 'ease-in-out 1.5s'
                                }, 10);
                            }, 10);
                        }, 1500)
                    }, 5)
                }, 10);
            }, 10);
        }, 1500);
}