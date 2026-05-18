FROM budtmo/docker-android:emulator_11.0

ENV DEVICE="Samsung Galaxy S10" \
    VNC_PASSWORD="2010" \
    EMULATOR_ARGS="-no-audio -no-boot-anim -gpu swiftshader_indirect" \
    SCREEN_WIDTH=1280 \
    SCREEN_HEIGHT=720

EXPOSE 5554 5555 6080 8554

CMD ["/bin/bash", "-c", "/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf"]
