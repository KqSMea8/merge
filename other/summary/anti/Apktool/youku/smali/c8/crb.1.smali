.class public final Lc8/crb;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Lc8/drb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/erb;->showActionSheet(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lc8/erb;ILjava/lang/String;)V
    .locals 3
    .param p1, "actionSheet"    # Lc8/erb;
    .param p2, "index"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 248
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    if-eqz p1, :cond_0

    invoke-static {p1}, Lc8/erb;->access$500(Lc8/erb;)Lc8/EWf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    invoke-static {p1}, Lc8/erb;->access$500(Lc8/erb;)Lc8/EWf;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 253
    :cond_0
    return-void
.end method
