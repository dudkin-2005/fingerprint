.class Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISessionControllerCallbackHolder"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/ISessionControllerCallback;

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;I)V
    .locals 0

    .line 1420
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 1422
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    .line 1423
    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mUid:I

    .line 1424
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;
    .locals 0

    .line 1414
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;
    .locals 0

    .line 1414
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    return-object p0
.end method