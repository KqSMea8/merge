.class public Lc8/Id;
.super Lc8/ic;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nd;->show(Lc8/Sd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nd;

.field final synthetic val$listener:Lc8/Sd;


# direct methods
.method constructor <init>(Lc8/Nd;Lc8/Sd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nd;

    .prologue
    .line 186
    iput-object p1, p0, Lc8/Id;->this$0:Lc8/Nd;

    iput-object p2, p0, Lc8/Id;->val$listener:Lc8/Sd;

    invoke-direct {p0}, Lc8/ic;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 189
    iget-object v0, p0, Lc8/Id;->this$0:Lc8/Nd;

    const/4 v1, 0x0

    iput v1, v0, Lc8/Nd;->mAnimState:I

    .line 190
    iget-object v0, p0, Lc8/Id;->val$listener:Lc8/Sd;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lc8/Id;->val$listener:Lc8/Sd;

    invoke-interface {v0}, Lc8/Sd;->onShown()V

    .line 193
    :cond_0
    return-void
.end method
