.class public Lc8/znb;
.super Ljava/lang/Object;
.source "ALPConfigManager.java"

# interfaces
.implements Lc8/Bnb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Anb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigPullCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Anb;


# direct methods
.method private constructor <init>(Lc8/Anb;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lc8/znb;->this$0:Lc8/Anb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Anb;Lc8/ynb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Anb;
    .param p2, "x1"    # Lc8/ynb;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lc8/znb;-><init>(Lc8/Anb;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 6
    .param p1, "httpErrCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 141
    const/16 v1, 0x130

    if-ne p1, v1, :cond_0

    .line 142
    const-class v2, Lc8/Anb;

    monitor-enter v2

    .line 143
    :try_start_0
    iget-object v1, p0, Lc8/znb;->this$0:Lc8/Anb;

    iget-object v3, p0, Lc8/znb;->this$0:Lc8/Anb;

    invoke-static {v3}, Lc8/Anb;->access$100(Lc8/Anb;)Lc8/Fnb;

    move-result-object v3

    iget v3, v3, Lc8/Fnb;->exp:I

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lc8/Anb;->access$200(Lc8/Anb;J)V

    .line 146
    new-instance v0, Lc8/Onb;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/znb;->this$0:Lc8/Anb;

    invoke-static {v5}, Lc8/Anb;->access$100(Lc8/Anb;)Lc8/Fnb;

    move-result-object v5

    iget v5, v5, Lc8/Fnb;->exp:I

    invoke-direct {v0, v1, v3, v4, v5}, Lc8/Onb;-><init>(ZZZI)V

    .line 147
    .local v0, "point":Lc8/Onb;
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 148
    monitor-exit v2

    .line 157
    :goto_0
    return-void

    .line 148
    .end local v0    # "point":Lc8/Onb;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 151
    :cond_0
    new-instance v0, Lc8/Onb;

    invoke-direct {v0, v2, v2, v2, v2}, Lc8/Onb;-><init>(ZZZI)V

    .line 152
    .restart local v0    # "point":Lc8/Onb;
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 153
    const-string/jumbo v1, "ConfigPullCallbackImpl"

    const-string/jumbo v2, "onSuccess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "config http error,errCode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 102
    if-eqz p1, :cond_1

    invoke-static {p1}, Lc8/xnb;->checkConfig(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-static {p1}, Lc8/Fnb;->formatFromJsonString(Ljava/lang/String;)Lc8/Fnb;

    move-result-object v1

    .line 108
    .local v1, "serverConfigInfo":Lc8/Fnb;
    if-eqz v1, :cond_0

    .line 109
    const-class v3, Lc8/Anb;

    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v2, p0, Lc8/znb;->this$0:Lc8/Anb;

    invoke-static {v2, v1}, Lc8/Anb;->access$102(Lc8/Anb;Lc8/Fnb;)Lc8/Fnb;

    .line 112
    iget-object v2, p0, Lc8/znb;->this$0:Lc8/Anb;

    iget-object v4, p0, Lc8/znb;->this$0:Lc8/Anb;

    invoke-static {v4}, Lc8/Anb;->access$100(Lc8/Anb;)Lc8/Fnb;

    move-result-object v4

    iget v4, v4, Lc8/Fnb;->exp:I

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Lc8/Anb;->access$200(Lc8/Anb;J)V

    .line 113
    iget-object v2, p0, Lc8/znb;->this$0:Lc8/Anb;

    invoke-static {v2, p1}, Lc8/Anb;->access$300(Lc8/Anb;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lc8/Onb;

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/znb;->this$0:Lc8/Anb;

    invoke-static {v6}, Lc8/Anb;->access$100(Lc8/Anb;)Lc8/Fnb;

    move-result-object v6

    iget v6, v6, Lc8/Fnb;->exp:I

    invoke-direct {v0, v2, v4, v5, v6}, Lc8/Onb;-><init>(ZZZI)V

    .line 116
    .local v0, "point":Lc8/Onb;
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 117
    monitor-exit v3

    .line 136
    .end local v1    # "serverConfigInfo":Lc8/Fnb;
    :goto_0
    return-void

    .line 117
    .end local v0    # "point":Lc8/Onb;
    .restart local v1    # "serverConfigInfo":Lc8/Fnb;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 121
    :cond_0
    new-instance v0, Lc8/Onb;

    invoke-direct {v0, v3, v3, v3, v3}, Lc8/Onb;-><init>(ZZZI)V

    .line 122
    .restart local v0    # "point":Lc8/Onb;
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 124
    const-string/jumbo v2, "ConfigPullCallbackImpl"

    const-string/jumbo v3, "onSuccess"

    const-string/jumbo v4, "format config fail"

    invoke-static {v2, v3, v4}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0    # "point":Lc8/Onb;
    .end local v1    # "serverConfigInfo":Lc8/Fnb;
    :cond_1
    new-instance v0, Lc8/Onb;

    invoke-direct {v0, v3, v3, v3, v3}, Lc8/Onb;-><init>(ZZZI)V

    .line 132
    .restart local v0    # "point":Lc8/Onb;
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 134
    const-string/jumbo v2, "ConfigPullCallbackImpl"

    const-string/jumbo v3, "onSuccess"

    const-string/jumbo v4, "check config fail"

    invoke-static {v2, v3, v4}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
