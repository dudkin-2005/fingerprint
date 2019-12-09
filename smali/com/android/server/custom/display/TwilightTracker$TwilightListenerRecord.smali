.class Lcom/android/server/custom/display/TwilightTracker$TwilightListenerRecord;
.super Ljava/lang/Object;
.source "TwilightTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/TwilightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwilightListenerRecord"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/custom/display/TwilightTracker$TwilightListener;


# direct methods
.method public constructor <init>(Lcom/android/server/custom/display/TwilightTracker$TwilightListener;Landroid/os/Handler;)V
    .locals 0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightListenerRecord;->mListener:Lcom/android/server/custom/display/TwilightTracker$TwilightListener;

    .line 552
    iput-object p2, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    .line 553
    return-void
.end method


# virtual methods
.method public postUpdate()V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method

.method public run()V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$TwilightListenerRecord;->mListener:Lcom/android/server/custom/display/TwilightTracker$TwilightListener;

    invoke-interface {v0}, Lcom/android/server/custom/display/TwilightTracker$TwilightListener;->onTwilightStateChanged()V

    .line 562
    return-void
.end method
