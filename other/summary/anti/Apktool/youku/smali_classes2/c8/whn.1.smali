.class public final Lc8/whn;
.super Ljava/lang/Object;
.source "PushCollectApi.java"

# interfaces
.implements Lc8/OIj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yhn;->pushChangeCollect(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lc8/whn;->val$status:Ljava/lang/String;

    iput-object p2, p0, Lc8/whn;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lc8/eJj;)V
    .locals 4
    .param p1, "ykResponse"    # Lc8/eJj;

    .prologue
    .line 42
    invoke-virtual {p1}, Lc8/eJj;->getResponseCode()I

    move-result v0

    .line 43
    .local v0, "statusCode":I
    invoke-virtual {p1}, Lc8/eJj;->isCallSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc7

    if-le v0, v1, :cond_2

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    .line 44
    const-string/jumbo v1, "ENABLED"

    iget-object v2, p0, Lc8/whn;->val$status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string/jumbo v1, "DISABLED"

    iget-object v2, p0, Lc8/whn;->val$status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v1

    const-string/jumbo v2, "video_notifi_temp"

    iget-object v3, p0, Lc8/whn;->val$context:Landroid/content/Context;

    .line 50
    invoke-static {v3}, Lc8/rZm;->getPushSwitch(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3}, Lc8/Gin;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    const-string/jumbo v1, "ENABLED"

    iget-object v2, p0, Lc8/whn;->val$status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Open PushCollectionAPI Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/eJj;->getYkErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_3
    const-string/jumbo v1, "DISABLED"

    iget-object v2, p0, Lc8/whn;->val$status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Close PushCollectionAPI Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/eJj;->getYkErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
