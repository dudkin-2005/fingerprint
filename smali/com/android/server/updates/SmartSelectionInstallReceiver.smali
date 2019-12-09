.class public Lcom/android/server/updates/SmartSelectionInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SmartSelectionInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 22
    const-string v0, "/data/misc/textclassifier/"

    const-string/jumbo v1, "textclassifier.model"

    const-string v2, "metadata/classification"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected verifyVersion(II)Z
    .locals 0

    .line 31
    const/4 p1, 0x1

    return p1
.end method
