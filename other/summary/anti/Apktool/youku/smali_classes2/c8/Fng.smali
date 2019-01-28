.class public Lc8/Fng;
.super Ljava/lang/Object;
.source "PullAntUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AntUpdateRunnable"
.end annotation


# instance fields
.field private sourceName:Ljava/lang/String;

.field final synthetic this$0:Lc8/Gng;


# direct methods
.method constructor <init>(Lc8/Gng;Ljava/lang/String;)V
    .locals 0
    .param p2, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lc8/Fng;->sourceName:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 64
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "AntUpdateRunnable run:"

    aput-object v2, v1, v3

    invoke-static {v1}, Lc8/log;->info([Ljava/lang/String;)V

    .line 66
    :try_start_0
    iget-object v1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    invoke-static {v1}, Lc8/Gng;->access$000(Lc8/Gng;)Lc8/Ong;

    move-result-object v1

    iget v10, v1, Lc8/Ong;->abtestServerVersion:I

    .line 67
    .local v10, "serverVersion":I
    invoke-static {}, Lc8/Tng;->getInstance()Lc8/Sng;

    move-result-object v1

    invoke-interface {v1}, Lc8/Sng;->getCurrentVersion()I

    move-result v8

    .line 68
    .local v8, "currentVersion":I
    iget-object v1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    iget-object v2, p0, Lc8/Fng;->sourceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/Gng;->access$100(Lc8/Gng;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v10, :cond_1

    if-lt v8, v10, :cond_1

    .line 114
    .end local v8    # "currentVersion":I
    .end local v10    # "serverVersion":I
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v8    # "currentVersion":I
    .restart local v10    # "serverVersion":I
    :cond_1
    iget-object v1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    iget-object v1, v1, Lc8/Gng;->mAntConfigFetcher:Lc8/aog;

    int-to-long v2, v8

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lc8/Fng;->sourceName:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lc8/aog;->fetchAntConfig(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "result":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "configObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "sign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "configSign":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "PullAntUpdate ------ sign is null"

    aput-object v3, v1, v2

    invoke-static {v1}, Lc8/log;->info([Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "ver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v8, v1, :cond_3

    iget-object v1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    iget-object v2, p0, Lc8/Fng;->sourceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/Gng;->access$200(Lc8/Gng;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 86
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PullAntUpdate ------ same version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lc8/log;->info([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "configObject":Lorg/json/JSONObject;
    .end local v7    # "configSign":Ljava/lang/String;
    .end local v8    # "currentVersion":I
    .end local v9    # "result":Ljava/lang/String;
    .end local v10    # "serverVersion":I
    :catch_0
    move-exception v11

    .line 112
    .local v11, "t":Ljava/lang/Throwable;
    invoke-static {v11}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v11    # "t":Ljava/lang/Throwable;
    .restart local v0    # "configObject":Lorg/json/JSONObject;
    .restart local v7    # "configSign":Ljava/lang/String;
    .restart local v8    # "currentVersion":I
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v10    # "serverVersion":I
    :cond_2
    :try_start_1
    iget-object v1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    invoke-static {v1}, Lc8/Gng;->access$300(Lc8/Gng;)Lc8/Ong;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Ong;->getCurrentAntConfigSign()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "PullAntUpdate ------ config already exist"

    aput-object v3, v1, v2

    invoke-static {v1}, Lc8/log;->info([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    invoke-static {v1}, Lc8/Gng;->access$400(Lc8/Gng;)Lc8/Ong;

    move-result-object v1

    invoke-virtual {v1, v9}, Lc8/Ong;->saveAntConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    invoke-static {v1}, Lc8/Gng;->access$500(Lc8/Gng;)Lc8/Ong;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lc8/Ong;->convertFlatStructureToMap(Lorg/json/JSONObject;Z)Z

    move-result v12

    .line 102
    .local v12, "update":Z
    if-eqz v12, :cond_0

    .line 106
    iget-object v1, p0, Lc8/Fng;->this$0:Lc8/Gng;

    const-string/jumbo v2, "ant_update_action"

    invoke-static {v1, v2}, Lc8/Gng;->access$600(Lc8/Gng;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
