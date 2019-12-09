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
    .locals 0

    .line 2231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/am/TaskRecord;
    .locals 33
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

    .line 2258
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
    .locals 7

    .line 2242
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
    .locals 8

    .line 2236
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2492
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreTask: Unexpected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2494
    return-void
.end method

.method restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 2269
    nop

    .line 2270
    nop

    .line 2271
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    nop

    .line 2273
    nop

    .line 2274
    nop

    .line 2275
    nop

    .line 2276
    nop

    .line 2277
    nop

    .line 2278
    nop

    .line 2279
    nop

    .line 2280
    nop

    .line 2281
    nop

    .line 2282
    nop

    .line 2283
    nop

    .line 2284
    nop

    .line 2285
    nop

    .line 2286
    nop

    .line 2287
    nop

    .line 2288
    nop

    .line 2289
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2290
    new-instance v14, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v14}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 2291
    nop

    .line 2292
    nop

    .line 2293
    nop

    .line 2294
    nop

    .line 2295
    nop

    .line 2296
    const-string v2, ""

    .line 2297
    nop

    .line 2298
    nop

    .line 2299
    nop

    .line 2300
    nop

    .line 2301
    nop

    .line 2302
    nop

    .line 2304
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    const-wide/16 v8, 0x0

    move-object/from16 v26, v2

    move-wide/from16 v27, v8

    move/from16 v18, v13

    move/from16 v39, v18

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    :goto_0
    if-ltz v3, :cond_3

    .line 2305
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 2306
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    .line 2309
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v41

    sparse-switch v41, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v6, "root_has_reset"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v6, "real_activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "never_relinquish_identity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xf

    goto/16 :goto_2

    :sswitch_3
    const-string v6, "calling_package"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x15

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v6, "persist_task_version"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1b

    goto/16 :goto_2

    :sswitch_5
    const-string v6, "last_description"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_6
    const-string v6, "affinity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_7
    const-string v6, "min_width"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x19

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v6, "prev_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x11

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v6, "task_type"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xc

    goto/16 :goto_2

    :sswitch_a
    const-string v6, "calling_uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x14

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v6, "user_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v6, "root_affinity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v6, "supports_picture_in_picture"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x17

    goto/16 :goto_2

    :sswitch_e
    const-string v6, "auto_remove_recents"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v6, "orig_activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto/16 :goto_2

    :sswitch_10
    const-string v6, "non_fullscreen_bounds"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x18

    goto/16 :goto_2

    :sswitch_11
    const-string v6, "min_height"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1a

    goto/16 :goto_2

    :sswitch_12
    const-string/jumbo v6, "resize_mode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x16

    goto/16 :goto_2

    :sswitch_13
    const-string v6, "effective_uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    goto :goto_2

    :sswitch_14
    const-string/jumbo v6, "user_setup_complete"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto :goto_2

    :sswitch_15
    const-string/jumbo v6, "task_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x10

    goto :goto_2

    :sswitch_16
    const-string/jumbo v6, "real_activity_suspended"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_17
    const-string/jumbo v6, "task_affiliation_color"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x13

    goto :goto_2

    :sswitch_18
    const-string v6, "next_affiliation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x12

    goto :goto_2

    :sswitch_19
    const-string/jumbo v6, "task_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_1a
    const-string v6, "last_time_moved"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xe

    goto :goto_2

    :sswitch_1b
    const-string v6, "asked_compat_mode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 2396
    const/4 v6, -0x1

    const-string/jumbo v6, "task_description_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2397
    invoke-virtual {v14, v7, v13}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2393
    :pswitch_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2394
    nop

    .line 2304
    move v12, v6

    goto/16 :goto_3

    .line 2390
    :pswitch_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 2391
    goto/16 :goto_3

    .line 2387
    :pswitch_2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 2388
    goto/16 :goto_3

    .line 2384
    :pswitch_3
    invoke-static {v13}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v6

    .line 2385
    nop

    .line 2304
    move-object/from16 v34, v6

    goto/16 :goto_3

    .line 2381
    :pswitch_4
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2382
    nop

    .line 2304
    move/from16 v19, v6

    goto/16 :goto_3

    .line 2378
    :pswitch_5
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2379
    goto/16 :goto_3

    .line 2375
    :pswitch_6
    nop

    .line 2376
    nop

    .line 2304
    move-object/from16 v26, v13

    goto/16 :goto_3

    .line 2372
    :pswitch_7
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2373
    goto/16 :goto_3

    .line 2369
    :pswitch_8
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2370
    goto/16 :goto_3

    .line 2366
    :pswitch_9
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2367
    goto/16 :goto_3

    .line 2363
    :pswitch_a
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2364
    goto/16 :goto_3

    .line 2360
    :pswitch_b
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2361
    goto :goto_3

    .line 2357
    :pswitch_c
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 2358
    goto :goto_3

    .line 2354
    :pswitch_d
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 2355
    goto :goto_3

    .line 2351
    :pswitch_e
    nop

    .line 2352
    nop

    .line 2304
    move-object/from16 v25, v13

    goto :goto_3

    .line 2348
    :pswitch_f
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2349
    goto :goto_3

    .line 2345
    :pswitch_10
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2346
    nop

    .line 2304
    move v11, v6

    goto :goto_3

    .line 2342
    :pswitch_11
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    .line 2343
    goto :goto_3

    .line 2339
    :pswitch_12
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 2340
    goto :goto_3

    .line 2336
    :pswitch_13
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v37

    .line 2337
    goto :goto_3

    .line 2333
    :pswitch_14
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v36

    .line 2334
    goto :goto_3

    .line 2330
    :pswitch_15
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v35

    .line 2331
    goto :goto_3

    .line 2326
    :pswitch_16
    nop

    .line 2327
    nop

    .line 2328
    nop

    .line 2304
    move-object v10, v13

    move-object/from16 v42, v14

    const/4 v8, 0x1

    goto :goto_4

    .line 2323
    :pswitch_17
    nop

    .line 2324
    nop

    .line 2304
    move-object v9, v13

    goto :goto_3

    .line 2320
    :pswitch_18
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    .line 2321
    goto :goto_3

    .line 2317
    :pswitch_19
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    .line 2318
    goto :goto_3

    .line 2314
    :pswitch_1a
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    .line 2315
    nop

    .line 2304
    :cond_1
    :goto_3
    move-object/from16 v42, v14

    goto :goto_4

    .line 2311
    :pswitch_1b
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    .line 2399
    :cond_2
    const-string v6, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v42, v14

    const-string v14, "TaskRecord: Unknown attribute="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :goto_4
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v14, v42

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2405
    :cond_3
    move-object/from16 v42, v14

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x1

    if-eq v7, v13, :cond_a

    const/4 v13, 0x3

    if-ne v7, v13, :cond_4

    .line 2406
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-lt v13, v1, :cond_a

    .line 2407
    :cond_4
    const/4 v13, 0x2

    if-ne v7, v13, :cond_9

    .line 2408
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2411
    const-string v13, "affinity_intent"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2412
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v6

    .line 2426
    :goto_6
    move-object/from16 v13, p0

    goto :goto_7

    .line 2413
    :cond_5
    const-string v13, "intent"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2414
    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_6

    .line 2415
    :cond_6
    const-string v13, "activity"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2416
    nop

    .line 2417
    invoke-static/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 2420
    if-eqz v7, :cond_7

    .line 2421
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2423
    :cond_7
    goto :goto_6

    .line 2424
    :cond_8
    move-object/from16 v13, p0

    invoke-virtual {v13, v7, v0}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2426
    :goto_7
    goto :goto_5

    .line 2405
    :cond_9
    move-object/from16 v13, p0

    goto :goto_5

    .line 2428
    :cond_a
    move-object/from16 v13, p0

    if-nez v8, :cond_b

    .line 2429
    nop

    .line 2433
    move-object/from16 v33, v9

    goto :goto_8

    .line 2430
    :cond_b
    const-string v0, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2431
    nop

    .line 2433
    const/16 v33, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v33, v10

    :goto_8
    if-gtz v11, :cond_10

    .line 2434
    if-eqz v3, :cond_d

    .line 2435
    move-object v1, v3

    goto :goto_9

    :cond_d
    move-object v1, v6

    .line 2436
    :goto_9
    if-eqz v1, :cond_f

    .line 2437
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2439
    nop

    .line 2440
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v8, 0x2200

    .line 2439
    move/from16 v14, v38

    :try_start_1
    invoke-interface {v0, v7, v8, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2443
    if-eqz v0, :cond_e

    .line 2444
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2447
    move v7, v0

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_a
    goto :goto_d

    .line 2446
    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move/from16 v14, v38

    :goto_b
    goto :goto_c

    .line 2449
    :cond_f
    move/from16 v14, v38

    :goto_c
    const/4 v7, 0x0

    :goto_d
    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating task #"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": effectiveUid="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    move/from16 v32, v7

    goto :goto_e

    :cond_10
    move/from16 v14, v38

    move/from16 v32, v11

    :goto_e
    const/4 v11, 0x1

    if-ge v12, v11, :cond_11

    .line 2458
    if-ne v4, v11, :cond_12

    const/4 v1, 0x2

    if-ne v5, v1, :cond_12

    .line 2459
    nop

    .line 2472
    move/from16 v38, v11

    goto :goto_f

    .line 2466
    :cond_11
    const/4 v1, 0x2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_12

    .line 2467
    nop

    .line 2468
    nop

    .line 2472
    move/from16 v38, v1

    move/from16 v40, v11

    goto :goto_10

    :cond_12
    move/from16 v38, v5

    :goto_f
    move/from16 v40, v19

    :goto_10
    move-object/from16 v1, p2

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v0, v13

    move-object v4, v6

    move-object v5, v9

    move-object/from16 v6, v33

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v35

    move/from16 v10, v36

    move v13, v11

    move/from16 v11, v37

    move v12, v14

    move/from16 v33, v13

    move/from16 v13, v32

    move-object/from16 v19, v42

    move-object/from16 v14, v25

    move-object/from16 v43, v15

    move-wide/from16 v16, v27

    move-object/from16 v25, v26

    move/from16 v26, v38

    move/from16 v27, v40

    move/from16 v28, v29

    move/from16 v29, v39

    invoke-virtual/range {v0 .. v31}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2479
    move-object/from16 v5, v34

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2480
    invoke-virtual {v0, v5}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 2482
    move-object/from16 v1, v43

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_13

    .line 2483
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 2482
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 2487
    :cond_13
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1b
        -0x5ccdaff6 -> :sswitch_1a
        -0x5ba06deb -> :sswitch_19
        -0x591a685c -> :sswitch_18
        -0x4d0e36e6 -> :sswitch_17
        -0x43dc2f14 -> :sswitch_16
        -0x430d08ca -> :sswitch_15
        -0x3a0f4851 -> :sswitch_14
        -0x37680e48 -> :sswitch_13
        -0x3395d9b2 -> :sswitch_12
        -0x313f784c -> :sswitch_11
        -0x2a27c539 -> :sswitch_10
        -0x2a0990b3 -> :sswitch_f
        -0x1df202b3 -> :sswitch_e
        -0x158140a0 -> :sswitch_d
        -0x9b3481b -> :sswitch_c
        -0x8c511f1 -> :sswitch_b
        -0x7e175ab -> :sswitch_a
        0xac8bdb4 -> :sswitch_9
        0x13bdcee4 -> :sswitch_8
        0x2046b199 -> :sswitch_7
        0x24172928 -> :sswitch_6
        0x33cf43d3 -> :sswitch_5
        0x3c12eca9 -> :sswitch_4
        0x40756fcb -> :sswitch_3
        0x56e1584e -> :sswitch_2
        0x5bc3bc90 -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
