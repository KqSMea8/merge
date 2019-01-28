.class public Lc8/rbo;
.super Ljava/lang/Object;
.source "PhenixUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lc8/nxf;

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/nxf;

    invoke-virtual {v1}, Lc8/nxf;->cancel()Z

    .line 63
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p0}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p1}, Lc8/mxf;->into(Landroid/widget/ImageView;)Lc8/nxf;

    move-result-object v0

    .line 67
    .local v0, "phenixTicket":Lc8/nxf;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 2
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "errorImageId"    # I
    .param p3, "loadImageId"    # I

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lc8/nxf;

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/nxf;

    invoke-virtual {v1}, Lc8/nxf;->cancel()Z

    .line 41
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p0}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p3}, Lc8/mxf;->placeholder(I)Lc8/mxf;

    move-result-object v1

    .line 46
    invoke-virtual {v1, p2}, Lc8/mxf;->error(I)Lc8/mxf;

    move-result-object v1

    .line 47
    invoke-virtual {v1, p1}, Lc8/mxf;->into(Landroid/widget/ImageView;)Lc8/nxf;

    move-result-object v0

    .line 49
    .local v0, "phenixTicket":Lc8/nxf;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static loadImageListener(Ljava/lang/String;Landroid/widget/ImageView;IILc8/qxf;)V
    .locals 3
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "errorImageId"    # I
    .param p3, "loadImageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "II",
            "Lc8/qxf",
            "<",
            "Lc8/wxf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p4, "iPhenixListener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/SuccPhenixEvent;>;"
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lc8/nxf;

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/nxf;

    invoke-virtual {v1}, Lc8/nxf;->cancel()Z

    .line 103
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    .line 104
    invoke-virtual {v1, p0}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v1

    .line 106
    invoke-virtual {v1, p3}, Lc8/mxf;->placeholder(I)Lc8/mxf;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p2}, Lc8/mxf;->error(I)Lc8/mxf;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p4}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v1

    new-instance v2, Lc8/qbo;

    invoke-direct {v2}, Lc8/qbo;-><init>()V

    .line 110
    invoke-virtual {v1, v2}, Lc8/mxf;->failListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v1

    .line 117
    invoke-virtual {v1, p1}, Lc8/mxf;->into(Landroid/widget/ImageView;)Lc8/nxf;

    move-result-object v0

    .line 119
    .local v0, "phenixTicket":Lc8/nxf;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static loadImageProcessor(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "errorImageId"    # I
    .param p4, "loadImageId"    # I

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lc8/nxf;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/nxf;

    invoke-virtual {v1}, Lc8/nxf;->cancel()Z

    .line 81
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    .line 82
    invoke-virtual {v1, p1}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v1

    .line 84
    invoke-virtual {v1, p4}, Lc8/mxf;->placeholder(I)Lc8/mxf;

    move-result-object v1

    .line 86
    invoke-virtual {v1, p3}, Lc8/mxf;->error(I)Lc8/mxf;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lc8/ovf;

    const/4 v3, 0x0

    new-instance v4, Lc8/Ewf;

    const/16 v5, 0x19

    invoke-direct {v4, p0, v5}, Lc8/Ewf;-><init>(Landroid/content/Context;I)V

    aput-object v4, v2, v3

    .line 87
    invoke-virtual {v1, v2}, Lc8/mxf;->bitmapProcessors([Lc8/ovf;)Lc8/mxf;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p2}, Lc8/mxf;->into(Landroid/widget/ImageView;)Lc8/nxf;

    move-result-object v0

    .line 90
    .local v0, "phenixTicket":Lc8/nxf;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static loadSingleImage(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 1
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "errorImageId"    # I
    .param p3, "loadImageId"    # I

    .prologue
    .line 22
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p3}, Lc8/mxf;->placeholder(I)Lc8/mxf;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p2}, Lc8/mxf;->error(I)Lc8/mxf;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lc8/mxf;->into(Landroid/widget/ImageView;)Lc8/nxf;

    .line 29
    return-void
.end method
