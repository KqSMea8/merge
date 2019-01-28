.class public Lc8/hbg;
.super Lc8/xbg;
.source "WXA.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lc8/xbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lc8/hbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 31
    check-cast p1, Lc8/qeg;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/hbg;->onHostViewInitialized(Lc8/qeg;)V

    return-void
.end method

.method protected onHostViewInitialized(Lc8/qeg;)V
    .locals 1
    .param p1, "host"    # Lc8/qeg;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lc8/xbg;->onHostViewInitialized(Landroid/view/View;)V

    .line 46
    new-instance v0, Lc8/gbg;

    invoke-direct {v0, p0}, Lc8/gbg;-><init>(Lc8/hbg;)V

    invoke-virtual {p0, v0}, Lc8/hbg;->addClickListener(Lc8/qbg;)V

    .line 61
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 65
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 69
    invoke-super {p0, p1, p2}, Lc8/xbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    .line 65
    :pswitch_0
    const-string/jumbo v1, "href"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x30ff2b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
