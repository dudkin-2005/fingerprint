.class public Lcom/oneplus/server/OIMCMessage;
.super Ljava/lang/Object;
.source "OIMCMessage.java"


# static fields
.field static final APPLY_LOCAL_CONFIG:I = 0xcc

.field static final APPLY_ONLINE_CONFIG:I = 0xcd

.field static final BINDER_REMOTE_ACTION:I = 0xd7

.field static final CALLBACK_MESSAGE_START:I = 0x2711

.field static final DUMP_SYS_INFO:I = 0x2712

.field static final FLUSH:I = 0x2710

.field static final FUNC_CONFIG:I = 0x68

.field static final FUNC_CONFIG_BY_CMD:I = 0x69

.field static final GET_FUNC_CONFIG:I = 0x2714

.field static final GET_FUNC_STATUS:I = 0x2713

.field static final GET_SYS_INFO:I = 0x2711

.field static final INFO_ALL:I = 0x3f

.field static final INFO_FUNCTION_LIST:I = 0x2

.field static final INFO_MODE_LIST:I = 0x1

.field static final INFO_PENDING_FUNCS:I = 0x20

.field static final INFO_RULE_LIST:I = 0x4

.field static final INFO_RUNNING_FUNCS:I = 0x10

.field static final INFO_SYSTEM_MODE:I = 0x8

.field static final MODE_CONFIG:I = 0x4

.field static final MODE_ENTER:I = 0x1

.field static final MODE_EXIT:I = 0x2

.field static final MODE_SWITCH:I = 0x3

.field static final MODE_TRANSITION:I = 0x5

.field static final MSG_MAJOR_TYPE_MASK:I = 0x3fffffff

.field static final MSG_MAJOR_TYPE_OFFSET:I = 0x0

.field static final MSG_MODE_TYPE_MASK:I = 0x3

.field static final MSG_MODE_TYPE_OFFSET:I = 0x1e

.field static final QUEUE_MESSAGE_END:I = 0x2710

.field static final QUEUE_MESSAGE_START:I = 0x1

.field static final REGISTER_FUNCTION:I = 0xca

.field static final REGISTER_FUNCTION_EXT:I = 0xcb

.field static final REGISTER_MODE:I = 0xc9

.field static final RULE_ADD:I = 0x65

.field static final RULE_ADD_AS_USER:I = 0xd0

.field static final RULE_ADD_BY_CMD:I = 0xd3

.field static final RULE_ADD_FOR_ALL:I = 0xd5

.field static final RULE_REMOVE:I = 0x66

.field static final RULE_REMOVE_AS_USER:I = 0xd1

.field static final RULE_REMOVE_BY_CMD:I = 0xd4

.field static final RULE_REMOVE_FOR_ALL:I = 0xd6

.field static final RUN_RULE_FOR_ALL:I = 0xd9

.field static final SAVE_CONFIG:I = 0xd2

.field static final TEST_MODE_TYPE:I = 0x3

.field static final UNBINDER_REMOTE_ACTION:I = 0xd8

.field static final USER_REMOVED:I = 0xcf

.field static final USER_SWITCH:I = 0xce


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final composeMsg(I)I
    .registers 2
    .param p0, "major"    # I

    .line 94
    shl-int/lit8 v0, p0, 0x0

    return v0
.end method

.method static final composeTMsg(I)I
    .registers 3
    .param p0, "major"    # I

    .line 98
    shl-int/lit8 v0, p0, 0x0

    const/high16 v1, -0x40000000    # -2.0f

    or-int/2addr v0, v1

    return v0
.end method

.method static final getMajorType(I)I
    .registers 3
    .param p0, "msgID"    # I

    .line 90
    shr-int/lit8 v0, p0, 0x0

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method static final getModeType(I)I
    .registers 2
    .param p0, "msgID"    # I

    .line 86
    shr-int/lit8 v0, p0, 0x1e

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method static final majorMsgString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mtype"    # I

    .line 111
    const/16 v0, 0x2710

    if-eq p0, v0, :cond_63

    packed-switch p0, :pswitch_data_68

    packed-switch p0, :pswitch_data_76

    packed-switch p0, :pswitch_data_7e

    packed-switch p0, :pswitch_data_86

    .line 194
    const-string v0, "Undefined_Type"

    goto/16 :goto_66

    .line 179
    :pswitch_14
    const-string v0, "RUN_RULE_FOR_ALL"

    .line 180
    .local v0, "type":Ljava/lang/String;
    goto/16 :goto_66

    .line 185
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_18
    const-string v0, "UNBINDER_REMOTE_ACTION"

    .line 186
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 182
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "BINDER_REMOTE_ACTION"

    .line 183
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 176
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "RULE_REMOVE_FOR_ALL"

    .line 177
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 173
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_21
    const-string v0, "RULE_ADD_FOR_ALL"

    .line 174
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 170
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_24
    const-string v0, "RULE_REMOVE_BY_CMD"

    .line 171
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 167
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_27
    const-string v0, "RULE_ADD_BY_CMD"

    .line 168
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 164
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "SAVE_CONFIG"

    .line 165
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 161
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "RULE_REMOVE_AS_USER"

    .line 162
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 158
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_30
    const-string v0, "RULE_ADD_AS_USER"

    .line 159
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 155
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_33
    const-string v0, "USER_REMOVED"

    .line 156
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 152
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_36
    const-string v0, "USER_SWITCH"

    .line 153
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 149
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_39
    const-string v0, "APPLY_ONLINE_CONFIG"

    .line 150
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 146
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_3c
    const-string v0, "APPLY_LOCAL_CONFIG"

    .line 147
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 143
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_3f
    const-string v0, "REGISTER_FUNCTION_EXT"

    .line 144
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 140
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_42
    const-string v0, "REGISTER_FUNCTION"

    .line 141
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 137
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_45
    const-string v0, "REGISTER_MODE"

    .line 138
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 191
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_48
    const-string v0, "FUNC_CONFIG_BY_CMD"

    .line 192
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 134
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_4b
    const-string v0, "FUNC_CONFIG"

    .line 135
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 131
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_4e
    const-string v0, "RULE_REMOVE"

    .line 132
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 128
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_51
    const-string v0, "RULE_ADD"

    .line 129
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 125
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_54
    const-string v0, "MODE_TRANSITION"

    .line 126
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 122
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_57
    const-string v0, "MODE_CONFIG"

    .line 123
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 119
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_5a
    const-string v0, "MODE_SWITCH"

    .line 120
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 116
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_5d
    const-string v0, "MODE_EXIT"

    .line 117
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 113
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_60
    const-string v0, "MODE_ENTER"

    .line 114
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_66

    .line 188
    .end local v0    # "type":Ljava/lang/String;
    :cond_63
    const-string v0, "FLUSH"

    .line 189
    .restart local v0    # "type":Ljava/lang/String;
    nop

    .line 194
    :goto_66
    nop

    .line 198
    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x65
        :pswitch_51
        :pswitch_4e
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x68
        :pswitch_4b
        :pswitch_48
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0xc9
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method static final modeTypeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mtype"    # I

    .line 103
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    .line 104
    const-string v0, "TestModeMsg"

    return-object v0

    .line 106
    :cond_6
    const-string v0, ""

    return-object v0
.end method
