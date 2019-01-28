.class public Lc8/gtf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtf;->init(Landroid/content/Context;Lc8/Nsf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;

.field final synthetic val$config:Lc8/Nsf;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/qtf;Landroid/content/Context;Lc8/Nsf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 61
    iput-object p1, p0, Lc8/gtf;->this$0:Lc8/qtf;

    iput-object p2, p0, Lc8/gtf;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 64
    iget-object v0, p0, Lc8/gtf;->this$0:Lc8/qtf;

    iget-object v1, p0, Lc8/gtf;->val$ctx:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/qtf;->access$000(Lc8/qtf;Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lc8/gtf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lc8/gtf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$200(Lc8/qtf;)V

    .line 68
    iget-object v0, p0, Lc8/gtf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v0

    iget-object v1, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget v1, v1, Lc8/Nsf;->env:I

    iget-object v2, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget-object v2, v2, Lc8/Nsf;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget-object v3, v3, Lc8/Nsf;->appVersion:Ljava/lang/String;

    iget-object v4, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget-object v4, v4, Lc8/Nsf;->appSecret:Ljava/lang/String;

    iget-object v5, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget-object v5, v5, Lc8/Nsf;->authCode:Ljava/lang/String;

    iget-object v6, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget-object v6, v6, Lc8/Nsf;->userId:Ljava/lang/String;

    iget-object v7, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget v7, v7, Lc8/Nsf;->serverType:I

    iget-object v8, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget v8, v8, Lc8/Nsf;->indexUpdateMode:I

    iget-object v9, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget-object v9, v9, Lc8/Nsf;->probeHosts:[Ljava/lang/String;

    iget-object v10, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget-object v10, v10, Lc8/Nsf;->onlineHost:Ljava/lang/String;

    iget-object v11, p0, Lc8/gtf;->val$config:Lc8/Nsf;

    iget-object v11, v11, Lc8/Nsf;->onlineAckHost:Ljava/lang/String;

    invoke-interface/range {v0 .. v11}, Lc8/xtf;->init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v12

    .line 71
    .local v12, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "init"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v12, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v12    # "t":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "init error as get remote service is null"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
