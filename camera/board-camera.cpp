/*
 * Copyright 2015, FriendlyARM (www.friendlyarm.com)
 * Copyright 2008, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "NXCameraBoardSensor"
#include <linux/videodev2.h>
#include <linux/v4l2-mediabus.h>

#include <utils/Log.h>
#include <nxp-v4l2.h>
#include <nx_camera_board.h>

#include <OV5640.h>

// ----------------------------------------------------------------------------

#ifdef USES_CAMERA_BACK
#define CAMERA_BACK         1
#else
#define CAMERA_BACK         0
#endif

#ifdef USES_CAMERA_FRONT
#define CAMERA_FRONT        1
#else
#define CAMERA_FRONT        0
#endif

namespace android {

// ----------------------------------------------------------------------------

extern "C" {
int get_board_number_of_cameras() {
    return (CAMERA_BACK + CAMERA_FRONT);
}
}

class NXCameraBoardSensor *frontSensor = NULL;
class NXCameraBoardSensor *backSensor = NULL;

NXCameraBoardSensor *get_board_camera_sensor(int id) {
    NXCameraBoardSensor *sensor = NULL;

    if (id == 0) {
        if (!backSensor) {
            backSensor = new OV5640(nxp_v4l2_sensor0);
            if (!backSensor)
                ALOGE("%s: cannot create BACK Sensor", __func__);
        }
        sensor = backSensor;
    }

#if CAMERA_FRONT
    else if (id == 1) {
        if (!frontSensor) {
            frontSensor = new FRONT(nxp_v4l2_sensor1);
            if (!frontSensor)
                ALOGE("%s: cannot create FRONT Sensor", __func__);
        }
        sensor = frontSensor;
    }
#endif

    else {
        ALOGE("INVALID ID: %d", id);
    };

    return sensor;
}

NXCameraBoardSensor *get_board_camera_sensor_by_v4l2_id(int v4l2_id) {
    switch (v4l2_id) {
    case nxp_v4l2_sensor0:
        return backSensor;
#if CAMERA_FRONT
    case nxp_v4l2_sensor1:
        return frontSensor;
#endif
    default: 
        ALOGE("%s: invalid v4l2 id(%d)", __func__, v4l2_id);
        return NULL;
    }
}

// ----------------------------------------------------------------------------

uint32_t get_board_preview_v4l2_id(int cameraId)
{
    switch (cameraId) {
    case 0:
        return nxp_v4l2_decimator0;
    case 1:
        return nxp_v4l2_decimator1;
    default:
        ALOGE("%s: invalid cameraId %d", __func__, cameraId);
        return 0;
    }
}

uint32_t get_board_capture_v4l2_id(int cameraId)
{
    switch (cameraId) {
    case 0:
        return nxp_v4l2_clipper0;
    case 1:
        return nxp_v4l2_clipper1;
    default:
        ALOGE("%s: invalid cameraId %d", __func__, cameraId);
        return 0;
    }
}

uint32_t get_board_record_v4l2_id(int cameraId)
{
    switch (cameraId) {
    case 0:
        return nxp_v4l2_clipper0;
    case 1:
        return nxp_v4l2_clipper1;
    default:
        ALOGE("%s: invalid cameraId %d", __func__, cameraId);
        return 0;
    }
}

bool get_board_camera_is_mipi(uint32_t v4l2_sensorId)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return false;
    case nxp_v4l2_sensor1:
        return false;
    default:
        return false;
    }
}

uint32_t get_board_preview_skip_frame(int v4l2_sensorId, int width, int height)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return 2;
    case nxp_v4l2_sensor1:
        return 2;
    default:
        return 0;
    }
}

uint32_t get_board_capture_skip_frame(int v4l2_sensorId, int width, int height)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return 2;
    case nxp_v4l2_sensor1:
        return 2;
    default:
        return 0;
    }
}

void set_board_preview_mode(int v4l2_sensorId, int width, int height)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return;
    case nxp_v4l2_sensor1:
        return;
    }
}

void set_board_capture_mode(int v4l2_sensorId, int width, int height)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return;
    case nxp_v4l2_sensor1:
        return;
    }
}

uint32_t get_board_camera_orientation(int cameraId)
{
    switch (cameraId) {
    case 0:
        return 0;
    case 1:
        return 0;
    default:
        return 0;
    }
}

// ----------------------------------------------------------------------------

} // namespace android
