.class final Lcom/android/server/pm/Settings$RestoredPermissionGrant;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RestoredPermissionGrant"
.end annotation


# instance fields
.field grantBits:I

.field granted:Z

.field permissionName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/pm/Settings;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isGranted"    # Z
    .param p4, "theGrantBits"    # I

    .line 316
    iput-object p1, p0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    .line 318
    iput-boolean p3, p0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    .line 319
    iput p4, p0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    .line 320
    return-void
.end method
