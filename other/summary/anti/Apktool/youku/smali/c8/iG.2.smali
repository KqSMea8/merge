.class public Lc8/iG;
.super Ljava/lang/Object;
.source "WVPackageAppConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jG;->updateGlobalConfig(ZLandroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jG;

.field final synthetic val$defaultUrl:Ljava/lang/String;

.field final synthetic val$error:Landroid/webkit/ValueCallback;

.field final synthetic val$snapshortN:Ljava/lang/String;

.field final synthetic val$success:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lc8/jG;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lc8/iG;->this$0:Lc8/jG;

    iput-object p2, p0, Lc8/iG;->val$defaultUrl:Ljava/lang/String;

    iput-object p3, p0, Lc8/iG;->val$snapshortN:Ljava/lang/String;

    iput-object p4, p0, Lc8/iG;->val$error:Landroid/webkit/ValueCallback;

    iput-object p5, p0, Lc8/iG;->val$success:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 87
    const-string/jumbo v7, "0"

    .line 88
    .local v7, "v":Ljava/lang/String;
    iget-object v1, p0, Lc8/iG;->val$defaultUrl:Ljava/lang/String;

    .line 89
    .local v1, "configUrl":Ljava/lang/String;
    const-string/jumbo v10, "wv_main_config"

    const-string/jumbo v11, "package_updateTime"

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 91
    .local v2, "configUpdateTime":J
    iget-object v10, p0, Lc8/iG;->val$defaultUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 92
    iget-object v6, p0, Lc8/iG;->val$snapshortN:Ljava/lang/String;

    .line 93
    .local v6, "snapshort":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v2

    .line 94
    .local v8, "useTime":J
    sget-object v10, Lc8/DB;->commonConfig:Lc8/EB;

    iget v10, v10, Lc8/EB;->recoveryInterval:I

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gtz v10, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_3

    .line 96
    :cond_0
    const-string/jumbo v7, "0"

    .line 97
    const-string/jumbo v6, "0"

    .line 99
    const-string/jumbo v10, "wv_main_config"

    const-string/jumbo v11, "package_updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 138
    :cond_1
    :goto_0
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v10

    const-string/jumbo v11, "5"

    invoke-static {}, Lc8/MB;->getTargetValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v7, v12, v6}, Lc8/KB;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .end local v6    # "snapshort":Ljava/lang/String;
    .end local v8    # "useTime":J
    :cond_2
    new-instance v10, Lc8/XB;

    invoke-direct {v10}, Lc8/XB;-><init>()V

    new-instance v11, Lc8/YB;

    invoke-direct {v11, v1}, Lc8/YB;-><init>(Ljava/lang/String;)V

    new-instance v12, Lc8/hG;

    invoke-direct {v12, p0}, Lc8/hG;-><init>(Lc8/iG;)V

    invoke-virtual {v10, v11, v12}, Lc8/XB;->syncConnect(Lc8/YB;Lc8/WB;)Lc8/ZB;

    .line 185
    :goto_1
    return-void

    .line 100
    .restart local v6    # "snapshort":Ljava/lang/String;
    .restart local v8    # "useTime":J
    :cond_3
    iget-object v10, p0, Lc8/iG;->this$0:Lc8/jG;

    invoke-virtual {v10}, Lc8/jG;->getGlobalConfig()Lc8/WG;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 101
    iget-object v10, p0, Lc8/iG;->this$0:Lc8/jG;

    invoke-virtual {v10}, Lc8/jG;->getGlobalConfig()Lc8/WG;

    move-result-object v10

    iget-object v7, v10, Lc8/WG;->v:Ljava/lang/String;

    .line 103
    const-wide/16 v10, 0x0

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    iget-object v10, p0, Lc8/iG;->val$snapshortN:Ljava/lang/String;

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 106
    iget-object v10, p0, Lc8/iG;->val$snapshortN:Ljava/lang/String;

    const-string/jumbo v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v10, v0

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    .line 108
    :cond_4
    invoke-static {}, Lc8/jG;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PackageApp snapshortN is error :  version = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lc8/iG;->val$snapshortN:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    .end local v0    # "array":[Ljava/lang/String;
    :catch_0
    move-exception v10

    invoke-static {}, Lc8/jG;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "PackageApp version check error"

    invoke-static {v10, v11}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    .restart local v0    # "array":[Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    :try_start_1
    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 115
    .end local v0    # "array":[Ljava/lang/String;
    .local v5, "newTime":Ljava/lang/Long;
    :goto_2
    const-string/jumbo v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 116
    const-string/jumbo v10, "\\."

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "array":[Ljava/lang/String;
    if-eqz v0, :cond_6

    array-length v10, v0

    const/4 v11, 0x2

    if-ge v10, v11, :cond_8

    .line 118
    :cond_6
    invoke-static {}, Lc8/jG;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PackageApp version is error :  version = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    .end local v0    # "array":[Ljava/lang/String;
    .end local v5    # "newTime":Ljava/lang/Long;
    :cond_7
    iget-object v10, p0, Lc8/iG;->val$snapshortN:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .restart local v5    # "newTime":Ljava/lang/Long;
    goto :goto_2

    .line 121
    .restart local v0    # "array":[Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 122
    .local v4, "lastTime":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x3277ec00

    cmp-long v10, v10, v12

    if-lez v10, :cond_9

    .line 124
    const-string/jumbo v7, "0"

    .line 129
    .end local v0    # "array":[Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x3277ec00

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 131
    const-string/jumbo v7, "0"

    goto/16 :goto_0

    .line 127
    .end local v4    # "lastTime":Ljava/lang/Long;
    :cond_a
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4    # "lastTime":Ljava/lang/Long;
    goto :goto_3
.end method
