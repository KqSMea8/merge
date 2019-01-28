.class public final Lc8/Cxb;
.super Ljava/lang/Object;
.source "MtopPreloader.java"

# interfaces
.implements Lc8/zxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Dxb;->sendMtopRequestData(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Lc8/nVf;

.field final synthetic val$prefetch:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/nVf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lc8/Cxb;->val$instance:Lc8/nVf;

    iput-object p2, p0, Lc8/Cxb;->val$prefetch:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lc8/Cxb;->val$instance:Lc8/nVf;

    iget-object v1, p0, Lc8/Cxb;->val$prefetch:Ljava/lang/String;

    const-string/jumbo v2, "-1"

    invoke-static {v0, v1, v2, p1}, Lc8/Gyb;->handResults(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    const-string/jumbo v0, "mtop query error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received mtop failed. params is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Cxb;->val$prefetch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "error message is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    sget-object v0, Lc8/Dxb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received mtop failed. params is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Cxb;->val$prefetch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",error msg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    .end local p1    # "msg":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void

    .line 177
    .restart local p1    # "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "mtop query error"

    const-string/jumbo v1, "system error"

    invoke-static {v0, v1}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    const-string/jumbo p1, "system error"

    goto :goto_1
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lc8/Cxb;->val$instance:Lc8/nVf;

    iget-object v1, p0, Lc8/Cxb;->val$prefetch:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lc8/Gyb;->handResults(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
