LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libKAIMYEntitySaba

LOCAL_CPP_FEATURES += exceptions

FILE_LIST := $(wildcard \
		$(LOCAL_PATH)/bullet3/src \
		$(LOCAL_PATH)/saba/src \
		$(LOCAL_PATH)/saba/external/glm/include \
		$(LOCAL_PATH)/saba/external/stb/include \
		$(LOCAL_PATH)/saba/external/spdlog/include \
		$(LOCAL_PATH)/saba/external/tinyxfileloader/include \
		$(LOCAL_PATH)/saba/external/tinyobjloader/include \
		)

LOCAL_C_INCLUDES := $(FILE_LIST)

FILE_LIST := $(wildcard \
		$(LOCAL_PATH)/*.cpp \
		$(LOCAL_PATH)/saba/src/Saba/Base/*.cpp \
		$(LOCAL_PATH)/saba/src/Saba/Model/MMD/*.cpp \
		$(LOCAL_PATH)/saba/src/Saba/Model/OBJ/*.cpp \
		$(LOCAL_PATH)/saba/src/Saba/Model/XFile/*.cpp \
		)

LOCAL_SRC_FILES := $(FILE_LIST)

# Bullet3 Sources
LOCAL_BULLET3_PATH := $(LOCAL_PATH)/bullet3

FILE_LIST := $(wildcard \
		$(LOCAL_BULLET3_PATH)/src/LinearMath/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/Bullet3Common/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletCollision/BroadphaseCollision/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletCollision/CollisionDispatch/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletCollision/CollisionShapes/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletCollision/NarrowPhaseCollision/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletDynamics/ConstraintSolver/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletDynamics/Dynamics/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletDynamics/Featherstone/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletDynamics/MLCPSolvers/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletDynamics/Vehicle/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletDynamics/Character/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletSoftBody/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletSoftBody/BulletReducedDeformableBody/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletInverseDynamics/*.cpp \
		$(LOCAL_BULLET3_PATH)/src/BulletInverseDynamics/details/*.cpp \
		)

LOCAL_SRC_FILES += $(FILE_LIST)

include $(BUILD_SHARED_LIBRARY)
