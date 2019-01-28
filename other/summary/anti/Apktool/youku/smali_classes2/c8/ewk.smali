.class public final Lc8/ewk;
.super Lc8/Evk;
.source "NetMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwk;->getAliCardRelateShip(Ljava/lang/String;Lc8/Evk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Evk",
        "<",
        "Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;",
        ">;"
    }
.end annotation


# instance fields
.field startTime:J

.field final synthetic val$callback:Lc8/Evk;


# direct methods
.method constructor <init>(Lc8/Evk;)V
    .locals 2

    .prologue
    .line 162
    iput-object p1, p0, Lc8/ewk;->val$callback:Lc8/Evk;

    invoke-direct {p0}, Lc8/Evk;-><init>()V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/ewk;->startTime:J

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "resp"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lc8/ewk;->startTime:J

    const-string/jumbo v1, "6"

    invoke-static {v0, p3, v2, v3, v1}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lc8/ewk;->val$callback:Lc8/Evk;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Evk;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onSuccess(Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;Ljava/lang/String;)V
    .locals 4
    .param p1, "bean"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;
    .param p2, "resp"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v0, "0"

    iget-wide v2, p0, Lc8/ewk;->startTime:J

    const-string/jumbo v1, "6"

    invoke-static {v0, p2, v2, v3, v1}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 167
    iget-object v0, p0, Lc8/ewk;->val$callback:Lc8/Evk;

    invoke-virtual {v0, p1, p2}, Lc8/Evk;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 162
    check-cast p1, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/ewk;->onSuccess(Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;Ljava/lang/String;)V

    return-void
.end method
