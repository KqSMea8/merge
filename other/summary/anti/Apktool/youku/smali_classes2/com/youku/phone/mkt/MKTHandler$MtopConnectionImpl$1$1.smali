.class public Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;
.super Ljava/util/HashMap;
.source "MKTHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bzk;->onFinished(Lc8/ONp;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lc8/bzk;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method public constructor <init>(Lc8/bzk;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 2
    .param p1, "this$2"    # Lc8/bzk;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->this$2:Lc8/bzk;

    iput-object p2, p0, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iput-object p3, p0, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 204
    const-string/jumbo v0, "re_msg"

    iget-object v1, p0, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v0, "result"

    iget-object v1, p0, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v0, "context"

    iget-object v1, p0, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->val$context:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method
