.class public Lc8/zbg;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Lc8/cbg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dbg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickToReloadListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lc8/dbg;Lc8/nVf;)V
    .locals 0
    .param p1, "comp"    # Lc8/dbg;
    .param p2, "nestedInstance"    # Lc8/nVf;

    .prologue
    .line 130
    return-void
.end method

.method public onException(Lc8/dbg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "container"    # Lc8/dbg;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string/jumbo v4, "wx_network_error"

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, p1, Lc8/Dbg;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 94
    check-cast v0, Lc8/Dbg;

    .line 95
    .local v0, "comp":Lc8/Dbg;
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lc8/Dbg;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v4, Lcom/youku/phone/R$drawable;->error:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lc8/Dbg;->access$100()I

    move-result v4

    invoke-static {}, Lc8/Dbg;->access$200()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 102
    new-instance v4, Lc8/ybg;

    invoke-direct {v4, p0, v2, v0}, Lc8/ybg;-><init>(Lc8/zbg;Landroid/widget/ImageView;Lc8/Dbg;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v0}, Lc8/Dbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 111
    .local v1, "hostView":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 113
    const-string/jumbo v4, "WXEmbed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NetWork failure :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",\n error message :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0    # "comp":Lc8/Dbg;
    .end local v1    # "hostView":Landroid/widget/FrameLayout;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onPreCreate(Lc8/dbg;Ljava/lang/String;)Z
    .locals 1
    .param p1, "comp"    # Lc8/dbg;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public transformUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 124
    return-object p1
.end method
