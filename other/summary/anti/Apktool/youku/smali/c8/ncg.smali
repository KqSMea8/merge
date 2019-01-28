.class public Lc8/ncg;
.super Lc8/tbg;
.source "WXSwitch.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/tbg",
        "<",
        "Lc8/zeg;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
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
    .line 44
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/ncg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lc8/tbg;->addEvent(Ljava/lang/String;)V

    .line 60
    if-eqz p1, :cond_1

    const-string/jumbo v0, "change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc8/ncg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lc8/ncg;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lc8/mcg;

    invoke-direct {v0, p0}, Lc8/mcg;-><init>(Lc8/ncg;)V

    iput-object v0, p0, Lc8/ncg;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lc8/ncg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/zeg;

    iget-object v1, p0, Lc8/ncg;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lc8/zeg;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    :cond_1
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lc8/ncg;->initComponentHostView(Landroid/content/Context;)Lc8/zeg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/zeg;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    new-instance v0, Lc8/zeg;

    invoke-direct {v0, p1}, Lc8/zeg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lc8/tbg;->removeEventFromView(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lc8/ncg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lc8/ncg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/zeg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/zeg;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z
    .annotation runtime Lc8/vbg;
        name = "checked"
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lc8/ncg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/zeg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/zeg;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    invoke-virtual {p0}, Lc8/ncg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/zeg;

    invoke-virtual {v0, p1}, Lc8/zeg;->setChecked(Z)V

    .line 105
    invoke-virtual {p0}, Lc8/ncg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/zeg;

    iget-object v1, p0, Lc8/ncg;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lc8/zeg;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 90
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 98
    invoke-super {p0, p1, p2}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 90
    :pswitch_0
    const-string/jumbo v2, "checked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 92
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 93
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lc8/ncg;->setChecked(Z)V

    .line 96
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x2c3ecfa7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
