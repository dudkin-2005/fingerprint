.class Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredDeviceConnectionState"
.end annotation


# instance fields
.field public final mAddress:Ljava/lang/String;

.field public final mCaller:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mState:I

.field public final mType:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "type"    # I
    .param p3, "state"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "caller"    # Ljava/lang/String;

    .line 5383
    iput-object p1, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5384
    iput p2, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    .line 5385
    iput p3, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    .line 5386
    iput-object p4, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    .line 5387
    iput-object p5, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    .line 5388
    iput-object p6, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 5389
    return-void
.end method
