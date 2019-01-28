.class public Lc8/OSb;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultStartupStateAnalyzeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/PSb;


# direct methods
.method constructor <init>(Lc8/PSb;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lc8/OSb;->this$0:Lc8/PSb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 5
    .param p1, "startupState"    # I

    .prologue
    .line 155
    and-int/lit8 v0, p1, 0x1

    .line 156
    .local v0, "flagFast":I
    and-int/lit8 v1, p1, 0x10

    .line 158
    .local v1, "flagMany":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 162
    iget-object v2, p0, Lc8/OSb;->this$0:Lc8/PSb;

    iget-object v2, v2, Lc8/PSb;->mProcessName:Ljava/lang/String;

    invoke-static {v2}, Lc8/vTb;->isServiceProcess(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service process name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/OSb;->this$0:Lc8/PSb;

    iget-object v4, v4, Lc8/PSb;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " launching too fast and too many"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_0
    iget-object v2, p0, Lc8/OSb;->this$0:Lc8/PSb;

    iget-object v2, v2, Lc8/PSb;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lc8/OSb;->this$0:Lc8/PSb;

    iget-object v3, v3, Lc8/PSb;->mProcessName:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/vTb;->isUIProcess(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lc8/OSb;->this$0:Lc8/PSb;

    iget-object v2, v2, Lc8/PSb;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/vTb;->isBackgroundRunning(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/OSb;->this$0:Lc8/PSb;

    iget-object v2, v2, Lc8/PSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v3, "Configuration.enableUIProcessSafeGuard"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ui process name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/OSb;->this$0:Lc8/PSb;

    iget-object v4, v4, Lc8/PSb;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " launching too fast and too many"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_2
    iget-object v2, p0, Lc8/OSb;->this$0:Lc8/PSb;

    iget-object v2, v2, Lc8/PSb;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/vTb;->stopService(Landroid/content/Context;)V

    .line 181
    :cond_3
    return-void
.end method
