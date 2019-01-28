.class public Lc8/cp;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fp;


# direct methods
.method constructor <init>(Lc8/fp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fp;

    .prologue
    .line 164
    iput-object p1, p0, Lc8/cp;->this$0:Lc8/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v1, p0, Lc8/cp;->this$0:Lc8/fp;

    iget-object v1, v1, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v1}, Lc8/wr;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 168
    .local v0, "parent":Landroid/view/ViewParent;
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 169
    return-void
.end method
