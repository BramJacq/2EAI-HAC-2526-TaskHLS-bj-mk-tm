import cv2

gst_pipeline = (
    "v4l2src device=/dev/video0 ! "
    "videoconvert ! "
    "appsink"
)

cap = cv2.VideoCapture(
    gst_pipeline,
    cv2.CAP_GSTREAMER
)

if not cap.isOpened():
    print("Camera niet gevonden")
    exit()

print("Livestream gestart")

while True:

    ret, frame = cap.read()

    if not ret:
        break

    cv2.imshow("GStreamer Livestream", frame)

    if cv2.waitKey(1) == 27:
        break

cap.release()
cv2.destroyAllWindows()
