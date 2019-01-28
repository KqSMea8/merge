.class public Lc8/Bbg;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Lc8/NUf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dbg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbedRenderListener"
.end annotation


# instance fields
.field mComponent:Lc8/Dbg;

.field mEventListener:Lc8/cbg;


# direct methods
.method constructor <init>(Lc8/Dbg;)V
    .locals 1
    .param p1, "comp"    # Lc8/Dbg;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lc8/Bbg;->mComponent:Lc8/Dbg;

    .line 139
    new-instance v0, Lc8/zbg;

    invoke-direct {v0}, Lc8/zbg;-><init>()V

    iput-object v0, p0, Lc8/Bbg;->mEventListener:Lc8/cbg;

    .line 140
    return-void
.end method


# virtual methods
.method public onException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lc8/Bbg;->mEventListener:Lc8/cbg;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lc8/Bbg;->mEventListener:Lc8/cbg;

    iget-object v1, p0, Lc8/Bbg;->mComponent:Lc8/Dbg;

    invoke-interface {v0, v1, p2, p3}, Lc8/cbg;->onException(Lc8/dbg;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onRefreshSuccess(Lc8/nVf;II)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 157
    return-void
.end method

.method public onRenderSuccess(Lc8/nVf;II)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onViewCreated(Lc8/nVf;Landroid/view/View;)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v1, p0, Lc8/Bbg;->mComponent:Lc8/Dbg;

    invoke-virtual {v1}, Lc8/Dbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 145
    .local v0, "hostView":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 146
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    return-void
.end method
