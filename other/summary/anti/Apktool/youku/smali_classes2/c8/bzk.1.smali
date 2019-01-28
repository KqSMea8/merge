.class public Lc8/bzk;
.super Ljava/lang/Object;
.source "MKTHandler.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/czk;->request(Ljava/util/Map;Lc8/QJf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/czk;

.field final synthetic val$callback:Lc8/QJf;


# direct methods
.method constructor <init>(Lc8/czk;Lc8/QJf;)V
    .locals 0
    .param p1, "this$1"    # Lc8/czk;

    .prologue
    .line 197
    iput-object p1, p0, Lc8/bzk;->this$1:Lc8/czk;

    iput-object p2, p0, Lc8/bzk;->val$callback:Lc8/QJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lc8/ONp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 201
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 202
    .local v0, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v1, p0, Lc8/bzk;->val$callback:Lc8/QJf;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v2

    new-instance v3, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/youku/phone/mkt/MKTHandler$MtopConnectionImpl$1$1;-><init>(Lc8/bzk;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Lc8/QJf;->onResult(ILjava/util/Map;)V

    .line 209
    return-void
.end method
