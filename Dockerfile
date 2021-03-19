FROM alejandrorosas/android:latest

ENV ANDROID_NDK_HOME=${PWD}/android-ndk \
    ANDROID_NDK_VERSION=r22

RUN mkdir ${ANDROID_NDK_HOME} \
 && wget --quiet --output-document=android-ndk.zip https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip \
 && unzip android-ndk.zip -d ${ANDROID_NDK_HOME} \
 && mv -f ${ANDROID_NDK_HOME}/*/* ${ANDROID_NDK_HOME}

ENV PATH ${PATH}:${ANDROID_NDK_HOME}
