.class Lcom/android/server/pm/PackageManagerService$VerificationInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerificationInfo"
.end annotation


# static fields
.field public static final NO_UID:I = -0x1


# instance fields
.field final installerUid:I

.field final originatingUid:I

.field final originatingUri:Landroid/net/Uri;

.field final referrer:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 0

    .line 15453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15454
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    .line 15455
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    .line 15456
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    .line 15457
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    .line 15458
    return-void
.end method
