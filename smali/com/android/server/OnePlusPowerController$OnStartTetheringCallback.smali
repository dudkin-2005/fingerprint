.class final Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3580
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusPowerController$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/OnePlusPowerController$1;

    .line 3580
    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .registers 1

    .line 3588
    return-void
.end method

.method public onTetheringStarted()V
    .registers 1

    .line 3584
    return-void
.end method
