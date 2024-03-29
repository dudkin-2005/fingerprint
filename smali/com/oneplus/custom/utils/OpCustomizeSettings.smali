.class public Lcom/oneplus/custom/utils/OpCustomizeSettings;
.super Ljava/lang/Object;
.source "OpCustomizeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;,
        Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "OpCustomizeSettings"

.field private static sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

.field private static final sProjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Lcom/oneplus/custom/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackCoverColor()J
    .registers 3

    .line 160
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    .line 161
    .local v0, "ocs":Lcom/oneplus/custom/utils/OpCustomizeSettings;
    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomBackCoverColor()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getBackCoverType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    .registers 2

    .line 149
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    .line 150
    .local v0, "ocs":Lcom/oneplus/custom/utils/OpCustomizeSettings;
    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomBackCoverType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .registers 2

    .line 133
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    .line 134
    .local v0, "ocs":Lcom/oneplus/custom/utils/OpCustomizeSettings;
    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;
    .registers 3

    .line 176
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    if-nez v0, :cond_68

    .line 177
    const-string v0, "OpCustomizeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sProjectName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "16859"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "17801"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_61

    .line 180
    :cond_32
    const-string v0, "17819"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "18801"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "18811"

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sProjectName:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_59

    .line 185
    :cond_51
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    goto :goto_68

    .line 183
    :cond_59
    :goto_59
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    goto :goto_68

    .line 179
    :cond_61
    :goto_61
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    .line 188
    :cond_68
    :goto_68
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->sOpCustomizeSettings:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    return-object v0
.end method

.method public static getWPKey(Landroid/content/Context;)[B
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 171
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    .line 172
    .local v0, "ocs":Lcom/oneplus/custom/utils/OpCustomizeSettings;
    invoke-virtual {v0, p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getSecureWPKey(Landroid/content/Context;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getCustomBackCoverColor()J
    .registers 3

    .line 198
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getCustomBackCoverType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    .registers 2

    .line 195
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    return-object v0
.end method

.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .registers 2

    .line 192
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object v0
.end method

.method protected getSecureWPKey(Landroid/content/Context;)[B
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method
