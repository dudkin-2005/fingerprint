.class public Lcom/android/server/OnePlusPowerController$IdleStats;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleStats"
.end annotation


# static fields
.field private static final RECORDS_FILENAME:Ljava/lang/String; = "idle-records.xml"


# instance fields
.field private mDeepSleepDuration:Ljava/time/Duration;

.field private mDeepSleepStart:Ljava/time/LocalTime;

.field public mFile:Landroid/util/AtomicFile;

.field private final mIdleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusPowerController$IdleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRecordTime:Ljava/time/LocalDateTime;

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 1875
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    .line 1876
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1877
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1878
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "idle-records.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    .line 1879
    return-void
.end method

.method private readIdleItemLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 19
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v1, p0

    .line 2105
    move-object/from16 v2, p1

    :goto_4
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v3, v0

    .line 2105
    .local v3, "type":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v4, :cond_10

    if-eq v3, v5, :cond_10

    .line 2105
    .end local v3    # "type":I
    goto :goto_4

    .line 2110
    .restart local v3    # "type":I
    :cond_10
    if-ne v3, v4, :cond_1d8

    .line 2114
    const-string/jumbo v0, "idle-items"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    if-eqz v0, :cond_76

    .line 2115
    const-string/jumbo v0, "last"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_29} :catch_25a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_29} :catch_242
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_29} :catch_22a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_29} :catch_212
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_1fa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_29} :catch_1e1

    move-object v8, v0

    .line 2118
    .local v8, "attr":Ljava/lang/String;
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {v8, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 2119
    .local v0, "last":Ljava/time/LocalDateTime;
    const-string v9, "OnePlusPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "last record time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iget-object v9, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->setLastRecordTime(Ljava/time/LocalDateTime;)V
    :try_end_52
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2a .. :try_end_52} :catch_53
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_52} :catch_25a
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_52} :catch_242
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_52} :catch_22a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_52} :catch_212
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_52} :catch_1fa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_52} :catch_1e1

    .line 2126
    .end local v0    # "last":Ljava/time/LocalDateTime;
    goto :goto_76

    .line 2121
    :catch_53
    move-exception v0

    .line 2123
    .local v0, "dte":Ljava/time/format/DateTimeParseException;
    :try_start_54
    const-string v9, "OnePlusPowerController"

    const-string v10, "failed by simple date format, retry by milliseconds"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    div-long/2addr v9, v6

    .line 2125
    .local v9, "last":J
    iget-object v11, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v11}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v13

    invoke-static {v9, v10, v12, v13}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/OnePlusPowerController$IdleStats;->setLastRecordTime(Ljava/time/LocalDateTime;)V

    .line 2129
    .end local v0    # "dte":Ljava/time/format/DateTimeParseException;
    .end local v8    # "attr":Ljava/lang/String;
    .end local v9    # "last":J
    :cond_76
    :goto_76
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2129
    .local v0, "outerDepth":I
    :goto_7a
    move v8, v0

    .line 2130
    .end local v0    # "outerDepth":I
    .local v8, "outerDepth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v3, v0

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v0, v5, :cond_13d

    if-ne v3, v10, :cond_8c

    .line 2131
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_13d

    .line 2132
    :cond_8c
    if-eq v3, v10, :cond_13a

    if-ne v3, v9, :cond_92

    .line 2133
    goto/16 :goto_13a

    .line 2136
    :cond_92
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2137
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_139

    .line 2138
    new-instance v9, Lcom/android/server/OnePlusPowerController$IdleItem;

    iget-object v10, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {v9, v10}, Lcom/android/server/OnePlusPowerController$IdleItem;-><init>(Lcom/android/server/OnePlusPowerController;)V

    .line 2141
    .local v9, "iit":Lcom/android/server/OnePlusPowerController$IdleItem;
    const-string/jumbo v10, "rawStart"

    invoke-interface {v2, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2142
    .local v10, "attr":Ljava/lang/String;
    if-eqz v10, :cond_bc

    .line 2143
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2144
    .local v11, "rawStart":J
    iget-object v13, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v13, v11, v12}, Lcom/android/server/OnePlusPowerController;->millisToLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v13

    .line 2145
    .local v13, "start":Ljava/time/LocalDateTime;
    invoke-virtual {v9, v13}, Lcom/android/server/OnePlusPowerController$IdleItem;->setLocalStartTime(Ljava/time/LocalDateTime;)V

    .line 2148
    .end local v11    # "rawStart":J
    .end local v13    # "start":Ljava/time/LocalDateTime;
    :cond_bc
    const-string/jumbo v11, "rawEnd"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 2149
    if-eqz v10, :cond_d3

    .line 2150
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2151
    .local v11, "rawEnd":J
    iget-object v13, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v13, v11, v12}, Lcom/android/server/OnePlusPowerController;->millisToLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v13

    .line 2152
    .local v13, "end":Ljava/time/LocalDateTime;
    invoke-virtual {v9, v13}, Lcom/android/server/OnePlusPowerController$IdleItem;->setLocalEndTime(Ljava/time/LocalDateTime;)V

    .line 2155
    .end local v11    # "rawEnd":J
    .end local v13    # "end":Ljava/time/LocalDateTime;
    :cond_d3
    const-string/jumbo v11, "length"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 2156
    if-eqz v10, :cond_e8

    .line 2157
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 2158
    .local v11, "length":J
    invoke-static {v11, v12}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v13

    .line 2159
    .local v13, "duration":Ljava/time/Duration;
    invoke-virtual {v9, v13}, Lcom/android/server/OnePlusPowerController$IdleItem;->setDuration(Ljava/time/Duration;)V

    .line 2163
    .end local v11    # "length":J
    .end local v13    # "duration":Ljava/time/Duration;
    :cond_e8
    const-string/jumbo v11, "localStart"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 2164
    if-eqz v10, :cond_fd

    .line 2165
    iget-object v11, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v11, v11, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 2166
    invoke-static {v10, v11}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v11

    .line 2167
    .local v11, "time":Ljava/time/LocalDateTime;
    invoke-virtual {v9, v11}, Lcom/android/server/OnePlusPowerController$IdleItem;->setLocalStartTime(Ljava/time/LocalDateTime;)V

    .line 2170
    .end local v11    # "time":Ljava/time/LocalDateTime;
    :cond_fd
    const-string/jumbo v11, "localEnd"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 2171
    if-eqz v10, :cond_112

    .line 2172
    iget-object v11, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v11, v11, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 2173
    invoke-static {v10, v11}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v11

    .line 2174
    .restart local v11    # "time":Ljava/time/LocalDateTime;
    invoke-virtual {v9, v11}, Lcom/android/server/OnePlusPowerController$IdleItem;->setLocalEndTime(Ljava/time/LocalDateTime;)V

    .line 2177
    .end local v11    # "time":Ljava/time/LocalDateTime;
    :cond_112
    const-string v11, "duration"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 2178
    if-eqz v10, :cond_122

    .line 2179
    invoke-static {v10}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v11

    .line 2180
    .local v11, "duration":Ljava/time/Duration;
    invoke-virtual {v9, v11}, Lcom/android/server/OnePlusPowerController$IdleItem;->setDuration(Ljava/time/Duration;)V

    .line 2183
    .end local v11    # "duration":Ljava/time/Duration;
    :cond_122
    invoke-virtual {v9}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalStartTime()Ljava/time/LocalDateTime;

    move-result-object v11

    if-eqz v11, :cond_139

    .line 2184
    invoke-virtual {v9}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalEndTime()Ljava/time/LocalDateTime;

    move-result-object v11

    if-eqz v11, :cond_139

    .line 2185
    invoke-virtual {v9}, Lcom/android/server/OnePlusPowerController$IdleItem;->getDuration()Ljava/time/Duration;

    move-result-object v11

    if-eqz v11, :cond_139

    .line 2186
    iget-object v11, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v9    # "iit":Lcom/android/server/OnePlusPowerController$IdleItem;
    .end local v10    # "attr":Ljava/lang/String;
    :cond_139
    nop

    .line 2129
    :cond_13a
    :goto_13a
    move v0, v8

    goto/16 :goto_7a

    .line 2191
    :cond_13d
    :goto_13d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v3, v0

    if-eq v0, v5, :cond_271

    if-ne v3, v10, :cond_14c

    .line 2192
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_271

    .line 2193
    :cond_14c
    if-eq v3, v10, :cond_1d4

    if-ne v3, v9, :cond_152

    .line 2194
    goto/16 :goto_1d4

    .line 2196
    :cond_152
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 2197
    .local v11, "tagName":Ljava/lang/String;
    const-string v0, "deep-sleep"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    .line 2198
    const-string/jumbo v0, "start"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_166
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_166} :catch_25a
    .catch Ljava/lang/NullPointerException; {:try_start_54 .. :try_end_166} :catch_242
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_166} :catch_22a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_166} :catch_212
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_166} :catch_1fa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_54 .. :try_end_166} :catch_1e1

    move-object v12, v0

    .line 2200
    .local v12, "attr":Ljava/lang/String;
    if-eqz v12, :cond_192

    .line 2202
    :try_start_169
    invoke-static {v12}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    .line 2203
    .local v0, "start":Ljava/time/LocalTime;
    iget-object v13, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v13}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v13

    invoke-virtual {v13, v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepStart(Ljava/time/LocalTime;)V
    :try_end_176
    .catch Ljava/time/format/DateTimeParseException; {:try_start_169 .. :try_end_176} :catch_177
    .catch Ljava/lang/IllegalStateException; {:try_start_169 .. :try_end_176} :catch_25a
    .catch Ljava/lang/NullPointerException; {:try_start_169 .. :try_end_176} :catch_242
    .catch Ljava/lang/NumberFormatException; {:try_start_169 .. :try_end_176} :catch_22a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_169 .. :try_end_176} :catch_212
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_176} :catch_1fa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_169 .. :try_end_176} :catch_1e1

    .line 2209
    .end local v0    # "start":Ljava/time/LocalTime;
    goto :goto_192

    .line 2204
    :catch_177
    move-exception v0

    .line 2206
    .local v0, "dte":Ljava/time/format/DateTimeParseException;
    :try_start_178
    const-string v13, "OnePlusPowerController"

    const-string v14, "failed by simple date format, retry by milliseconds"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 2208
    .local v13, "start":J
    iget-object v15, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v15}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v15

    div-long v9, v13, v6

    invoke-static {v9, v10}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepStart(Ljava/time/LocalTime;)V

    .line 2212
    .end local v0    # "dte":Ljava/time/format/DateTimeParseException;
    .end local v13    # "start":J
    :cond_192
    :goto_192
    const-string/jumbo v0, "length"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2213
    .end local v12    # "attr":Ljava/lang/String;
    .local v0, "attr":Ljava/lang/String;
    if-eqz v0, :cond_1ac

    .line 2215
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 2216
    .local v9, "duration":J
    iget-object v12, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V

    .line 2219
    .end local v9    # "duration":J
    :cond_1ac
    const-string v9, "duration"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1b2
    .catch Ljava/lang/IllegalStateException; {:try_start_178 .. :try_end_1b2} :catch_25a
    .catch Ljava/lang/NullPointerException; {:try_start_178 .. :try_end_1b2} :catch_242
    .catch Ljava/lang/NumberFormatException; {:try_start_178 .. :try_end_1b2} :catch_22a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_178 .. :try_end_1b2} :catch_212
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_1b2} :catch_1fa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_178 .. :try_end_1b2} :catch_1e1

    .line 2220
    .end local v0    # "attr":Ljava/lang/String;
    .local v9, "attr":Ljava/lang/String;
    if-eqz v9, :cond_1d3

    .line 2222
    :try_start_1b4
    invoke-static {v9}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v0

    .line 2223
    .local v0, "duration":Ljava/time/Duration;
    iget-object v10, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v10}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V
    :try_end_1c1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1b4 .. :try_end_1c1} :catch_1c2
    .catch Ljava/lang/IllegalStateException; {:try_start_1b4 .. :try_end_1c1} :catch_25a
    .catch Ljava/lang/NullPointerException; {:try_start_1b4 .. :try_end_1c1} :catch_242
    .catch Ljava/lang/NumberFormatException; {:try_start_1b4 .. :try_end_1c1} :catch_22a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b4 .. :try_end_1c1} :catch_212
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1c1} :catch_1fa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b4 .. :try_end_1c1} :catch_1e1

    .line 2227
    .end local v0    # "duration":Ljava/time/Duration;
    goto :goto_1d3

    .line 2224
    :catch_1c2
    move-exception v0

    .line 2225
    .local v0, "dtpe":Ljava/time/format/DateTimeParseException;
    :try_start_1c3
    const-string v10, "OnePlusPowerController"

    const-string v12, "failed to parse duration"

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iget-object v10, v1, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v10}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V

    .line 2230
    .end local v0    # "dtpe":Ljava/time/format/DateTimeParseException;
    .end local v9    # "attr":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_1d3
    :goto_1d3
    nop

    .line 2191
    :cond_1d4
    :goto_1d4
    const/4 v9, 0x4

    const/4 v10, 0x3

    goto/16 :goto_13d

    .line 2111
    .end local v8    # "outerDepth":I
    :cond_1d8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not start tag found"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e1
    .catch Ljava/lang/IllegalStateException; {:try_start_1c3 .. :try_end_1e1} :catch_25a
    .catch Ljava/lang/NullPointerException; {:try_start_1c3 .. :try_end_1e1} :catch_242
    .catch Ljava/lang/NumberFormatException; {:try_start_1c3 .. :try_end_1e1} :catch_22a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c3 .. :try_end_1e1} :catch_212
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1e1} :catch_1fa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c3 .. :try_end_1e1} :catch_1e1

    .line 2241
    .end local v3    # "type":I
    :catch_1e1
    move-exception v0

    .line 2242
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing idle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_272

    .line 2239
    :catch_1fa
    move-exception v0

    .line 2240
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing idle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_271

    .line 2237
    :catch_212
    move-exception v0

    .line 2238
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing idle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_271

    .line 2235
    :catch_22a
    move-exception v0

    .line 2236
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing idle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_271

    .line 2233
    :catch_242
    move-exception v0

    .line 2234
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing idle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_271

    .line 2231
    :catch_25a
    move-exception v0

    .line 2232
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing idle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_271
    :goto_271
    nop

    .line 2244
    :goto_272
    return-void
.end method

.method private writeIdleItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2040
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2041
    const-string/jumbo v1, "idle-items"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2042
    const-string/jumbo v1, "last"

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v4, v4, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2044
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2045
    const/4 v3, 0x0

    .line 2045
    .local v3, "i":I
    :goto_2c
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_93

    .line 2046
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusPowerController$IdleItem;

    .line 2047
    .local v4, "iit":Lcom/android/server/OnePlusPowerController$IdleItem;
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "write idle iteam: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const-string/jumbo v5, "item"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2049
    const-string/jumbo v5, "localStart"

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalStartTime()Ljava/time/LocalDateTime;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v7, v7, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v6, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2050
    const-string/jumbo v5, "localEnd"

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalEndTime()Ljava/time/LocalDateTime;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v7, v7, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v6, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2051
    const-string v5, "duration"

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController$IdleItem;->getDuration()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2052
    const-string/jumbo v5, "item"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2045
    .end local v4    # "iit":Lcom/android/server/OnePlusPowerController$IdleItem;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2054
    .end local v3    # "i":I
    :cond_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_2c .. :try_end_94} :catchall_d7

    .line 2056
    const-string/jumbo v1, "idle-items"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2058
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v1

    .line 2059
    .local v1, "deepStart":Ljava/time/LocalTime;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v3

    .line 2061
    .local v3, "duration":Ljava/time/Duration;
    if-eqz v1, :cond_d3

    if-eqz v3, :cond_d3

    .line 2062
    const-string v4, "deep-sleep"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2063
    const-string/jumbo v4, "start"

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v5, v5, Lcom/android/server/OnePlusPowerController;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v5}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2064
    const-string v4, "duration"

    invoke-virtual {v3}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2065
    const-string v4, "deep-sleep"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2068
    :cond_d3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2069
    return-void

    .line 2054
    .end local v1    # "deepStart":Ljava/time/LocalTime;
    .end local v3    # "duration":Ljava/time/Duration;
    :catchall_d7
    move-exception v2

    :try_start_d8
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v2
.end method


# virtual methods
.method public addIdleItem(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V
    .registers 7
    .param p1, "start"    # Ljava/time/LocalDateTime;
    .param p2, "end"    # Ljava/time/LocalDateTime;

    .line 1883
    new-instance v0, Lcom/android/server/OnePlusPowerController$IdleItem;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/OnePlusPowerController$IdleItem;-><init>(Lcom/android/server/OnePlusPowerController;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V

    .line 1885
    .local v0, "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1886
    :try_start_a
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    # getter for: Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2700()I

    move-result v3

    if-le v2, v3, :cond_1c

    .line 1887
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1889
    :cond_1c
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_3f

    .line 1892
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1893
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIdleItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_3e
    return-void

    .line 1890
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public dumpIdleItems(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1909
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1910
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusPowerController$IdleItem;

    .line 1911
    .local v2, "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    invoke-virtual {v2, p1}, Lcom/android/server/OnePlusPowerController$IdleItem;->dump(Ljava/io/PrintWriter;)V

    .line 1912
    .end local v2    # "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    goto :goto_9

    .line 1913
    :cond_19
    monitor-exit v0

    .line 1914
    return-void

    .line 1913
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getDataSet()[[D
    .registers 9

    .line 1997
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1998
    .local v0, "dataSet":[[D
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1999
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_18
    :try_start_18
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 2000
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusPowerController$IdleItem;

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalStartTime()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v4, v2

    .line 2001
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusPowerController$IdleItem;

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleItem;->getDuration()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v5

    long-to-double v5, v5

    const/4 v7, 0x1

    aput-wide v5, v4, v7

    .line 1999
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2003
    .end local v3    # "i":I
    :cond_52
    monitor-exit v1

    .line 2004
    return-object v0

    .line 2003
    :catchall_54
    move-exception v2

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_18 .. :try_end_56} :catchall_54

    throw v2
.end method

.method public getDeepSleepDuration()Ljava/time/Duration;
    .registers 2

    .line 1945
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public getDeepSleepStart()Ljava/time/LocalTime;
    .registers 2

    .line 1941
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    return-object v0
.end method

.method public getLastRecordTime()Ljava/time/LocalDateTime;
    .registers 2

    .line 1937
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mLastRecordTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public getNextSleepEnd()Ljava/time/LocalDateTime;
    .registers 6

    .line 1976
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$4900(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1977
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$4900(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 1979
    :cond_f
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v0

    .line 1980
    .local v0, "time":Ljava/time/LocalTime;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v1

    .line 1982
    .local v1, "duration":Ljava/time/Duration;
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 1983
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    .line 1984
    .local v2, "date":Ljava/time/LocalDate;
    invoke-static {v2, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 1985
    .local v3, "sleepStart":Ljava/time/LocalDateTime;
    invoke-virtual {v3, v1}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 1986
    .local v4, "sleepEnd":Ljava/time/LocalDateTime;
    return-object v4

    .line 1989
    .end local v0    # "time":Ljava/time/LocalTime;
    .end local v1    # "duration":Ljava/time/Duration;
    .end local v2    # "date":Ljava/time/LocalDate;
    .end local v3    # "sleepStart":Ljava/time/LocalDateTime;
    .end local v4    # "sleepEnd":Ljava/time/LocalDateTime;
    :cond_34
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getNextSleepStart()Ljava/time/LocalDateTime;
    .registers 7

    .line 1952
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$4800(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1953
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$4800(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 1955
    :cond_f
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    return-object v0

    .line 1957
    :cond_15
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    .line 1958
    .local v0, "date":Ljava/time/LocalDate;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    .line 1960
    .local v1, "time":Ljava/time/LocalTime;
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1961
    .local v2, "start":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 1964
    .local v3, "now":Ljava/time/LocalDateTime;
    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1965
    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1968
    :cond_2f
    return-object v2
.end method

.method public getSize()I
    .registers 3

    .line 1931
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1932
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1933
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public recordIdleItemLocked()V
    .registers 5

    .line 2008
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2009
    .local v0, "memStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->setLastRecordTime(Ljava/time/LocalDateTime;)V

    .line 2012
    :try_start_c
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2013
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2014
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->writeIdleItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2015
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/OnePlusPowerController$IdleStats$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/OnePlusPowerController$IdleStats$1;-><init>(Lcom/android/server/OnePlusPowerController$IdleStats;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_29} :catch_2a

    .line 2035
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_2b

    .line 2034
    :catch_2a
    move-exception v1

    .line 2036
    :goto_2b
    return-void
.end method

.method public resetIdleItems()V
    .registers 3

    .line 1898
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1899
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1900
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 1902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    .line 1903
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepDuration:Ljava/time/Duration;

    .line 1904
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mLastRecordTime:Ljava/time/LocalDateTime;

    .line 1905
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 1906
    return-void

    .line 1900
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public restoreIdleItemsLocked()V
    .registers 7

    .line 2072
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2073
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2074
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_86

    .line 2077
    :try_start_9
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_f} :catch_84

    .line 2080
    .local v0, "stream":Ljava/io/FileInputStream;
    nop

    .line 2079
    nop

    .line 2083
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 2084
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2085
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->readIdleItemLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_21} :catch_2c
    .catchall {:try_start_11 .. :try_end_21} :catchall_25

    .line 2089
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_31

    goto :goto_30

    .line 2088
    :catchall_25
    move-exception v1

    .line 2089
    :try_start_26
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 2091
    goto :goto_2b

    .line 2090
    :catch_2a
    move-exception v2

    .line 2091
    :goto_2b
    throw v1

    .line 2086
    :catch_2c
    move-exception v1

    .line 2089
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 2091
    :goto_30
    goto :goto_33

    .line 2090
    :catch_31
    move-exception v1

    .line 2092
    nop

    .line 2094
    :goto_33
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$4700()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2095
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading idle items from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mIdleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusPowerController$IdleItem;

    .line 2097
    .local v2, "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    .end local v2    # "item":Lcom/android/server/OnePlusPowerController$IdleItem;
    goto :goto_5b

    .line 2100
    :cond_83
    return-void

    .line 2078
    .end local v0    # "stream":Ljava/io/FileInputStream;
    :catch_84
    move-exception v0

    .line 2079
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 2074
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_86
    move-exception v1

    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v1
.end method

.method setDeepSleepDuration(Ljava/time/Duration;)V
    .registers 5
    .param p1, "duration"    # Ljava/time/Duration;

    .line 1924
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepDuration:Ljava/time/Duration;

    .line 1925
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1926
    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeepSleepDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepDuration:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_21
    return-void
.end method

.method setDeepSleepStart(Ljava/time/LocalTime;)V
    .registers 5
    .param p1, "start"    # Ljava/time/LocalTime;

    .line 1917
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    .line 1918
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1919
    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeepSleepStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mDeepSleepStart:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_21
    return-void
.end method

.method public setLastRecordTime(Ljava/time/LocalDateTime;)V
    .registers 2
    .param p1, "time"    # Ljava/time/LocalDateTime;

    .line 1993
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats;->mLastRecordTime:Ljava/time/LocalDateTime;

    .line 1994
    return-void
.end method
