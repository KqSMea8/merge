.class public Lcom/alibaba/poplayer/trigger/view/ViewEvent;
.super Lcom/alibaba/poplayer/trigger/Event;
.source "ViewEvent.java"


# instance fields
.field private hostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "domain"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "attachActivityKeyCode"    # Ljava/lang/String;
    .param p5, "source"    # I

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/poplayer/trigger/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "domain"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "attachActivityKeyCode"    # Ljava/lang/String;
    .param p5, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p6, "hostView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/poplayer/trigger/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    iput-object p6, p0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->hostView:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method

.method public static createViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    .locals 11
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "activityInfo"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    const/4 v1, 0x3

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/poplayer/trigger/view/ViewEvent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    .local v0, "event":Lcom/alibaba/poplayer/trigger/view/ViewEvent;
    iget-object v1, v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->uri:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 49
    .local v8, "queryIndex":I
    const/4 v1, -0x1

    if-ne v1, v8, :cond_0

    const/4 v10, 0x1

    .line 50
    .local v10, "useOriginUri":Z
    :goto_0
    if-eqz v10, :cond_1

    iget-object v7, v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->uri:Ljava/lang/String;

    .line 53
    .local v7, "newUri":Ljava/lang/String;
    :goto_1
    iget-object v1, v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->uri:Ljava/lang/String;

    const-string/jumbo v2, "poplayerview://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    .line 54
    .local v6, "source":I
    :goto_2
    iget v1, v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->source:I

    if-ne v6, v1, :cond_3

    const/4 v9, 0x1

    .line 56
    .local v9, "useOriginSource":Z
    :goto_3
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    .line 57
    :goto_4
    iput-object p0, v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->originUri:Ljava/lang/String;

    .line 58
    return-object v0

    .line 49
    .end local v6    # "source":I
    .end local v7    # "newUri":Ljava/lang/String;
    .end local v9    # "useOriginSource":Z
    .end local v10    # "useOriginUri":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 50
    .restart local v10    # "useOriginUri":Z
    :cond_1
    iget-object v1, v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->uri:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 53
    .restart local v7    # "newUri":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x2

    goto :goto_2

    .line 54
    .restart local v6    # "source":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 56
    .restart local v9    # "useOriginSource":Z
    :cond_4
    new-instance v1, Lcom/alibaba/poplayer/trigger/view/ViewEvent;

    const/4 v2, 0x2

    if-eqz v9, :cond_5

    iget-object v3, v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->uri:Ljava/lang/String;

    :goto_5
    iget-object v4, v0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->param:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/poplayer/trigger/view/ViewEvent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v3, v7

    goto :goto_5
.end method


# virtual methods
.method public getHostView()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->hostView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public setHostView(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "hostView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/alibaba/poplayer/trigger/view/ViewEvent;->hostView:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method
