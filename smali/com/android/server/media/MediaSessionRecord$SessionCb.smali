.class Lcom/android/server/media/MediaSessionRecord$SessionCb;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionCb"
.end annotation


# instance fields
.field private final mCb:Landroid/media/session/ISessionCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 908
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;
    .locals 0

    .line 903
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-object p0
.end method

.method private createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;
    .locals 2

    .line 1137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1138
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1139
    return-object v0
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZI)V
    .locals 6

    .line 1116
    if-eqz p5, :cond_0

    .line 1117
    :try_start_0
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    const/16 p4, 0x3e8

    const/4 p5, 0x0

    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, p5

    move p5, p6

    invoke-interface/range {p0 .. p5}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V

    goto :goto_0

    .line 1122
    :catch_0
    move-exception p1

    goto :goto_1

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :goto_0
    goto :goto_2

    .line 1122
    :goto_1
    nop

    .line 1123
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in adjustVolume."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    :goto_2
    return-void
.end method

.method public fastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 1

    .line 1080
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onFastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    goto :goto_0

    .line 1081
    :catch_0
    move-exception p1

    .line 1082
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in fastForward."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    :goto_0
    return-void
.end method

.method public next(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 1

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onNext(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    goto :goto_0

    .line 1063
    :catch_0
    move-exception p1

    .line 1064
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in next."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    :goto_0
    return-void
.end method

.method public pause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 1

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    goto :goto_0

    .line 1047
    :catch_0
    move-exception p1

    .line 1048
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in pause."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    :goto_0
    return-void
.end method

.method public play(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 1

    .line 1002
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPlay(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    goto :goto_0

    .line 1003
    :catch_0
    move-exception p1

    .line 1004
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in play."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    :goto_0
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_0

    .line 1012
    :catch_0
    move-exception p1

    .line 1013
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in playFromMediaId."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    :goto_0
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    goto :goto_0

    .line 1021
    :catch_0
    move-exception p1

    .line 1022
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in playFromSearch."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    :goto_0
    return-void
.end method

.method public playFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7

    .line 1029
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    goto :goto_0

    .line 1030
    :catch_0
    move-exception p1

    .line 1031
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in playFromUri."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1033
    :goto_0
    return-void
.end method

.method public prepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 1

    .line 967
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPrepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    goto :goto_0

    .line 968
    :catch_0
    move-exception p1

    .line 969
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in prepare."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    :goto_0
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 976
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    goto :goto_0

    .line 977
    :catch_0
    move-exception p1

    .line 978
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in prepareFromMediaId."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    :goto_0
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    goto :goto_0

    .line 986
    :catch_0
    move-exception p1

    .line 987
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in prepareFromSearch."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    :goto_0
    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    goto :goto_0

    .line 995
    :catch_0
    move-exception p1

    .line 996
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in prepareFromUri."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    :goto_0
    return-void
.end method

.method public previous(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 1

    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPrevious(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    goto :goto_0

    .line 1072
    :catch_0
    move-exception p1

    .line 1073
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in previous."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1075
    :goto_0
    return-void
.end method

.method public rate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    .locals 6

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onRate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    goto :goto_0

    .line 1108
    :catch_0
    move-exception p1

    .line 1109
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in rate."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    :goto_0
    return-void
.end method

.method public rewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 1

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onRewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    goto :goto_0

    .line 1090
    :catch_0
    move-exception p1

    .line 1091
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in rewind."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    :goto_0
    return-void
.end method

.method public seekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    .locals 7

    .line 1098
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onSeekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    goto :goto_0

    .line 1099
    :catch_0
    move-exception p1

    .line 1100
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in seekTo."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1102
    :goto_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    goto :goto_0

    .line 949
    :catch_0
    move-exception p1

    .line 950
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in sendCommand."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    :goto_0
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    goto :goto_0

    .line 959
    :catch_0
    move-exception p1

    .line 960
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in sendCustomAction."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    :goto_0
    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZLandroid/view/KeyEvent;)Z
    .locals 6

    .line 931
    if-eqz p5, :cond_0

    .line 932
    :try_start_0
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    const/16 p4, 0x3e8

    .line 933
    invoke-direct {p0, p6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object p5

    const/4 p6, 0x0

    const/4 v0, 0x0

    .line 932
    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, p5

    move p5, p6

    move-object p6, v0

    invoke-interface/range {p0 .. p6}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_0

    .line 939
    :catch_0
    move-exception p1

    goto :goto_1

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 936
    invoke-direct {p0, p6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v5

    .line 935
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onMediaButtonFromController(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 939
    :goto_1
    nop

    .line 940
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in sendMediaRequest."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    const/4 p1, 0x0

    return p1
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 7

    .line 913
    if-eqz p4, :cond_0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/16 v3, 0x3e8

    .line 915
    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v4

    .line 914
    move v5, p6

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_0

    .line 921
    :catch_0
    move-exception p1

    goto :goto_1

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 918
    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v4

    .line 917
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 921
    :goto_1
    nop

    .line 922
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in sendMediaRequest."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 924
    const/4 p1, 0x0

    return p1
.end method

.method public setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    .locals 6

    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    goto :goto_0

    .line 1131
    :catch_0
    move-exception p1

    .line 1132
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in setVolumeTo."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    :goto_0
    return-void
.end method

.method public skipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    .locals 7

    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onSkipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    goto :goto_0

    .line 1039
    :catch_0
    move-exception p1

    .line 1040
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in skipToTrack"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    :goto_0
    return-void
.end method

.method public stop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 1

    .line 1054
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onStop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    goto :goto_0

    .line 1055
    :catch_0
    move-exception p1

    .line 1056
    const-string p2, "MediaSessionRecord"

    const-string p3, "Remote failure in stop."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    :goto_0
    return-void
.end method
