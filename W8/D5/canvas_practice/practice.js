document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');
  canvas.height = '500';
  canvas.width = '500';
  const ctx = canvas.getContext('2d');

  ctx.fillStyle = 'red';
  ctx.fillRect(1, 1, 500, 300);

  ctx.beginPath();
  ctx.arc(150, 150, 100, 0, 2 * Math.PI);
  ctx.fillStyle = 'teal';
  ctx.fill();
  ctx.stroke();
  ctx.strokeStyle = 'black';
  ctx.lineWidth(10);
});
