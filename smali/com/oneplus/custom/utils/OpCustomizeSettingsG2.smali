.class public Lcom/oneplus/custom/utils/OpCustomizeSettingsG2;
.super Lcom/oneplus/custom/utils/OpCustomizeSettings;
.source "OpCustomizeSettingsG2.java"


# static fields
.field private static final SUPPORT_GET_SECURE_WP_PKG_1:Ljava/lang/String; = "net.oneplus.wallpaperresources"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomBackCoverColor()J
    .registers 6

    .line 63
    const-wide/16 v0, 0x0

    .line 66
    .local v0, "result":J
    :try_start_2
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "line":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_11

    move-wide v0, v3

    .line 68
    const-wide/16 v3, -0x1

    and-long/2addr v0, v3

    .line 71
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_1b

    .line 69
    :catch_11
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OpCustomizeSettings"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1b
    return-wide v0
.end method

.method protected getCustomBackCoverType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    .registers 4

    .line 37
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    .line 39
    .local v0, "result":Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_56

    goto :goto_40

    :sswitch_e
    const-string v2, "fffe3d3e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x3

    goto :goto_41

    :sswitch_18
    const-string v2, "fff6f7f7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x2

    goto :goto_41

    :sswitch_22
    const-string v2, "ffc199b3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x4

    goto :goto_41

    :sswitch_2c
    const-string v2, "ff3d3740"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x0

    goto :goto_41

    :sswitch_36
    const-string v2, "ff2c2630"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v1, -0x1

    :goto_41
    packed-switch v1, :pswitch_data_6c

    goto :goto_54

    .line 53
    :pswitch_45
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->DGZ:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    .line 54
    goto :goto_54

    .line 50
    :pswitch_48
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->HPH:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    .line 51
    goto :goto_54

    .line 47
    :pswitch_4b
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->YYB:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    .line 48
    goto :goto_54

    .line 44
    :pswitch_4e
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->LCH:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    .line 45
    goto :goto_54

    .line 41
    :pswitch_51
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->MYH:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    .line 42
    nop

    .line 59
    :goto_54
    return-object v0

    nop

    :sswitch_data_56
    .sparse-switch
        -0x2daf91ae -> :sswitch_36
        -0x2bec294f -> :sswitch_2c
        0x23308d1f -> :sswitch_22
        0x28a9fa32 -> :sswitch_18
        0x2b29bee2 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch
.end method

.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .registers 4

    .line 19
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 20
    .local v0, "result":Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getCustFlagVal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    packed-switch v1, :pswitch_data_18

    goto :goto_16

    .line 28
    :pswitch_d
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->OPR_RETAIL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 29
    goto :goto_16

    .line 25
    :pswitch_10
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 26
    goto :goto_16

    .line 22
    :cond_13
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 23
    nop

    .line 33
    :goto_16
    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x6
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method protected getSecureWPKey(Landroid/content/Context;)[B
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "1"

    const-string/jumbo v2, "ro.remount.time"

    invoke-static {v2}, Lcom/oneplus/custom/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 80
    const-string v1, "OpCustomizeSettings"

    const-string v3, "device was remounted, exit"

    invoke-static {v1, v3}, Lcom/oneplus/custom/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object v2

    .line 85
    :cond_1c
    const-string/jumbo v1, "net.oneplus.wallpaperresources"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 86
    const-string v1, "OpCustomizeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not ready for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/custom/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v2

    .line 91
    :cond_3d
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getSecureWPKey()[B

    move-result-object v1

    return-object v1
.end method
