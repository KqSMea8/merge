.class public Lc8/Hd;
.super Lc8/ic;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nd;->hide(Lc8/Sd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nd;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lc8/Sd;


# direct methods
.method constructor <init>(Lc8/Nd;ZLc8/Sd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nd;

    .prologue
    .line 159
    iput-object p1, p0, Lc8/Hd;->this$0:Lc8/Nd;

    iput-boolean p2, p0, Lc8/Hd;->val$fromUser:Z

    iput-object p3, p0, Lc8/Hd;->val$listener:Lc8/Sd;

    invoke-direct {p0}, Lc8/ic;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 162
    iget-object v0, p0, Lc8/Hd;->this$0:Lc8/Nd;

    const/4 v1, 0x0

    iput v1, v0, Lc8/Nd;->mAnimState:I

    .line 163
    iget-object v0, p0, Lc8/Hd;->this$0:Lc8/Nd;

    iget-object v1, v0, Lc8/Nd;->mView:Lc8/uf;

    iget-boolean v0, p0, Lc8/Hd;->val$fromUser:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Lc8/Hd;->val$fromUser:Z

    invoke-virtual {v1, v0, v2}, Lc8/uf;->internalSetVisibility(IZ)V

    .line 164
    iget-object v0, p0, Lc8/Hd;->val$listener:Lc8/Sd;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lc8/Hd;->val$listener:Lc8/Sd;

    invoke-interface {v0}, Lc8/Sd;->onHidden()V

    .line 167
    :cond_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
