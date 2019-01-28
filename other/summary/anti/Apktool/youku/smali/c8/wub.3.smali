.class public Lc8/wub;
.super Lc8/MXf;
.source "WXMtopModule.java"

# interfaces
.implements Lc8/uXf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public request(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 2
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lc8/Dub;

    sget-object v1, Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;->V2:Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;

    invoke-direct {v0, v1}, Lc8/Dub;-><init>(Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;)V

    iget-object v1, p0, Lc8/wub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lc8/Dub;->request(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V

    .line 45
    return-void
.end method

.method public send(Ljava/lang/String;Lc8/EWf;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lc8/Dub;

    sget-object v1, Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;->V1:Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;

    invoke-direct {v0, v1}, Lc8/Dub;-><init>(Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;)V

    iget-object v1, p0, Lc8/wub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lc8/Dub;->send(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V

    .line 40
    return-void
.end method
