.class Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .registers 2

    .line 1024
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "x1"    # Lcom/android/server/OverHeatingDiagnosis$1;

    .line 1024
    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 7
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 1032
    if-nez p1, :cond_a

    .line 1033
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void

    .line 1053
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_37b

    .line 1054
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1066
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1067
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "switch"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1402(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1068
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1400(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_46
    const-string v1, "bugreport"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1072
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "bugreport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1702(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1073
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabledBugreport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_75
    const-string v1, "bugreport_beta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1077
    sget-boolean v1, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    if-eqz v1, :cond_a8

    .line 1078
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "bugreport_beta"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1702(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1079
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabledBugreport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_a8
    const-string/jumbo v1, "mdm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 1084
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "mdm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1802(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1085
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabledMDM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1800(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_d9
    const-string/jumbo v1, "thermal_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1089
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "thermal_path"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1902(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;)Ljava/lang/String;

    .line 1090
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mThermalZonePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1900(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_10a
    const-string/jumbo v1, "thermal_precision"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1094
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "thermal_precision"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2002(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1095
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mThermalZonePrecision: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_13b
    const-string/jumbo v1, "monitor_forced"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 1099
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_forced"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2102(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1100
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2100(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_16c
    const-string/jumbo v1, "monitor_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 1104
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2202(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1105
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2200(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_19d
    const-string/jumbo v1, "trigger_period"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 1109
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "trigger_period"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J
    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2302(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1110
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mTriggerPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2300(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_1ce
    const-string/jumbo v1, "monitor_period"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 1114
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_period"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J
    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2402(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1115
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2400(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1ff
    const-string/jumbo v1, "monitor_frequency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_230

    .line 1119
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_frequency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J
    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2502(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1120
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2500(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_230
    const-string/jumbo v1, "monitor_temp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_261

    .line 1124
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_temp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2602(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1125
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2600(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_261
    const-string v1, "critical_cpu"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_290

    .line 1129
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_cpu"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2702(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1130
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalCpu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2700(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_290
    const-string v1, "critical_total_cpu"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2bf

    .line 1134
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_total_cpu"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2802(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1135
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalTotalCpu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2800(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_2bf
    const-string v1, "critical_temp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2ee

    .line 1139
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_temp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2902(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1140
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2900(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_2ee
    const-string v1, "critical_charging_temp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31d

    .line 1144
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_charging_temp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I
    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$3002(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1145
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalChargingTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_31d
    const-string v1, "critical_foreground"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34c

    .line 1149
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_foreground"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J
    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3102(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1150
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3100(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_34c
    const-string v1, "critical_charging"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37b

    .line 1154
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_charging"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J
    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3202(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1155
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalCharging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J
    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3200(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_37b} :catch_37c

    .line 1160
    .end local v0    # "json":Lorg/json/JSONObject;
    :cond_37b
    goto :goto_393

    .line 1158
    :catch_37c
    move-exception v0

    .line 1159
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_393
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 2
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 1028
    invoke-virtual {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 1029
    return-void
.end method
