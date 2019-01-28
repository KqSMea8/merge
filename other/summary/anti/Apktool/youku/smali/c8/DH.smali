.class public Lc8/DH;
.super Lc8/WB;
.source "WVURLIntercepterDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EH;->updateURLRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/WB",
        "<",
        "Lc8/ZB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/EH;


# direct methods
.method constructor <init>(Lc8/EH;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lc8/DH;->this$0:Lc8/EH;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lc8/ZB;I)V
    .locals 7
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    const/4 v6, 0x0

    .line 186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 187
    :cond_0
    iget-object v2, p0, Lc8/DH;->this$0:Lc8/EH;

    invoke-static {v2, v6}, Lc8/EH;->access$002(Lc8/EH;Z)Z

    .line 205
    :goto_0
    return-void

    .line 191
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 192
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    const-string/jumbo v2, "WVUrlResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callback: Download config successfully.\nclass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\ncontent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    iget-object v2, p0, Lc8/DH;->this$0:Lc8/EH;

    invoke-virtual {v2, v0}, Lc8/EH;->needSaveConfig(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    sget-object v2, Lc8/MB;->SPNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/DH;->this$0:Lc8/EH;

    invoke-static {v4}, Lc8/EH;->access$100(Lc8/EH;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "wv-time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 199
    iget-object v2, p0, Lc8/DH;->this$0:Lc8/EH;

    invoke-virtual {v2, v0}, Lc8/EH;->saveConfigFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_3
    iget-object v2, p0, Lc8/DH;->this$0:Lc8/EH;

    invoke-static {v2, v6}, Lc8/EH;->access$002(Lc8/EH;Z)Z

    goto :goto_0

    .line 201
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    const-string/jumbo v2, "WVUrlResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "config encoding error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    iget-object v2, p0, Lc8/DH;->this$0:Lc8/EH;

    invoke-static {v2, v6}, Lc8/EH;->access$002(Lc8/EH;Z)Z

    goto/16 :goto_0

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/DH;->this$0:Lc8/EH;

    invoke-static {v3, v6}, Lc8/EH;->access$002(Lc8/EH;Z)Z

    throw v2
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 183
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/DH;->onFinish(Lc8/ZB;I)V

    return-void
.end method
