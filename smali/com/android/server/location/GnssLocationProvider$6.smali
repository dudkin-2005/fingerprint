.class Lcom/android/server/location/GnssLocationProvider$6;
.super Ljava/util/HashMap;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 1

    .line 685
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 687
    const-string p1, "SUPL_VER"

    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$d34_RfOwt4eW2WTSkMsS8UoXSqY;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$d34_RfOwt4eW2WTSkMsS8UoXSqY;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string p1, "SUPL_MODE"

    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$7ITcPSS3RLwdJLvqPT1qDZbuYgU;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$7ITcPSS3RLwdJLvqPT1qDZbuYgU;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string p1, "SUPL_ES"

    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$pJxRP_yDkUU0yl--Fw431I8fN70;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$pJxRP_yDkUU0yl--Fw431I8fN70;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string p1, "LPP_PROFILE"

    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$vt8zMIL_RIFwKcgd1rz4Y33NVyk;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$vt8zMIL_RIFwKcgd1rz4Y33NVyk;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string p1, "A_GLONASS_POS_PROTOCOL_SELECT"

    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$fIEuYdSEFZVtEQQ5H4O-bTmj-LE;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$fIEuYdSEFZVtEQQ5H4O-bTmj-LE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string p1, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$M4Zfb6dp_EFsOdGGju4tOPs-lc4;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$M4Zfb6dp_EFsOdGGju4tOPs-lc4;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string p1, "GPS_LOCK"

    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$0TBIDASC8cGFJxhCk2blveu19LI;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$0TBIDASC8cGFJxhCk2blveu19LI;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .locals 0

    .line 687
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$2000(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$1(I)Z
    .locals 0

    .line 688
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1900(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$2(I)Z
    .locals 0

    .line 689
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1800(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$3(I)Z
    .locals 0

    .line 690
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1700(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$4(I)Z
    .locals 0

    .line 692
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1600(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$5(I)Z
    .locals 0

    .line 694
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1500(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$6(I)Z
    .locals 0

    .line 695
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1400(I)Z

    move-result p0

    return p0
.end method
