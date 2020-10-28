
#include <stdint.h>

#define MPI 3.1415 
#define CONSTANTS_RADIUS_OF_EARTH 6350
#define MAXWAYPOINTS 20
#define MAX_VERTICAL_ALTITUDE 400


struct mission_item_s {
	double lat;					/**< latitude in degrees				*/
	double lon;					/**< longitude in degrees				*/
    float altitude;				/**< altitude in meters	(AMSL)			*/
    int nav_cmd;                /**< nav command associated with item   */
    bool altitude_is_relative;  
};

struct mission_s {
	struct mission_item_s items [MAXWAYPOINTS]; 
	int count; 					/**< number of waypoints in mission 	*/
};

enum NAV_CMD {
	NAV_CMD_IDLE = 0,
	NAV_CMD_WAYPOINT = 16,
	NAV_CMD_LOITER_UNLIMITED = 17,
	NAV_CMD_LOITER_TIME_LIMIT = 19,
	NAV_CMD_RETURN_TO_LAUNCH = 20,
	NAV_CMD_LAND = 21,
	NAV_CMD_TAKEOFF = 22,
	NAV_CMD_LOITER_TO_ALT = 31,
	NAV_CMD_DO_FOLLOW_REPOSITION = 33,
	NAV_CMD_VTOL_TAKEOFF = 84,
	NAV_CMD_VTOL_LAND = 85,
	NAV_CMD_DELAY = 93,
	NAV_CMD_DO_JUMP = 177,
	NAV_CMD_DO_CHANGE_SPEED = 178,
	NAV_CMD_DO_SET_HOME = 179,
	NAV_CMD_DO_SET_SERVO = 183,
	NAV_CMD_DO_LAND_START = 189,
	NAV_CMD_DO_SET_ROI_LOCATION = 195,
	NAV_CMD_DO_SET_ROI_WPNEXT_OFFSET = 196,
	NAV_CMD_DO_SET_ROI_NONE = 197,
	NAV_CMD_DO_CONTROL_VIDEO = 200,
	NAV_CMD_DO_SET_ROI = 201,
	NAV_CMD_DO_DIGICAM_CONTROL = 203,
	NAV_CMD_DO_MOUNT_CONFIGURE = 204,
	NAV_CMD_DO_MOUNT_CONTROL = 205,
	NAV_CMD_DO_SET_CAM_TRIGG_INTERVAL = 214,
	NAV_CMD_DO_SET_CAM_TRIGG_DIST = 206,
	NAV_CMD_SET_CAMERA_MODE = 530,
	NAV_CMD_SET_CAMERA_ZOOM = 531,
	NAV_CMD_IMAGE_START_CAPTURE = 2000,
	NAV_CMD_IMAGE_STOP_CAPTURE = 2001,
	NAV_CMD_DO_TRIGGER_CONTROL = 2003,
	NAV_CMD_VIDEO_START_CAPTURE = 2500,
	NAV_CMD_VIDEO_STOP_CAPTURE = 2501,
	NAV_CMD_DO_VTOL_TRANSITION = 3000,
	NAV_CMD_FENCE_RETURN_POINT = 5000,
	NAV_CMD_FENCE_POLYGON_VERTEX_INCLUSION = 5001,
	NAV_CMD_FENCE_POLYGON_VERTEX_EXCLUSION = 5002,
	NAV_CMD_FENCE_CIRCLE_INCLUSION = 5003,
	NAV_CMD_FENCE_CIRCLE_EXCLUSION = 5004,
	NAV_CMD_CONDITION_GATE = 4501,
	NAV_CMD_INVALID = UINT16_MAX /* ensure that casting a large number results in a specific error */
};

bool checkHomePositionAltitude(const mission_s &, float, bool);
bool checkDistancesBetweenWaypoints(const mission_s &, float);
bool checkMissionItemValidity(const mission_s &); 
bool checkGeofence(const mission_s &, bool, int, int, int, int);
bool checkMissionFeasible(const mission_s &mission,
		float max_distance_between_waypoints,
		bool home_alt_valid, float home_alt,
		bool inclusion,  int high_lat, int  low_lat, int high_lon, int low_lon);

