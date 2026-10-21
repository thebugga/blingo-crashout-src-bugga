if ((video_get_status() != 0))
    video_close()
video_open("testvid.mp4")
displayVideo = false