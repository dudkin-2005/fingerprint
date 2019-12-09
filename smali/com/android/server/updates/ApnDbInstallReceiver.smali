.class public Lcom/android/server/updates/ApnDbInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "ApnDbInstallReceiver.java"


# static fields
.field private static final UPDATE_APN_DB:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "update_db"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/updates/ApnDbInstallReceiver;->UPDATE_APN_DB:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 32
    const-string v0, "/data/misc/apns/"

    const-string v1, "apns-conf.xml"

    const-string v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 38
    sget-object p2, Lcom/android/server/updates/ApnDbInstallReceiver;->UPDATE_APN_DB:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    return-void
.end method
