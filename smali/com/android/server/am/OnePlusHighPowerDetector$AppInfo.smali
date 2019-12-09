.class public Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public final info_uid:I

.field public final pid:I

.field public pkgName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;I)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "info_uid"    # I

    .line 4576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4577
    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->uid:I

    .line 4578
    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    .line 4579
    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    .line 4580
    iput p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->info_uid:I

    .line 4581
    return-void
.end method
