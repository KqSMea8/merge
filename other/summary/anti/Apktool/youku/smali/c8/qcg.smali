.class public Lc8/qcg;
.super Lc8/tbg;
.source "WXText.java"

# interfaces
.implements Lc8/Fdg;


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pcg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/tbg",
        "<",
        "Lc8/Aeg;",
        ">;",
        "Lc8/Fdg",
        "<",
        "Lc8/Kdg;",
        ">;"
    }
.end annotation


# static fields
.field public static final sDEFAULT_SIZE:I = 0x20


# instance fields
.field private mFontFamily:Ljava/lang/String;

.field private mTextWidget:Lc8/Kdg;

.field private mTypefaceObserver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 94
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
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lc8/qcg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lc8/qcg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/qcg;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/qcg;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method private registerTypefaceObserver(Ljava/lang/String;)V
    .locals 4
    .param p1, "desiredFontFamily"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    const-string/jumbo v0, "WXText"

    const-string/jumbo v1, "ApplicationContent is null on register typeface observer"

    invoke-static {v0, v1}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iput-object p1, p0, Lc8/qcg;->mFontFamily:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lc8/qcg;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lc8/ocg;

    invoke-direct {v0, p0}, Lc8/ocg;-><init>(Lc8/qcg;)V

    iput-object v0, p0, Lc8/qcg;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    .line 218
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lc8/qcg;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "type_face_available"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method


# virtual methods
.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "originalValue"    # Ljava/lang/Object;

    .prologue
    .line 158
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1, p2}, Lc8/tbg;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 158
    :sswitch_0
    const-string/jumbo v1, "fontSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :pswitch_0
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 162
    :pswitch_1
    const-string/jumbo v0, "black"

    goto :goto_1

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a72f63 -> :sswitch_1
        0x15caa0f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected createViewImpl()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/qcg;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-super {p0}, Lc8/tbg;->createViewImpl()V

    .line 172
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lc8/tbg;->destroy()V

    .line 177
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qcg;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "WXText"

    const-string/jumbo v1, "Unregister the typeface observer"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lc8/qcg;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qcg;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    .line 182
    :cond_0
    return-void
.end method

.method public getOrCreateFlatWidget()Lc8/Kdg;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lc8/qcg;->mTextWidget:Lc8/Kdg;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lc8/Kdg;

    invoke-virtual {p0}, Lc8/qcg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Kdg;-><init>(Lc8/Gdg;)V

    iput-object v0, p0, Lc8/qcg;->mTextWidget:Lc8/Kdg;

    .line 71
    :cond_0
    iget-object v0, p0, Lc8/qcg;->mTextWidget:Lc8/Kdg;

    return-object v0
.end method

.method public bridge synthetic getOrCreateFlatWidget()Lc8/Ldg;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lc8/qcg;->getOrCreateFlatWidget()Lc8/Kdg;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lc8/qcg;->initComponentHostView(Landroid/content/Context;)Lc8/Aeg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/Aeg;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    new-instance v0, Lc8/Aeg;

    invoke-direct {v0, p1}, Lc8/Aeg;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "textView":Lc8/Aeg;
    invoke-virtual {v0, p0}, Lc8/Aeg;->holdComponent(Lc8/qcg;)V

    .line 100
    return-object v0
.end method

.method public isVirtualComponent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lc8/qcg;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public promoteToView(Z)Z
    .locals 2
    .param p1, "checkAncestor"    # Z

    .prologue
    .line 62
    invoke-virtual {p0}, Lc8/qcg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v0

    const-class v1, Lc8/qcg;

    invoke-virtual {v0, p0, p1, v1}, Lc8/Gdg;->promoteToView(Lc8/tbg;ZLjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public refreshData(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lc8/tbg;->refreshData(Lc8/tbg;)V

    .line 127
    instance-of v0, p1, Lc8/qcg;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getExtra()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/qcg;->updateExtra(Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method

.method protected setAriaLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0}, Lc8/qcg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Aeg;

    .line 119
    .local v0, "text":Lc8/Aeg;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lc8/Aeg;->setAriaLabel(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 134
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 152
    invoke-super {p0, p1, p2}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .line 134
    :sswitch_0
    const-string/jumbo v2, "lines"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "fontSize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "fontWeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "fontStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "textDecoration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "textAlign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "textOverflow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "lineHeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "fontFamily"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    .line 147
    :pswitch_1
    if-eqz p2, :cond_1

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/qcg;->registerTypefaceObserver(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_3
        -0x48ff636d -> :sswitch_a
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_2
        -0x1ebe99c5 -> :sswitch_8
        0x5a72f63 -> :sswitch_4
        0x6234eff -> :sswitch_0
        0x6ac9171 -> :sswitch_9
        0xf94e04f -> :sswitch_7
        0x15caa0f0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .locals 2
    .param p1, "extra"    # Ljava/lang/Object;

    .prologue
    .line 105
    instance-of v1, p1, Landroid/text/Layout;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 106
    check-cast v0, Landroid/text/Layout;

    .line 107
    .local v0, "layout":Landroid/text/Layout;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lc8/qcg;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lc8/qcg;->getOrCreateFlatWidget()Lc8/Kdg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Kdg;->updateTextDrawable(Landroid/text/Layout;)V

    .line 114
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v0    # "layout":Landroid/text/Layout;
    :cond_1
    invoke-virtual {p0}, Lc8/qcg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/qcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Aeg;

    invoke-virtual {v1}, Lc8/Aeg;->getTextLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lc8/qcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Aeg;

    invoke-virtual {v1, v0}, Lc8/Aeg;->setTextLayout(Landroid/text/Layout;)V

    .line 111
    invoke-virtual {p0}, Lc8/qcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Aeg;

    invoke-virtual {v1}, Lc8/Aeg;->invalidate()V

    goto :goto_0
.end method
