.class final Lcom/android/server/trust/TrustManagerService$AgentInfo;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AgentInfo"
.end annotation


# instance fields
.field agent:Lcom/android/server/trust/TrustAgentWrapper;

.field component:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

.field userId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService$1;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 184
    instance-of v0, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    return v1

    .line 187
    :cond_0
    check-cast p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 188
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget p1, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    add-int/2addr v0, v1

    return v0
.end method
