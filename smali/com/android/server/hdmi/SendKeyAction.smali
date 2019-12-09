.class final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SendKeyAction.java"


# static fields
.field private static final AWAIT_LONGPRESS_MS:I = 0x190

.field private static final AWAIT_RELEASE_KEY_MS:I = 0x3e8

.field private static final STATE_CHECKING_LONGPRESS:I = 0x1

.field private static final STATE_PROCESSING_KEYCODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SendKeyAction"


# instance fields
.field private mLastKeycode:I

.field private mLastSendKeyTime:J

.field private final mTargetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 77
    iput p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    .line 78
    iput p3, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 79
    return-void
.end method

.method private getCurrentTime()J
    .locals 2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private sendKeyDown(I)V
    .locals 2

    .line 145
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object p1

    .line 146
    if-nez p1, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 151
    return-void
.end method

.method private sendKeyUp()V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 2

    .line 166
    iget p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    packed-switch p1, :pswitch_data_0

    .line 181
    const-string p1, "SendKeyAction"

    const-string v0, "Not in a valid state"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 179
    goto :goto_0

    .line 169
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 170
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    .line 171
    iget p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 172
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 173
    iget p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 174
    nop

    .line 184
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    .line 161
    const/4 p1, 0x0

    return p1
.end method

.method processKeyEvent(IZ)V
    .locals 4

    .line 107
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 108
    const-string p1, "SendKeyAction"

    const-string p2, "Not in a valid state"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 111
    :cond_0
    if-eqz p2, :cond_3

    .line 114
    iget p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-eq p1, p2, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 116
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 117
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 120
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 128
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 131
    :cond_2
    iget-object p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 132
    iget p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 133
    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    goto :goto_0

    .line 137
    :cond_3
    iget p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-ne p1, p2, :cond_4

    .line 138
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 142
    :cond_4
    :goto_0
    return-void
.end method

.method public start()Z
    .locals 3

    .line 83
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 84
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 86
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    .line 89
    return v1

    .line 91
    :cond_0
    iput v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    .line 92
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v2, 0x190

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    .line 93
    return v1
.end method
