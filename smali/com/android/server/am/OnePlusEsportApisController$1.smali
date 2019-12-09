.class Lcom/android/server/am/OnePlusEsportApisController$1;
.super Landroid/util/Singleton;
.source "OnePlusEsportApisController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusEsportApisController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/android/server/am/OnePlusEsportApisController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/android/server/am/OnePlusEsportApisController;
    .registers 3

    .line 54
    new-instance v0, Lcom/android/server/am/OnePlusEsportApisController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusEsportApisController;-><init>(Lcom/android/server/am/OnePlusEsportApisController$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusEsportApisController$1;->create()Lcom/android/server/am/OnePlusEsportApisController;

    move-result-object v0

    return-object v0
.end method
