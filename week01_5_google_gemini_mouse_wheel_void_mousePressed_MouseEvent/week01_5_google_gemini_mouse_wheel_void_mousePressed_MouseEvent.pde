// week01_5_google_gemini_mouse_wheel_void_mousePressed_MouseEvent_getCount
float circleSize = 50; // 宣告全域變數控制大小
void setup() {
  size(400, 400);
}
void draw() {
  background(220);
  // 畫出依滾輪大小的圓形
  ellipse(width / 2, height / 2, circleSize, circleSize);
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount(); // 取得滾動數值
  // 每次滾動改變大小（往下滾大，往上滾小）
  circleSize -= e * 5;
  // 限制圓形大小的最小值與最大值，避免過大消失
  circleSize = constrain(circleSize, 10, 300);
}
