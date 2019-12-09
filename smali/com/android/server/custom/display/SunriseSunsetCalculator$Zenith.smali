.class Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;
.super Ljava/lang/Object;
.source "SunriseSunsetCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/SunriseSunsetCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Zenith"
.end annotation


# static fields
.field public static final ASTRONOMICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

.field public static final CIVIL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

.field public static final NAUTICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

.field public static final OFFICIAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;


# instance fields
.field private final degrees:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 297
    new-instance v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    const-wide/high16 v1, 0x405b000000000000L    # 108.0

    invoke-direct {v0, v1, v2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;-><init>(D)V

    sput-object v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->ASTRONOMICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    .line 300
    new-instance v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    const-wide v1, 0x4059800000000000L    # 102.0

    invoke-direct {v0, v1, v2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;-><init>(D)V

    sput-object v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->NAUTICAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    .line 303
    new-instance v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    const-wide/high16 v1, 0x4058000000000000L    # 96.0

    invoke-direct {v0, v1, v2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;-><init>(D)V

    sput-object v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->CIVIL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    .line 306
    new-instance v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    const-wide v1, 0x4056b554c985f06fL    # 90.8333

    invoke-direct {v0, v1, v2}, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;-><init>(D)V

    sput-object v0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->OFFICIAL:Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->degrees:Ljava/math/BigDecimal;

    .line 312
    return-void
.end method


# virtual methods
.method public degrees()Ljava/math/BigDecimal;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/custom/display/SunriseSunsetCalculator$Zenith;->degrees:Ljava/math/BigDecimal;

    return-object v0
.end method
