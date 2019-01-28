.class public Lc8/yLn;
.super Ljava/lang/Object;
.source "UPasswordClipboardManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zLn;->doRequestAplatformUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zLn;


# direct methods
.method constructor <init>(Lc8/zLn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zLn;

    .prologue
    .line 133
    iput-object p1, p0, Lc8/yLn;->this$0:Lc8/zLn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 4
    .param p1, "mtopFinishEvent"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 136
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 137
    .local v0, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " UPasswordClipboardManager doShowRequest() +isApiSuccess :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 141
    .local v1, "resultJsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lc8/yLn;->this$0:Lc8/zLn;

    iget-object v2, v2, Lc8/zLn;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lc8/yLn;->this$0:Lc8/zLn;

    const/16 v3, 0x4bd

    invoke-static {v2, v1, v3}, Lc8/zLn;->access$100(Lc8/zLn;Ljava/lang/Object;I)V

    .line 145
    .end local v1    # "resultJsonObject":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
