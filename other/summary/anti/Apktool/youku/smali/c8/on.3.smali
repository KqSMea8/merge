.class public Lc8/on;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wn;-><init>(Landroid/app/Activity;Lc8/kx;Landroid/support/v4/widget/DrawerLayout;Lc8/Ap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wn;


# direct methods
.method constructor <init>(Lc8/wn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wn;

    .prologue
    .line 199
    iput-object p1, p0, Lc8/on;->this$0:Lc8/wn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lc8/on;->this$0:Lc8/wn;

    iget-boolean v0, v0, Lc8/wn;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lc8/on;->this$0:Lc8/wn;

    invoke-virtual {v0}, Lc8/wn;->toggle()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lc8/on;->this$0:Lc8/wn;

    iget-object v0, v0, Lc8/wn;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lc8/on;->this$0:Lc8/wn;

    iget-object v0, v0, Lc8/wn;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
