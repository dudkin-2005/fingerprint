.class Lcom/android/server/am/TaskRecord$TaskRecordFactory;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskRecordFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/am/TaskRecord;
    .registers 65
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "affinityIntent"    # Landroid/content/Intent;
    .param p5, "affinity"    # Ljava/lang/String;
    .param p6, "rootAffinity"    # Ljava/lang/String;
    .param p7, "realActivity"    # Landroid/content/ComponentName;
    .param p8, "origActivity"    # Landroid/content/ComponentName;
    .param p9, "rootWasReset"    # Z
    .param p10, "autoRemoveRecents"    # Z
    .param p11, "askedCompatMode"    # Z
    .param p12, "userId"    # I
    .param p13, "effectiveUid"    # I
    .param p14, "lastDescription"    # Ljava/lang/String;
    .param p16, "lastTimeMoved"    # J
    .param p18, "neverRelinquishIdentity"    # Z
    .param p19, "lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "taskAffiliationColor"    # I
    .param p24, "callingUid"    # I
    .param p25, "callingPackage"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .line 2308
    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    new-instance v32, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    invoke-direct/range {v0 .. v31}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V

    return-object v32
.end method

.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
    .registers 13
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2292
    new-instance v6, Lcom/android/server/am/TaskRecord;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V

    return-object v6
.end method

.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
    .registers 15
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2286
    new-instance v7, Lcom/android/server/am/TaskRecord;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-object v7
.end method

.method handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2542
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreTask: Unexpected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2544
    return-void
.end method

.method restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .registers 72
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 2319
    const/4 v0, 0x0

    .line 2320
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 2321
    .local v2, "affinityIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 2323
    .local v4, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 2324
    .local v5, "realActivitySuspended":Z
    const/4 v6, 0x0

    .line 2325
    .local v6, "origActivity":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 2326
    .local v7, "affinity":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2327
    .local v8, "rootAffinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2328
    .local v9, "hasRootAffinity":Z
    const/4 v10, 0x0

    .line 2329
    .local v10, "rootHasReset":Z
    const/4 v11, 0x0

    .line 2330
    .local v11, "autoRemoveRecents":Z
    const/4 v12, 0x0

    .line 2331
    .local v12, "askedCompatMode":Z
    const/4 v13, 0x0

    .line 2332
    .local v13, "taskType":I
    const/4 v14, 0x0

    .line 2333
    .local v14, "userId":I
    const/4 v15, 0x1

    .line 2334
    .local v15, "userSetupComplete":Z
    const/16 v16, -0x1

    .line 2335
    .local v16, "effectiveUid":I
    const/16 v17, 0x0

    .line 2336
    .local v17, "lastDescription":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 2337
    .local v18, "lastTimeOnTop":J
    const/16 v20, 0x1

    .line 2338
    .local v20, "neverRelinquishIdentity":Z
    const/16 v21, -0x1

    .line 2339
    .local v21, "taskId":I
    move-object/from16 v36, v2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2340
    .local v2, "outerDepth":I
    .local v36, "affinityIntent":Landroid/content/Intent;
    move-object/from16 v37, v0

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    .line 2340
    .end local v0    # "intent":Landroid/content/Intent;
    .local v37, "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v38, v0

    .line 2341
    .local v38, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/4 v0, -0x1

    .line 2342
    .local v0, "taskAffiliation":I
    const/16 v22, 0x0

    .line 2343
    .local v22, "taskAffiliationColor":I
    const/16 v23, -0x1

    .line 2344
    .local v23, "prevTaskId":I
    const/16 v24, -0x1

    .line 2345
    .local v24, "nextTaskId":I
    const/16 v25, -0x1

    .line 2346
    .local v25, "callingUid":I
    const-string v26, ""

    .line 2347
    .local v26, "callingPackage":Ljava/lang/String;
    const/16 v27, 0x4

    .line 2348
    .local v27, "resizeMode":I
    const/16 v28, 0x0

    .line 2349
    .local v28, "supportsPictureInPicture":Z
    const/16 v29, 0x0

    .line 2350
    .local v29, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v30, -0x1

    .line 2351
    .local v30, "minWidth":I
    const/16 v31, -0x1

    .line 2352
    .local v31, "minHeight":I
    const/16 v32, 0x0

    .line 2354
    .local v32, "persistTaskVersion":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v33

    move/from16 v39, v15

    const/4 v15, 0x1

    .line 2354
    .end local v15    # "userSetupComplete":Z
    .local v39, "userSetupComplete":Z
    add-int/lit8 v33, v33, -0x1

    move/from16 v40, v0

    move-object/from16 v41, v4

    move/from16 v54, v5

    move-object/from16 v44, v6

    move-object/from16 v46, v7

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v58, v12

    move v11, v13

    move v10, v14

    move-object/from16 v50, v17

    move-wide/from16 v52, v18

    move/from16 v14, v21

    move/from16 v42, v22

    move/from16 v43, v23

    move/from16 v45, v24

    move/from16 v47, v25

    move-object/from16 v51, v26

    move/from16 v4, v27

    move-object/from16 v12, v29

    move/from16 v48, v30

    move/from16 v49, v31

    move/from16 v13, v32

    move/from16 v59, v39

    move/from16 v39, v20

    .end local v0    # "taskAffiliation":I
    .end local v5    # "realActivitySuspended":Z
    .end local v6    # "origActivity":Landroid/content/ComponentName;
    .end local v7    # "affinity":Ljava/lang/String;
    .end local v9    # "hasRootAffinity":Z
    .end local v17    # "lastDescription":Ljava/lang/String;
    .end local v18    # "lastTimeOnTop":J
    .end local v20    # "neverRelinquishIdentity":Z
    .end local v21    # "taskId":I
    .end local v22    # "taskAffiliationColor":I
    .end local v23    # "prevTaskId":I
    .end local v24    # "nextTaskId":I
    .end local v25    # "callingUid":I
    .end local v26    # "callingPackage":Ljava/lang/String;
    .end local v27    # "resizeMode":I
    .end local v29    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v30    # "minWidth":I
    .end local v31    # "minHeight":I
    .end local v32    # "persistTaskVersion":I
    .local v4, "resizeMode":I
    .local v10, "userId":I
    .local v11, "taskType":I
    .local v12, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v13, "persistTaskVersion":I
    .local v14, "taskId":I
    .local v33, "attrNdx":I
    .local v39, "neverRelinquishIdentity":Z
    .local v40, "taskAffiliation":I
    .local v41, "realActivity":Landroid/content/ComponentName;
    .local v42, "taskAffiliationColor":I
    .local v43, "prevTaskId":I
    .local v44, "origActivity":Landroid/content/ComponentName;
    .local v45, "nextTaskId":I
    .local v46, "affinity":Ljava/lang/String;
    .local v47, "callingUid":I
    .local v48, "minWidth":I
    .local v49, "minHeight":I
    .local v50, "lastDescription":Ljava/lang/String;
    .local v51, "callingPackage":Ljava/lang/String;
    .local v52, "lastTimeOnTop":J
    .local v54, "realActivitySuspended":Z
    .local v55, "hasRootAffinity":Z
    .local v56, "rootHasReset":Z
    .local v57, "autoRemoveRecents":Z
    .local v58, "askedCompatMode":Z
    .local v59, "userSetupComplete":Z
    :goto_80
    move/from16 v0, v33

    .line 2354
    .end local v33    # "attrNdx":I
    .local v0, "attrNdx":I
    if-ltz v0, :cond_2ca

    .line 2355
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 2356
    .local v7, "attrName":Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 2359
    .local v9, "attrValue":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/4 v5, -0x1

    sparse-switch v17, :sswitch_data_42e

    goto/16 :goto_1eb

    :sswitch_96
    const-string/jumbo v6, "root_has_reset"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/4 v6, 0x6

    goto/16 :goto_1ec

    :sswitch_a2
    const-string/jumbo v6, "real_activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    move v6, v15

    goto/16 :goto_1ec

    :sswitch_ae
    const-string/jumbo v6, "never_relinquish_identity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0xf

    goto/16 :goto_1ec

    :sswitch_bb
    const-string v6, "calling_package"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x15

    goto/16 :goto_1ec

    :sswitch_c7
    const-string/jumbo v6, "persist_task_version"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x1b

    goto/16 :goto_1ec

    :sswitch_d4
    const-string/jumbo v6, "last_description"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0xd

    goto/16 :goto_1ec

    :sswitch_e1
    const-string v6, "affinity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/4 v6, 0x4

    goto/16 :goto_1ec

    :sswitch_ec
    const-string/jumbo v6, "min_width"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x19

    goto/16 :goto_1ec

    :sswitch_f9
    const-string/jumbo v6, "prev_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x11

    goto/16 :goto_1ec

    :sswitch_106
    const-string/jumbo v6, "task_type"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0xc

    goto/16 :goto_1ec

    :sswitch_113
    const-string v6, "calling_uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x14

    goto/16 :goto_1ec

    :sswitch_11f
    const-string/jumbo v6, "user_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x9

    goto/16 :goto_1ec

    :sswitch_12c
    const-string/jumbo v6, "root_affinity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/4 v6, 0x5

    goto/16 :goto_1ec

    :sswitch_138
    const-string/jumbo v6, "supports_picture_in_picture"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x17

    goto/16 :goto_1ec

    :sswitch_145
    const-string v6, "auto_remove_recents"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/4 v6, 0x7

    goto/16 :goto_1ec

    :sswitch_150
    const-string/jumbo v6, "orig_activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/4 v6, 0x3

    goto/16 :goto_1ec

    :sswitch_15c
    const-string/jumbo v6, "non_fullscreen_bounds"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x18

    goto/16 :goto_1ec

    :sswitch_169
    const-string/jumbo v6, "min_height"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x1a

    goto/16 :goto_1ec

    :sswitch_176
    const-string/jumbo v6, "resize_mode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x16

    goto/16 :goto_1ec

    :sswitch_183
    const-string v6, "effective_uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0xb

    goto :goto_1ec

    :sswitch_18e
    const-string/jumbo v6, "user_setup_complete"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0xa

    goto :goto_1ec

    :sswitch_19a
    const-string/jumbo v6, "task_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x10

    goto :goto_1ec

    :sswitch_1a6
    const-string/jumbo v6, "real_activity_suspended"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/4 v6, 0x2

    goto :goto_1ec

    :sswitch_1b1
    const-string/jumbo v6, "task_affiliation_color"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x13

    goto :goto_1ec

    :sswitch_1bd
    const-string/jumbo v6, "next_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x12

    goto :goto_1ec

    :sswitch_1c9
    const-string/jumbo v6, "task_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/4 v6, 0x0

    goto :goto_1ec

    :sswitch_1d4
    const-string/jumbo v6, "last_time_moved"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0xe

    goto :goto_1ec

    :sswitch_1e0
    const-string v6, "asked_compat_mode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    const/16 v6, 0x8

    goto :goto_1ec

    :cond_1eb
    :goto_1eb
    move v6, v5

    :goto_1ec
    packed-switch v6, :pswitch_data_4a0

    .line 2446
    const-string/jumbo v5, "task_description_"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a9

    .line 2447
    move-object/from16 v6, v38

    invoke-virtual {v6, v7, v9}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v63, v6

    goto/16 :goto_2c3

    .line 2443
    .end local v6    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_201
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2444
    .end local v13    # "persistTaskVersion":I
    .local v5, "persistTaskVersion":I
    nop

    .line 2354
    move v13, v5

    goto/16 :goto_29f

    .line 2440
    .end local v5    # "persistTaskVersion":I
    .restart local v13    # "persistTaskVersion":I
    :pswitch_209
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    .line 2441
    goto/16 :goto_29f

    .line 2437
    :pswitch_20f
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 2438
    goto/16 :goto_29f

    .line 2434
    :pswitch_215
    invoke-static {v9}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v5

    .line 2435
    .end local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v5, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    nop

    .line 2354
    move-object v12, v5

    goto/16 :goto_29f

    .line 2431
    .end local v5    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_21d
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2432
    .end local v28    # "supportsPictureInPicture":Z
    .local v5, "supportsPictureInPicture":Z
    nop

    .line 2354
    move/from16 v28, v5

    goto/16 :goto_29f

    .line 2428
    .end local v5    # "supportsPictureInPicture":Z
    .restart local v28    # "supportsPictureInPicture":Z
    :pswitch_226
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2429
    goto/16 :goto_29f

    .line 2425
    :pswitch_22c
    move-object/from16 v51, v9

    .line 2426
    goto/16 :goto_29f

    .line 2422
    :pswitch_230
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 2423
    goto/16 :goto_29f

    .line 2419
    :pswitch_236
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 2420
    goto/16 :goto_29f

    .line 2416
    :pswitch_23c
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 2417
    goto/16 :goto_29f

    .line 2413
    :pswitch_242
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 2414
    goto/16 :goto_29f

    .line 2410
    :pswitch_248
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 2411
    goto :goto_29f

    .line 2407
    :pswitch_24d
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    .line 2408
    goto :goto_29f

    .line 2404
    :pswitch_252
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 2405
    goto :goto_29f

    .line 2401
    :pswitch_257
    move-object/from16 v50, v9

    .line 2402
    goto :goto_29f

    .line 2398
    :pswitch_25a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2399
    .end local v11    # "taskType":I
    .local v5, "taskType":I
    nop

    .line 2354
    move v11, v5

    goto :goto_29f

    .line 2395
    .end local v5    # "taskType":I
    .restart local v11    # "taskType":I
    :pswitch_261
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2396
    .end local v16    # "effectiveUid":I
    .local v5, "effectiveUid":I
    nop

    .line 2354
    move/from16 v16, v5

    goto :goto_29f

    .line 2392
    .end local v5    # "effectiveUid":I
    .restart local v16    # "effectiveUid":I
    :pswitch_269
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    .line 2393
    goto :goto_29f

    .line 2389
    :pswitch_26e
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2390
    goto :goto_29f

    .line 2386
    :pswitch_273
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    .line 2387
    goto :goto_29f

    .line 2383
    :pswitch_278
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    .line 2384
    goto :goto_29f

    .line 2380
    :pswitch_27d
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v56

    .line 2381
    goto :goto_29f

    .line 2376
    :pswitch_282
    move-object v5, v9

    .line 2377
    .end local v8    # "rootAffinity":Ljava/lang/String;
    .local v5, "rootAffinity":Ljava/lang/String;
    const/4 v6, 0x1

    .line 2378
    .end local v55    # "hasRootAffinity":Z
    .local v6, "hasRootAffinity":Z
    nop

    .line 2354
    move-object v8, v5

    move/from16 v55, v6

    goto :goto_29f

    .line 2373
    .end local v5    # "rootAffinity":Ljava/lang/String;
    .end local v6    # "hasRootAffinity":Z
    .restart local v8    # "rootAffinity":Ljava/lang/String;
    .restart local v55    # "hasRootAffinity":Z
    :pswitch_289
    move-object/from16 v46, v9

    .line 2374
    goto :goto_29f

    .line 2370
    :pswitch_28c
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v44

    .line 2371
    goto :goto_29f

    .line 2367
    :pswitch_291
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    .line 2368
    goto :goto_29f

    .line 2364
    :pswitch_29a
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v41

    .line 2365
    nop

    .line 2354
    .end local v7    # "attrName":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v63, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :cond_29f
    :goto_29f
    move-object/from16 v63, v38

    goto :goto_2c3

    .line 2361
    .end local v63    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v7    # "attrName":Ljava/lang/String;
    .restart local v9    # "attrValue":Ljava/lang/String;
    .restart local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_2a2
    if-ne v14, v5, :cond_29f

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_29f

    .line 2449
    :cond_2a9
    move-object/from16 v6, v38

    .line 2449
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const-string v5, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v63, v6

    const-string v6, "TaskRecord: Unknown attribute="

    .line 2449
    .end local v6    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v63    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    .end local v7    # "attrName":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :goto_2c3
    add-int/lit8 v33, v0, -0x1

    .line 2354
    .end local v0    # "attrNdx":I
    .restart local v33    # "attrNdx":I
    move-object/from16 v38, v63

    const/4 v15, 0x1

    goto/16 :goto_80

    .line 2455
    .end local v33    # "attrNdx":I
    .end local v63    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :cond_2ca
    move-object/from16 v63, v38

    .line 2455
    .end local v38    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v63    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :goto_2cc
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v15, v0

    .line 2455
    .local v15, "event":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_326

    const/4 v5, 0x3

    if-ne v15, v5, :cond_2dd

    .line 2456
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_326

    .line 2457
    :cond_2dd
    const/4 v5, 0x2

    if-ne v15, v5, :cond_323

    .line 2458
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2461
    .local v0, "name":Ljava/lang/String;
    const-string v5, "affinity_intent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f5

    .line 2462
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    .line 2476
    .end local v36    # "affinityIntent":Landroid/content/Intent;
    .local v5, "affinityIntent":Landroid/content/Intent;
    move-object/from16 v9, p0

    move-object/from16 v36, v5

    goto :goto_322

    .line 2463
    .end local v5    # "affinityIntent":Landroid/content/Intent;
    .restart local v36    # "affinityIntent":Landroid/content/Intent;
    :cond_2f5
    const-string/jumbo v5, "intent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_307

    .line 2464
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    .line 2476
    .end local v37    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v9, p0

    move-object/from16 v37, v5

    goto :goto_322

    .line 2465
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v37    # "intent":Landroid/content/Intent;
    :cond_307
    const-string v5, "activity"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31d

    .line 2466
    nop

    .line 2467
    invoke-static/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2470
    .local v5, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_319

    .line 2471
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    .end local v5    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_319
    nop

    .line 2476
    move-object/from16 v9, p0

    goto :goto_322

    .line 2474
    :cond_31d
    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2476
    .end local v0    # "name":Ljava/lang/String;
    :goto_322
    goto :goto_2cc

    .line 2455
    .end local v15    # "event":I
    :cond_323
    move-object/from16 v9, p0

    goto :goto_2cc

    .line 2478
    .restart local v15    # "event":I
    :cond_326
    move-object/from16 v9, p0

    if-nez v55, :cond_32f

    .line 2479
    move-object/from16 v0, v46

    .line 2483
    .end local v8    # "rootAffinity":Ljava/lang/String;
    .local v0, "rootAffinity":Ljava/lang/String;
    .local v38, "rootAffinity":Ljava/lang/String;
    :goto_32c
    move-object/from16 v38, v0

    goto :goto_33b

    .line 2480
    .end local v0    # "rootAffinity":Ljava/lang/String;
    .end local v38    # "rootAffinity":Ljava/lang/String;
    .restart local v8    # "rootAffinity":Ljava/lang/String;
    :cond_32f
    const-string v0, "@"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_339

    .line 2481
    const/4 v0, 0x0

    goto :goto_32c

    .line 2483
    :cond_339
    move-object/from16 v38, v8

    .line 2483
    .end local v8    # "rootAffinity":Ljava/lang/String;
    .restart local v38    # "rootAffinity":Ljava/lang/String;
    :goto_33b
    if-gtz v16, :cond_38c

    .line 2484
    if-eqz v37, :cond_342

    move-object/from16 v0, v37

    goto :goto_344

    :cond_342
    move-object/from16 v0, v36

    :goto_344
    move-object v5, v0

    .line 2485
    .local v5, "checkIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 2486
    .end local v16    # "effectiveUid":I
    .local v6, "effectiveUid":I
    if-eqz v5, :cond_364

    .line 2487
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    move-object v7, v0

    .line 2489
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 2490
    :try_start_34e
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x2200

    .line 2489
    invoke-interface {v7, v0, v8, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2493
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_362

    .line 2494
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_360
    .catch Landroid/os/RemoteException; {:try_start_34e .. :try_end_360} :catch_363

    move v0, v8

    .line 2497
    .end local v6    # "effectiveUid":I
    .local v0, "effectiveUid":I
    move v6, v0

    .line 2497
    .end local v0    # "effectiveUid":I
    .restart local v6    # "effectiveUid":I
    :cond_362
    goto :goto_364

    .line 2496
    :catch_363
    move-exception v0

    .line 2499
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    :cond_364
    :goto_364
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating task #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": effectiveUid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    .end local v5    # "checkIntent":Landroid/content/Intent;
    move v0, v6

    goto :goto_38e

    .line 2503
    .end local v6    # "effectiveUid":I
    .restart local v16    # "effectiveUid":I
    :cond_38c
    move/from16 v0, v16

    .line 2503
    .end local v16    # "effectiveUid":I
    .restart local v0    # "effectiveUid":I
    :goto_38e
    const/4 v8, 0x1

    if-ge v13, v8, :cond_398

    .line 2508
    if-ne v11, v8, :cond_3a2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a2

    .line 2509
    const/4 v4, 0x1

    goto :goto_3a2

    .line 2516
    :cond_398
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3a2

    .line 2517
    const/4 v4, 0x2

    .line 2518
    const/4 v5, 0x1

    .line 2522
    .end local v28    # "supportsPictureInPicture":Z
    .local v5, "supportsPictureInPicture":Z
    move/from16 v60, v4

    move/from16 v61, v5

    goto :goto_3a6

    .line 2522
    .end local v4    # "resizeMode":I
    .end local v5    # "supportsPictureInPicture":Z
    .local v60, "resizeMode":I
    .local v61, "supportsPictureInPicture":Z
    :cond_3a2
    :goto_3a2
    move/from16 v60, v4

    move/from16 v61, v28

    :goto_3a6
    move-object/from16 v7, p2

    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v9

    move-object/from16 v62, v63

    move v6, v14

    .line 2522
    .end local v63    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v62, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v7, v37

    move/from16 v16, v8

    move-object/from16 v8, v36

    move-object/from16 v9, v46

    move/from16 v63, v10

    move-object/from16 v10, v38

    .line 2522
    .end local v10    # "userId":I
    .local v63, "userId":I
    move/from16 v64, v11

    move-object/from16 v11, v41

    .line 2522
    .end local v11    # "taskType":I
    .local v64, "taskType":I
    move-object v1, v12

    move-object/from16 v12, v44

    .line 2522
    .end local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v1, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move/from16 v65, v13

    move/from16 v13, v56

    .line 2522
    .end local v13    # "persistTaskVersion":I
    .local v65, "persistTaskVersion":I
    move/from16 v66, v14

    move/from16 v14, v57

    .line 2522
    .end local v14    # "taskId":I
    .local v66, "taskId":I
    move/from16 v67, v15

    move/from16 v68, v16

    move/from16 v15, v58

    .line 2522
    .end local v15    # "event":I
    .local v67, "event":I
    move/from16 v16, v63

    move/from16 v17, v0

    move-object/from16 v18, v50

    move-object/from16 v19, v3

    move-wide/from16 v20, v52

    move/from16 v22, v39

    move-object/from16 v23, v62

    move/from16 v24, v40

    move/from16 v25, v43

    move/from16 v26, v45

    move/from16 v27, v42

    move/from16 v28, v47

    move-object/from16 v29, v51

    move/from16 v30, v60

    move/from16 v31, v61

    move/from16 v32, v54

    move/from16 v33, v59

    move/from16 v34, v48

    move/from16 v35, v49

    invoke-virtual/range {v4 .. v35}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 2529
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iput-object v1, v4, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2530
    invoke-virtual {v4, v1}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 2532
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 2532
    .local v5, "activityNdx":I
    :goto_404
    if-ltz v5, :cond_412

    .line 2533
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 2532
    add-int/lit8 v5, v5, -0x1

    goto :goto_404

    .line 2536
    .end local v5    # "activityNdx":I
    :cond_412
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_42c

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restored task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_42c
    return-object v4

    nop

    :sswitch_data_42e
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1e0
        -0x5ccdaff6 -> :sswitch_1d4
        -0x5ba06deb -> :sswitch_1c9
        -0x591a685c -> :sswitch_1bd
        -0x4d0e36e6 -> :sswitch_1b1
        -0x43dc2f14 -> :sswitch_1a6
        -0x430d08ca -> :sswitch_19a
        -0x3a0f4851 -> :sswitch_18e
        -0x37680e48 -> :sswitch_183
        -0x3395d9b2 -> :sswitch_176
        -0x313f784c -> :sswitch_169
        -0x2a27c539 -> :sswitch_15c
        -0x2a0990b3 -> :sswitch_150
        -0x1df202b3 -> :sswitch_145
        -0x158140a0 -> :sswitch_138
        -0x9b3481b -> :sswitch_12c
        -0x8c511f1 -> :sswitch_11f
        -0x7e175ab -> :sswitch_113
        0xac8bdb4 -> :sswitch_106
        0x13bdcee4 -> :sswitch_f9
        0x2046b199 -> :sswitch_ec
        0x24172928 -> :sswitch_e1
        0x33cf43d3 -> :sswitch_d4
        0x3c12eca9 -> :sswitch_c7
        0x40756fcb -> :sswitch_bb
        0x56e1584e -> :sswitch_ae
        0x5bc3bc90 -> :sswitch_a2
        0x789a804d -> :sswitch_96
    .end sparse-switch

    :pswitch_data_4a0
    .packed-switch 0x0
        :pswitch_2a2
        :pswitch_29a
        :pswitch_291
        :pswitch_28c
        :pswitch_289
        :pswitch_282
        :pswitch_27d
        :pswitch_278
        :pswitch_273
        :pswitch_26e
        :pswitch_269
        :pswitch_261
        :pswitch_25a
        :pswitch_257
        :pswitch_252
        :pswitch_24d
        :pswitch_248
        :pswitch_242
        :pswitch_23c
        :pswitch_236
        :pswitch_230
        :pswitch_22c
        :pswitch_226
        :pswitch_21d
        :pswitch_215
        :pswitch_20f
        :pswitch_209
        :pswitch_201
    .end packed-switch
.end method
