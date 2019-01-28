.class public Lc8/lYb;
.super Lc8/yXb;
.source "HuDongPopRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/poplayer/trigger/BaseConfigItem;",
        ">",
        "Lc8/yXb;"
    }
.end annotation


# instance fields
.field public mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mEvent:Lcom/alibaba/poplayer/trigger/Event;


# direct methods
.method public constructor <init>(ILcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;Landroid/app/Activity;)V
    .locals 6
    .param p1, "domain"    # I
    .param p2, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/poplayer/trigger/Event;",
            "TT;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TT;>;"
    .local p3, "config":Lcom/alibaba/poplayer/trigger/BaseConfigItem;, "TT;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lc8/lYb;-><init>(ILcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;Landroid/app/Activity;Lc8/xXb;)V

    .line 34
    return-void
.end method

.method public constructor <init>(ILcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;Landroid/app/Activity;Lc8/xXb;)V
    .locals 9
    .param p1, "domian"    # I
    .param p2, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p5, "callBack"    # Lc8/xXb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/poplayer/trigger/Event;",
            "TT;",
            "Landroid/app/Activity;",
            "Lc8/xXb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TT;>;"
    .local p3, "config":Lcom/alibaba/poplayer/trigger/BaseConfigItem;, "TT;"
    iget-object v2, p3, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->layerType:Ljava/lang/String;

    iget v5, p3, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->priority:I

    iget-boolean v6, p3, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->enqueue:Z

    iget-boolean v7, p3, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->forcePopRespectingPriority:Z

    iget-boolean v8, p3, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->exclusive:Z

    move-object v0, p0

    move v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lc8/yXb;-><init>(ILjava/lang/String;Landroid/app/Activity;Lc8/xXb;IZZZ)V

    .line 27
    iput-object p2, p0, Lc8/lYb;->mEvent:Lcom/alibaba/poplayer/trigger/Event;

    .line 28
    iput-object p3, p0, Lc8/lYb;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TT;>;"
    instance-of v1, p1, Lc8/lYb;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 44
    check-cast v0, Lc8/lYb;

    .line 45
    .local v0, "request":Lc8/lYb;
    iget-object v1, p0, Lc8/lYb;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v1, v1, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/lYb;->mEvent:Lcom/alibaba/poplayer/trigger/Event;

    iget-object v2, v0, Lc8/lYb;->mEvent:Lcom/alibaba/poplayer/trigger/Event;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/lYb;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v1, v1, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    iget-object v2, v0, Lc8/lYb;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v2, v2, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x1

    .line 51
    .end local v0    # "request":Lc8/lYb;
    :goto_0
    return v1

    .line 48
    .restart local v0    # "request":Lc8/lYb;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    .end local v0    # "request":Lc8/lYb;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TT;>;"
    iget-object v0, p0, Lc8/lYb;->mConfigItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    return-object v0
.end method

.method public getEvent()Lcom/alibaba/poplayer/trigger/Event;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lc8/lYb;, "Lcom/alibaba/poplayer/trigger/HuDongPopRequest<TT;>;"
    iget-object v0, p0, Lc8/lYb;->mEvent:Lcom/alibaba/poplayer/trigger/Event;

    return-object v0
.end method
