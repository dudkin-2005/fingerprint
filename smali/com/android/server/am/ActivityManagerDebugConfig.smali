.class Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field static final APPEND_CATEGORY_NAME:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static DEBUG_ALL:Z = false

.field static DEBUG_ALL_ACTIVITIES:Z = false

.field static DEBUG_ANR:Z = false

.field static DEBUG_APP:Z = false

.field static DEBUG_BACKGROUND_CHECK:Z = false

.field static DEBUG_BACKUP:Z = false

.field static DEBUG_BROADCAST:Z = false

.field static DEBUG_BROADCAST_BACKGROUND:Z = false

.field static DEBUG_BROADCAST_LIGHT:Z = false

.field static DEBUG_CLEANUP:Z = false

.field static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_CONTAINERS:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_FOREGROUND_SERVICE:Z = false

.field static DEBUG_IDLE:Z = false

.field static DEBUG_IMMERSIVE:Z = false

.field static DEBUG_LOCKTASK:Z = false

.field static DEBUG_LRU:Z = false

.field static DEBUG_METRICS:Z = false

.field static DEBUG_MU:Z = false

.field static DEBUG_NETWORK:Z = false

.field static DEBUG_OOM_ADJ:Z = false

.field static DEBUG_OOM_ADJ_REASON:Z = false

.field static DEBUG_PAUSE:Z = false

.field static DEBUG_PERMISSIONS_REVIEW:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_POWER_QUICK:Z = false

.field static DEBUG_PROCESSES:Z = false

.field static DEBUG_PROCESS_OBSERVERS:Z = false

.field static DEBUG_PROVIDER:Z = false

.field static DEBUG_PSS:Z = false

.field static DEBUG_RECENTS:Z = false

.field static DEBUG_RECENTS_TRIM_TASKS:Z = false

.field static DEBUG_RELEASE:Z = false

.field static DEBUG_RESULTS:Z = false

.field static DEBUG_SAVED_STATE:Z = false

.field static DEBUG_SERVICE:Z = false

.field static DEBUG_SERVICE_EXECUTING:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STATES:Z = false

.field static DEBUG_SWITCH:Z = false

.field static DEBUG_TASKS:Z = false

.field static DEBUG_TRANSITION:Z = false

.field static DEBUG_UID_OBSERVERS:Z = false

.field static DEBUG_URI_PERMISSION:Z = false

.field static DEBUG_USAGE_STATS:Z = false

.field static DEBUG_USER_LEAVING:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static DEBUG_WHITELISTS:Z = false

.field static final LOG_TYPE_ACTIVITY:I = 0x2

.field static final LOG_TYPE_ALL:I = 0x1

.field static final LOG_TYPE_BROADCAST:I = 0x8

.field static final LOG_TYPE_OTHER:I = 0x10

.field static final LOG_TYPE_SERVICE:I = 0x4

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String; = ""

.field static final POSTFIX_APP:Ljava/lang/String; = ""

.field static final POSTFIX_BACKUP:Ljava/lang/String; = ""

.field static final POSTFIX_BROADCAST:Ljava/lang/String; = ""

.field static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field static final POSTFIX_CONFIGURATION:Ljava/lang/String; = ""

.field static final POSTFIX_CONTAINERS:Ljava/lang/String; = ""

.field static final POSTFIX_FOCUS:Ljava/lang/String; = ""

.field static final POSTFIX_IDLE:Ljava/lang/String; = ""

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String; = ""

.field static final POSTFIX_LOCKTASK:Ljava/lang/String; = ""

.field static final POSTFIX_LRU:Ljava/lang/String; = ""

.field static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field static final POSTFIX_NETWORK:Ljava/lang/String; = "_Network"

.field static final POSTFIX_OOM_ADJ:Ljava/lang/String; = ""

.field static final POSTFIX_PAUSE:Ljava/lang/String; = ""

.field static final POSTFIX_POWER:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESSES:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String; = ""

.field static final POSTFIX_PROVIDER:Ljava/lang/String; = ""

.field static final POSTFIX_PSS:Ljava/lang/String; = ""

.field static final POSTFIX_RECENTS:Ljava/lang/String; = ""

.field static final POSTFIX_RELEASE:Ljava/lang/String; = ""

.field static final POSTFIX_RESULTS:Ljava/lang/String; = ""

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String; = ""

.field static final POSTFIX_STACK:Ljava/lang/String; = ""

.field static final POSTFIX_STATES:Ljava/lang/String; = ""

.field static final POSTFIX_SWITCH:Ljava/lang/String; = ""

.field static final POSTFIX_TASKS:Ljava/lang/String; = ""

.field static final POSTFIX_TRANSITION:Ljava/lang/String; = ""

.field static final POSTFIX_UID_OBSERVERS:Ljava/lang/String; = ""

.field static final POSTFIX_URI_PERMISSION:Ljava/lang/String; = ""

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String; = ""

.field static final POSTFIX_VISIBILITY:Ljava/lang/String; = ""

.field static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field static final TAG_WITH_CLASS_NAME:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    .line 45
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    .line 48
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_13

    move v1, v0

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 49
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    .line 50
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_1e

    move v1, v0

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    .line 51
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_27

    move v1, v0

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    .line 52
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_30

    move v1, v0

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 53
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_39

    move v1, v0

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 54
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v1, :cond_42

    move v1, v0

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 55
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v1, :cond_4b

    move v1, v0

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 56
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_54

    move v1, v0

    goto :goto_55

    :cond_54
    move v1, v2

    :goto_55
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 57
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_5d

    move v1, v0

    goto :goto_5e

    :cond_5d
    move v1, v2

    :goto_5e
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 58
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_66

    move v1, v0

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 59
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 60
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_71

    move v1, v0

    goto :goto_72

    :cond_71
    move v1, v2

    :goto_72
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    .line 61
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_7a

    move v1, v0

    goto :goto_7b

    :cond_7a
    move v1, v2

    :goto_7b
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 62
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_83

    move v1, v0

    goto :goto_84

    :cond_83
    move v1, v2

    :goto_84
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 63
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_8c

    move v1, v0

    goto :goto_8d

    :cond_8c
    move v1, v2

    :goto_8d
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 64
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_95

    move v1, v0

    goto :goto_96

    :cond_95
    move v1, v2

    :goto_96
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 65
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_9e

    move v1, v0

    goto :goto_9f

    :cond_9e
    move v1, v2

    :goto_9f
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    .line 66
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_a7

    move v1, v0

    goto :goto_a8

    :cond_a7
    move v1, v2

    :goto_a8
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 67
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_b0

    move v1, v0

    goto :goto_b1

    :cond_b0
    move v1, v2

    :goto_b1
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    .line 68
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_b9

    move v1, v0

    goto :goto_ba

    :cond_b9
    move v1, v2

    :goto_ba
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 69
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_c2

    move v1, v0

    goto :goto_c3

    :cond_c2
    move v1, v2

    :goto_c3
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 70
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-nez v1, :cond_cb

    move v1, v0

    goto :goto_cc

    :cond_cb
    move v1, v2

    :goto_cc
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 71
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_d4

    move v1, v0

    goto :goto_d5

    :cond_d4
    move v1, v2

    :goto_d5
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 72
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_dd

    move v1, v0

    goto :goto_de

    :cond_dd
    move v1, v2

    :goto_de
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 73
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_e6

    move v1, v0

    goto :goto_e7

    :cond_e6
    move v1, v2

    :goto_e7
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 74
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_ef

    move v1, v0

    goto :goto_f0

    :cond_ef
    move v1, v2

    :goto_f0
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 75
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_fd

    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_fb

    goto :goto_fd

    :cond_fb
    move v1, v0

    goto :goto_fe

    :cond_fd
    :goto_fd
    move v1, v2

    :goto_fe
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 76
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-nez v1, :cond_106

    move v1, v0

    goto :goto_107

    :cond_106
    move v1, v2

    :goto_107
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    .line 77
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_10f

    move v1, v0

    goto :goto_110

    :cond_10f
    move v1, v2

    :goto_110
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 78
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_118

    move v1, v0

    goto :goto_119

    :cond_118
    move v1, v2

    :goto_119
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 79
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_121

    move v1, v0

    goto :goto_122

    :cond_121
    move v1, v2

    :goto_122
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 80
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_12a

    move v1, v0

    goto :goto_12b

    :cond_12a
    move v1, v2

    :goto_12b
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 81
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_133

    move v1, v0

    goto :goto_134

    :cond_133
    move v1, v2

    :goto_134
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    .line 82
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_13c

    move v1, v0

    goto :goto_13d

    :cond_13c
    move v1, v2

    :goto_13d
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 83
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_145

    move v1, v0

    goto :goto_146

    :cond_145
    move v1, v2

    :goto_146
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    .line 84
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_14e

    move v1, v0

    goto :goto_14f

    :cond_14e
    move v1, v2

    :goto_14f
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    .line 85
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_157

    move v1, v0

    goto :goto_158

    :cond_157
    move v1, v2

    :goto_158
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 86
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_160

    move v1, v0

    goto :goto_161

    :cond_160
    move v1, v2

    :goto_161
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    .line 87
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_169

    move v1, v0

    goto :goto_16a

    :cond_169
    move v1, v2

    :goto_16a
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 88
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_172

    move v1, v0

    goto :goto_173

    :cond_172
    move v1, v2

    :goto_173
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 89
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_17b

    move v1, v0

    goto :goto_17c

    :cond_17b
    move v1, v2

    :goto_17c
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_URI_PERMISSION:Z

    .line 90
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_184

    move v1, v0

    goto :goto_185

    :cond_184
    move v1, v2

    :goto_185
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 91
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_18d

    move v1, v0

    goto :goto_18e

    :cond_18d
    move v1, v2

    :goto_18e
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 92
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_196

    move v1, v0

    goto :goto_197

    :cond_196
    move v1, v2

    :goto_197
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 93
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_19f

    move v1, v0

    goto :goto_1a0

    :cond_19f
    move v1, v2

    :goto_1a0
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 94
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_1a8

    move v1, v0

    goto :goto_1a9

    :cond_1a8
    move v1, v2

    :goto_1a9
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_WHITELISTS:Z

    .line 95
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_1b0

    goto :goto_1b1

    :cond_1b0
    move v0, v2

    :goto_1b1
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_METRICS:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static switchAMSLog(IZ)V
    .registers 3
    .param p0, "type"    # I
    .param p1, "on"    # Z

    .line 104
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_2a

    .line 105
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 106
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    .line 107
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 108
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 109
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 110
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    .line 111
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 112
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 113
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 114
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    .line 115
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 116
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 117
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 118
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    .line 119
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    .line 120
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 121
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    .line 122
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 123
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    .line 126
    :cond_2a
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_34

    .line 127
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 128
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    .line 129
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 132
    :cond_34
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3e

    .line 133
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 134
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 135
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 138
    :cond_3e
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_64

    .line 139
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 140
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 141
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 142
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 143
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 144
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 145
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 146
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 147
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 148
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 149
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 150
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 151
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 152
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 153
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_URI_PERMISSION:Z

    .line 154
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 155
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 157
    :cond_64
    return-void
.end method
