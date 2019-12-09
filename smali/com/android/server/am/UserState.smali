.class public final Lcom/android/server/am/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# static fields
.field public static final STATE_BOOTING:I = 0x0

.field public static final STATE_RUNNING_LOCKED:I = 0x1

.field public static final STATE_RUNNING_UNLOCKED:I = 0x3

.field public static final STATE_RUNNING_UNLOCKING:I = 0x2

.field public static final STATE_SHUTDOWN:I = 0x5

.field public static final STATE_STOPPING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public lastState:I

.field public final mHandle:Landroid/os/UserHandle;

.field final mProviderLastReportedFg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mStopCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/IStopUserCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

.field public state:I

.field public switching:Z

.field public tokenProvided:Z


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserState;->state:I

    .line 56
    iput v0, p0, Lcom/android/server/am/UserState;->lastState:I

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    .line 69
    iput-object p1, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 70
    new-instance v0, Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/internal/util/ProgressReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 71
    return-void
.end method

.method public static stateToProtoEnum(I)I
    .locals 0

    .line 117
    packed-switch p0, :pswitch_data_0

    .line 124
    return p0

    .line 123
    :pswitch_0
    const/4 p0, 0x5

    return p0

    .line 122
    :pswitch_1
    const/4 p0, 0x4

    return p0

    .line 121
    :pswitch_2
    const/4 p0, 0x3

    return p0

    .line 120
    :pswitch_3
    const/4 p0, 0x2

    return p0

    .line 119
    :pswitch_4
    const/4 p0, 0x1

    return p0

    .line 118
    :pswitch_5
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 0

    .line 105
    packed-switch p0, :pswitch_data_0

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :pswitch_0
    const-string p0, "SHUTDOWN"

    return-object p0

    .line 110
    :pswitch_1
    const-string p0, "STOPPING"

    return-object p0

    .line 109
    :pswitch_2
    const-string p0, "RUNNING_UNLOCKED"

    return-object p0

    .line 108
    :pswitch_3
    const-string p0, "RUNNING_UNLOCKING"

    return-object p0

    .line 107
    :pswitch_4
    const-string p0, "RUNNING_LOCKED"

    return-object p0

    .line 106
    :pswitch_5
    const-string p0, "BOOTING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 129
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    const-string/jumbo p1, "state="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/am/UserState;->state:I

    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget-boolean p1, p0, Lcom/android/server/am/UserState;->switching:Z

    if-eqz p1, :cond_0

    const-string p1, " SWITCHING"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 133
    return-void
.end method

.method public setState(I)V
    .locals 5

    .line 85
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    if-ne p1, v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 89
    iget v1, p0, Lcom/android/server/am/UserState;->state:I

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/server/am/UserState;->state:I

    .line 91
    invoke-static {v4}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 93
    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 97
    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/UserState;->state:I

    .line 98
    invoke-static {v3}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {v0, p1}, Lcom/android/server/am/EventLogTags;->writeAmUserStateChanged(II)V

    .line 100
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    iput v0, p0, Lcom/android/server/am/UserState;->lastState:I

    .line 101
    iput p1, p0, Lcom/android/server/am/UserState;->state:I

    .line 102
    return-void
.end method

.method public setState(II)Z
    .locals 2

    .line 74
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    if-ne v0, p1, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 76
    const/4 p1, 0x1

    return p1

    .line 78
    :cond_0
    const-string p2, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was in state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/UserState;->state:I

    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 p1, 0x0

    return p1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 136
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 137
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    invoke-static {v0}, Lcom/android/server/am/UserState;->stateToProtoEnum(I)I

    move-result v0

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 138
    iget-boolean v0, p0, Lcom/android/server/am/UserState;->switching:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 139
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 140
    return-void
.end method
